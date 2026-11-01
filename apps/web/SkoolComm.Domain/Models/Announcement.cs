using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Models
{
    public  class Announcement
    {
        public int AnnouncementId { get; set; }
        public int StaffId { get; set; }
        public string Title { get; set; } = "";
        public string Content { get; set; } = "";
        public DateTime DatePosted { get; set; }
        public string TargetAudience { get; set; } = "";


    }
}
