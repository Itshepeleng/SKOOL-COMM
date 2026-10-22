using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("year_plan")]
    public class YearPlanRecord : BaseModel
    {
        [PrimaryKey("yearplanid", false)]
        public int YearPlanId { get; set; }

        [Column("staffid")]
        public int StaffId { get; set; }

        [Column("title")]
        public string Title { get; set; } = "";

        [Column("description")]
        public string Description { get; set; } = "";

        [Column("startdate")]
        public DateTime StartDate { get; set; }

        [Column("enddate")]
        public DateTime EndDate { get; set; }
    }
}
