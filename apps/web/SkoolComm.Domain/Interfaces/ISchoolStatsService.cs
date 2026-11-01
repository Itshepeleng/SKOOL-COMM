
using System.Threading.Tasks;

namespace SkoolComm.Domain.Interfaces
{
    public interface ISchoolStatsService
    {
        Task<global::SkoolComm.Domain.Models.SchoolCounts> GetCountsAsync();
    }
}
