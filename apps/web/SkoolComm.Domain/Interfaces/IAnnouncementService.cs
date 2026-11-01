
using SkoolComm.Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SkoolComm.Domain.Interfaces
{
    public interface IAnnouncementService
    {
        // Returns all announcements, newest first
        Task<List<Announcement>> GetAllAsync();

        // Saves a new announcement
        Task CreateAsync(Announcement announcement);
    }
}
