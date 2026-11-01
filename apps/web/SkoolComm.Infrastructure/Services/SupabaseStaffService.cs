using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseStaffService : IStaffService
    {
        private readonly Client _supabase;

        public SupabaseStaffService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<StaffProfile?> GetByIdAsync(int staffId)
        {
            var response = await _supabase
                .From<StaffRecord>()
                .Where(s => s.StaffId == staffId)
                .Get();

            var record = response.Models.FirstOrDefault();
            return record == null ? null : Map(record);
        }

        public async Task<List<StaffProfile>> GetAllAsync()
        {
            var response = await _supabase.From<StaffRecord>().Get();

            return response.Models
                .OrderBy(s => s.LastName)
                .ThenBy(s => s.FirstName)
                .Select(Map)
                .ToList();
        }

        public async Task CreateAsync(StaffProfile staff)
        {
            await _supabase.From<StaffInsertRecord>().Insert(new StaffInsertRecord
            {
                Role = staff.Role.ToLowerInvariant(),
                FirstName = staff.FirstName,
                LastName = staff.LastName,
                Email = staff.Email,
                Status = "active"
            });
        }

        public async Task UpdateAsync(StaffProfile staff)
        {
            // Only these columns change, the login link is never touched
            await _supabase
                .From<StaffRecord>()
                .Where(s => s.StaffId == staff.StaffId)
                .Set(s => s.FirstName, staff.FirstName)
                .Set(s => s.LastName, staff.LastName)
                .Set(s => s.Email, staff.Email)
                .Set(s => s.Role, staff.Role.ToLowerInvariant())
                .Update();
        }

        public async Task SetStatusAsync(int staffId, string status)
        {
            await _supabase
                .From<StaffRecord>()
                .Where(s => s.StaffId == staffId)
                .Set(s => s.Status, status.ToLowerInvariant())
                .Update();
        }

        private static StaffProfile Map(StaffRecord s) => new StaffProfile
        {
            StaffId = s.StaffId,
            FirstName = s.FirstName ?? "",
            LastName = s.LastName ?? "",
            Email = s.Email ?? "",
            Role = s.Role ?? "",
            Status = s.Status ?? ""
        };
    }
}