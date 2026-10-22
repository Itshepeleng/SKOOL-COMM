using SkoolComm.Domain.Entities;

namespace SkoolComm.Application.Interfaces
{
    public interface IStudentService
    {
        Task<List<Student>> GetAllAsync();
        Task<Student?> GetByIdAsync(int id);
        Task AddAsync(Student student);
        Task UpdateAsync(Student student);
        Task DeleteAsync(int id);
    }
}
