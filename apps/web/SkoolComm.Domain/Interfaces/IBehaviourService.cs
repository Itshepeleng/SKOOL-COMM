using System;
using System.Collections.Generic;
using System.Text;

using SkoolComm.Domain.Models;

namespace SkoolComm.Domain.Interfaces
{
    public interface IBehaviourService
    {
        // Every record, newest first
        Task<List<BehaviourEntry>> GetAllAsync();

        // Saves one record
        Task CreateAsync(BehaviourEntry entry);
    }
}
