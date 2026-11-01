using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseActivityService : IActivityService
    {
        private readonly Client _supabase;

        public SupabaseActivityService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<ActivityItem>> GetRecentAsync(int take)
        {
            var staff = await _supabase.From<StaffRecord>().Get();
            var staffNames = staff.Models
                .GroupBy(s => s.StaffId)
                .ToDictionary(g => g.Key, g => (g.First().FirstName + " " + g.First().LastName).Trim());

            string Who(int id) =>
                staffNames.TryGetValue(id, out var n) && n != "" ? n : "School staff";

            var items = new List<ActivityItem>();

            // Announcements
            var announcements = await _supabase.From<AnnouncementRecord>().Get();
            items.AddRange(announcements.Models.Select(a => new ActivityItem
            {
                Who = Who(a.StaffId),
                Action = "Published announcement: " + a.Title,
                When = a.DatePosted
            }));

            // Behaviour records
            var learners = await _supabase.From<LearnerRecord>().Get();
            var learnerNames = learners.Models
                .GroupBy(l => l.LearnerId)
                .ToDictionary(g => g.Key, g => g.First().LastName + ", " + g.First().FirstName);

            var points = await _supabase.From<BehaviouralPointRecord>().Get();
            items.AddRange(points.Models.Select(p => new ActivityItem
            {
                Who = Who(p.IssuedBy),
                Action = "Recorded " + p.OffenceCode + " · " + p.OffenceName + " for " +
                         (learnerNames.TryGetValue(p.LearnerId, out var ln) ? ln : "a learner"),
                When = p.DateRecorded
            }));

            // Attendance (one line per teacher per day)
            var attendance = await _supabase.From<AttendanceRecord>().Get();
            items.AddRange(attendance.Models
                .GroupBy(a => new { a.Date, a.RecordedBy })
                .Select(g => new ActivityItem
                {
                    Who = Who(g.Key.RecordedBy),
                    Action = "Recorded attendance for " + g.Count() + (g.Count() == 1 ? " learner" : " learners"),
                    When = g.Key.Date
                }));

            return items.OrderByDescending(i => i.When).Take(take).ToList();
        }
    }
}
