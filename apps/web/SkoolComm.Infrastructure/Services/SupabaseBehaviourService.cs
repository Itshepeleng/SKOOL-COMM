using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseBehaviourService : IBehaviourService
    {
        private readonly Client _supabase;

        public SupabaseBehaviourService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<BehaviourEntry>> GetAllAsync()
        {
            var response = await _supabase.From<BehaviouralPointRecord>().Get();

            // Teacher initials (best effort: if staff can't be read, initials stay empty)
            var initials = new Dictionary<int, string>();
            try
            {
                var staff = await _supabase.From<StaffRecord>().Get();
                foreach (var s in staff.Models)
                {
                    initials[s.StaffId] = First(s.FirstName) + First(s.LastName);
                }
            }
            catch
            {
                // the sheet still works without initials
            }

            return response.Models
                .OrderByDescending(r => r.DateRecorded)
                .Select(r => new BehaviourEntry
                {
                    PointId = r.PointId,
                    LearnerId = r.LearnerId,
                    IssuedBy = r.IssuedBy,
                    OffenceCode = r.OffenceCode,
                    Level = r.Level,
                    OffenceName = r.OffenceName,
                    Points = r.Points,
                    Reason = r.Reason,
                    DateRecorded = r.DateRecorded,
                    IssuedByInitials = initials.TryGetValue(r.IssuedBy, out var i) ? i : ""
                })
                .ToList();
        }

        public async Task CreateAsync(BehaviourEntry entry)
        {
            await _supabase.From<BehaviouralPointRecord>().Insert(new BehaviouralPointRecord
            {
                LearnerId = entry.LearnerId,
                IssuedBy = entry.IssuedBy,
                OffenceCode = entry.OffenceCode,
                Level = entry.Level,
                OffenceName = entry.OffenceName,
                Points = entry.Points,
                Reason = string.IsNullOrWhiteSpace(entry.Reason) ? null : entry.Reason.Trim(),
                DateRecorded = entry.DateRecorded
            });
        }

        private static string First(string? text) =>
            string.IsNullOrWhiteSpace(text) ? "" : text.Trim().Substring(0, 1).ToUpperInvariant();
    }
}