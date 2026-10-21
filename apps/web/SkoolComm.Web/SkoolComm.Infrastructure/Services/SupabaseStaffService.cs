using System;
using System.Collections.Generic;
using System.Text;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public  class SupabaseStaffService : IStaffService
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

        private static StaffProfile Map(StaffRecord s) => new StaffProfile
        {
            StaffId = s.StaffId,
            FirstName = s.FirstName,
            LastName = s.LastName,
            Email = s.Email,
            Role = s.Role,
            Status = s.Status
        };

    }
}
