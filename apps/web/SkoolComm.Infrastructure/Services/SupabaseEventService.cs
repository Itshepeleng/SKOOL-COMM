using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseEventService : IEventService
    {
        private readonly Client _supabase;

        public SupabaseEventService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<CalendarItem>> GetAllAsync()
        {
            var events = await _supabase.From<EventRecord>().Get();
            var plans = await _supabase.From<YearPlanRecord>().Get();

            var list = new List<CalendarItem>();

            list.AddRange(events.Models.Select(e => new CalendarItem
            {
                Kind = "event",
                Id = e.EventId,
                StaffId = e.StaffId,
                Title = e.Title,
                Description = e.Description,
                StartDate = e.EventDate,
                EndDate = e.EventDate,
                Location = e.Location
            }));

            list.AddRange(plans.Models.Select(p => new CalendarItem
            {
                Kind = "yearplan",
                Id = p.YearPlanId,
                StaffId = p.StaffId,
                Title = p.Title,
                Description = p.Description,
                StartDate = p.StartDate,
                EndDate = p.EndDate
            }));

            return list.OrderBy(i => i.StartDate).ToList();
        }

        public async Task CreateAsync(CalendarItem item)
        {
            if (item.Kind == "yearplan")
            {
                await _supabase.From<YearPlanRecord>().Insert(new YearPlanRecord
                {
                    StaffId = item.StaffId,
                    Title = item.Title,
                    Description = item.Description,
                    StartDate = item.StartDate.Date,
                    EndDate = item.EndDate.Date
                });
            }
            else
            {
                await _supabase.From<EventRecord>().Insert(new EventRecord
                {
                    StaffId = item.StaffId,
                    Title = item.Title,
                    Description = item.Description,
                    EventDate = item.StartDate,
                    Location = item.Location
                });
            }
        }

        public async Task UpdateAsync(CalendarItem item)
        {
            if (item.Kind == "yearplan")
            {
                var response = await _supabase.From<YearPlanRecord>()
                    .Where(p => p.YearPlanId == item.Id).Get();
                var record = response.Models.FirstOrDefault()
                    ?? throw new Exception("That year plan item no longer exists.");

                record.Title = item.Title;
                record.Description = item.Description;
                record.StartDate = item.StartDate.Date;
                record.EndDate = item.EndDate.Date;

                await _supabase.From<YearPlanRecord>().Update(record);
            }
            else
            {
                var response = await _supabase.From<EventRecord>()
                    .Where(e => e.EventId == item.Id).Get();
                var record = response.Models.FirstOrDefault()
                    ?? throw new Exception("That event no longer exists.");

                record.Title = item.Title;
                record.Description = item.Description;
                record.EventDate = item.StartDate;
                record.Location = item.Location;

                await _supabase.From<EventRecord>().Update(record);
            }
        }

        public async Task DeleteAsync(string kind, int id)
        {
            if (kind == "yearplan")
                await _supabase.From<YearPlanRecord>().Where(p => p.YearPlanId == id).Delete();
            else
                await _supabase.From<EventRecord>().Where(e => e.EventId == id).Delete();
        }
    }
}