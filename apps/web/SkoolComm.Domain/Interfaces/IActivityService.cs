using SkoolComm.Domain.Models;

namespace SkoolComm.Domain.Interfaces
{
    public interface IActivityService
    {
        Task<List<ActivityItem>> GetRecentAsync(int take);
    }
}