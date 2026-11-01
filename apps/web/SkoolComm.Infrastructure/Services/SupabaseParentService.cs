using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseParentService : IParentService
    {
        private readonly Client _supabase;

        public SupabaseParentService(Client supabase)
        {
            _supabase = supabase;
        }

        public async Task<List<ParentProfile>> GetAllAsync()
        {
            var response = await _supabase
                .From<ParentRecord>()
                .Get();

            return response.Models
                .OrderBy(p => p.LastName)
                .ThenBy(p => p.FirstName)
                .Select(p => new ParentProfile
                {
                    ParentId = p.ParentId,
                    FirstName = p.FirstName,
                    LastName = p.LastName,
                    Email = p.Email,
                    Phone = p.Phone,
                    Status = p.Status,
                    CreatedAt = p.CreatedAt
                })
                .ToList();
        }
    }
}