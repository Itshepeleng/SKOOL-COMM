using SkoolComm.Domain.Models;

namespace SkoolComm.Domain.Interfaces
{
    public interface IAttendanceService
    {
        // All learners (the page groups them by class)
        Task<List<LearnerSummary>> GetLearnersAsync();

        
        Task<List<AttendanceEntry>> GetByDateAsync(DateTime date);

     
        Task SaveAsync(DateTime date, int recordedBy, List<AttendanceEntry> entries);
    }
}
