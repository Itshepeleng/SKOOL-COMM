using SkoolComm.Domain.Models;

namespace SkoolComm.Domain.Interfaces
{
    public interface IEventService
    {
        Task<List<CalendarItem>> GetAllAsync();
        Task CreateAsync(CalendarItem item);
        Task UpdateAsync(CalendarItem item);
        Task DeleteAsync(string kind, int id);
    }
}
