using SkoolComm.Domain.Models;

namespace SkoolComm.Domain.Interfaces
{
    public interface IParentService
    {
        Task<List<ParentProfile>> GetAllAsync();
    }
}