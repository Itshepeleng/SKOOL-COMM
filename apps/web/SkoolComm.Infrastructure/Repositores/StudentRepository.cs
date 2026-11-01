
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SkoolComm.Domain.Entities;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Repositores
{
    public class StudentRepository : IStudentRepository
    {
        private readonly Client _supabase;

        public StudentRepository(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<Student>> GetAllAsync()
        {
            var response = await _supabase
                .From<StudentModel>()
                .Get();

            return response.Models.Select(x => new Student
            {
                Id = x.LearnerId,
                Name = $"{x.FirstName} {x.LastName}",
                Grade = x.Grade
            }).ToList();
        }

        public async Task<Student?> GetByIdAsync(int id)
        {
            var response = await _supabase
                .From<StudentModel>()
                .Where(x => x.LearnerId == id)
                .Get();

            var model = response.Models.FirstOrDefault();

            if (model == null)
                return null;

            return new Student
            {
                Id = model.LearnerId,
                Name = $"{model.FirstName} {model.LastName}",
                Grade = model.Grade
            };
        }

        public async Task AddAsync(Student student)
        {
            var model = new StudentModel
            {
                LearnerId = student.Id,
                FirstName = student.Name,
                LastName = string.Empty,
                Grade = student.Grade
            };

            await _supabase
                .From<StudentModel>()
                .Insert(model);
        }

        public async Task UpdateAsync(Student student)
        {
            await _supabase
                .From<StudentModel>()
                .Where(x => x.LearnerId == student.Id)
                .Set(x => x.Grade, student.Grade)
                .Update();
        }

        public async Task DeleteAsync(int id)
        {
            await _supabase
                .From<StudentModel>()
                .Where(x => x.LearnerId == id)
                .Delete();
        }
    }
}
