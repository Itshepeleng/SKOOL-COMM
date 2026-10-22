using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseAttendanceService : IAttendanceService
    {
        private readonly Client _supabase;

        public SupabaseAttendanceService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<LearnerSummary>> GetLearnersAsync()
        {
            var response = await _supabase
                .From<LearnerRecord>()
                .Get();

            return response.Models
                .OrderBy(l => l.Grade)
                .ThenBy(l => l.Class)
                .ThenBy(l => l.LastName)
                .Select(l => new LearnerSummary
                {
                    LearnerId = l.LearnerId,
                    FirstName = l.FirstName,
                    LastName = l.LastName,
                    Grade = l.Grade,
                    Class = l.Class
                })
                .ToList();
        }

        public async Task<List<AttendanceEntry>> GetByDateAsync(DateTime date)
        {
            var response = await _supabase
                .From<AttendanceRecord>()
                .Filter("date",
                        Supabase.Postgrest.Constants.Operator.Equals,
                        date.ToString("yyyy-MM-dd"))
                .Get();

            return response.Models
                .Select(a => new AttendanceEntry
                {
                    LearnerId = a.LearnerId,
                    Status = a.Status
                })
                .ToList();
        }
        public async Task SaveAsync(DateTime date, int recordedBy, List<AttendanceEntry> entries)
        {
            if (entries.Count == 0) return;

            var day = date.Date;

            // 1. What is already saved for this date?
            var existingResponse = await _supabase
                .From<AttendanceRecord>()
                .Filter("date",
                        Supabase.Postgrest.Constants.Operator.Equals,
                        day.ToString("yyyy-MM-dd"))
                .Get();

            var existing = existingResponse.Models
                .GroupBy(r => r.LearnerId)
                .ToDictionary(g => g.Key, g => g.First());

            var toInsert = new List<AttendanceRecord>();

            foreach (var entry in entries)
            {
                var status = entry.Status.ToLowerInvariant();

                if (existing.TryGetValue(entry.LearnerId, out var record))
                {
                    // 2. Already saved for this day: update the existing row
                    record.Status = status;
                    record.RecordedBy = recordedBy;

                    await _supabase
                        .From<AttendanceRecord>()
                        .Update(record);
                }
                else
                {
                    // 3. Not saved yet: insert a new row (no ID sent)
                    toInsert.Add(new AttendanceRecord
                    {
                        LearnerId = entry.LearnerId,
                        RecordedBy = recordedBy,
                        Date = day,
                        Status = status
                    });
                }
            }

            if (toInsert.Count > 0)
            {
                await _supabase
                    .From<AttendanceRecord>()
                    .Insert(toInsert);
            }
        }


    }
}
