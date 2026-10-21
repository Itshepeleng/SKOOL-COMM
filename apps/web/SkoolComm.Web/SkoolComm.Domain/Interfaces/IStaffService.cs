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
    }
}
