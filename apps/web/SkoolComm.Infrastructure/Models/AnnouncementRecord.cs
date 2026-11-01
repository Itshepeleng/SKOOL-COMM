using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("announcement")]
    public class AnnouncementRecord : BaseModel
    {
        // false = Supabase creates the ID, so we don't send it when saving
        [PrimaryKey("announcementid", false)]
        public int AnnouncementId { get; set; }

        [Column("staffid")]
        public int StaffId { get; set; }

        [Column("title")]
        public string Title { get; set; } = "";

        [Column("content")]
        public string Content { get; set; } = "";

        [Column("dateposted")]
        public DateTime DatePosted { get; set; }

        [Column("targetaudience")]
        public string TargetAudience { get; set; } = "";
    }
}
