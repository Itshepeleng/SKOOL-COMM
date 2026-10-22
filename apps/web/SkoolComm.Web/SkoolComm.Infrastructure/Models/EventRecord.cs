using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("event")]
    public class EventRecord : BaseModel
    {
        [PrimaryKey("eventid", false)]
        public int EventId { get; set; }

        [Column("staffid")]
        public int StaffId { get; set; }

        [Column("title")]
        public string Title { get; set; } = "";

        [Column("description")]
        public string Description { get; set; } = "";

        [Column("eventdate")]
        public DateTime EventDate { get; set; }

        [Column("location")]
        public string Location { get; set; } = "";
    }
}
