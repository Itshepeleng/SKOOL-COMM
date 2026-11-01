using SkoolComm.Application.Interfaces;
using SkoolComm.Domain.Entities;
using SkoolComm.Domain.Interfaces;

namespace SkoolComm.Application.Services
{
    public class StudentService : IStudentService
    {
        private readonly IStudentRepository _studentRepository;

        public StudentService(IStudentRepository studentRepository)
        {
            _studentRepository = studentRepository;
        }

        public async Task<List<Student>> GetAllAsync()
        {
            return await _studentRepository.GetAllAsync();
        }

        public async Task<Student?> GetByIdAsync(int id)
        {
            return await _studentRepository.GetByIdAsync(id);
        }

        public async Task AddAsync(Student student)
        {
            await _studentRepository.AddAsync(student);
        }

        public async Task UpdateAsync(Student student)
        {
            await _studentRepository.UpdateAsync(student);
        }

        public async Task DeleteAsync(int id)
        {
            await _studentRepository.DeleteAsync(id);
        }
    }
}
