using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Infrastructure.Models;
using Supabase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SkoolComm.Infrastructure.Services
{
    public class SupabaseAnnouncementService : IAnnouncementService
    {
        private readonly Client _supabase;

        public SupabaseAnnouncementService(Client supabase)
        {
            _supabase = supabase;
        }

        // Reads every announcement, newest first
        public async Task<List<Announcement>> GetAllAsync()
        {
            var response = await _supabase
                .From<AnnouncementRecord>()
                .Get();

            return response.Models
                .OrderByDescending(r => r.DatePosted)
                .Select(r => new Announcement
                {
                    AnnouncementId = r.AnnouncementId,
                    StaffId = r.StaffId,
                    Title = r.Title,
                    Content = r.Content,
                    DatePosted = r.DatePosted,
                    TargetAudience = r.TargetAudience
                })
                .ToList();
        }

        // Saves a new announcement
        public async Task CreateAsync(Announcement announcement)
        {
            var record = new AnnouncementRecord
            {
                StaffId = announcement.StaffId,
                Title = announcement.Title,
                Content = announcement.Content,
                DatePosted = announcement.DatePosted,
                TargetAudience = announcement.TargetAudience
            };

            await _supabase.From<AnnouncementRecord>().Insert(record);
        }
    }
}
