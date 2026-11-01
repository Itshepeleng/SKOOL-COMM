using SkoolComm.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Interfaces
{
    public  interface IStaffService
    {
        Task<StaffProfile?> GetByIdAsync(int staffId);
        Task<List<StaffProfile>> GetAllAsync();
        Task CreateAsync(StaffProfile staff);
        Task UpdateAsync(StaffProfile staff);
        Task SetStatusAsync(int staffId, string status);
    }
}
