using SkoolComm.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SkoolComm.Domain.Interfaces
{
    public interface IMessageService
    {
        Task<List<MessageEngagementItem>> GetEngagementAsync();
        Task<List<string>> GetClassesAsync();
        Task<int> SendAsync(string audience, string subject, string body, string sender);
    }
}
