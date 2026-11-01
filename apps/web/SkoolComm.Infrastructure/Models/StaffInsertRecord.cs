using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("staff")]
    public class StaffInsertRecord : BaseModel
    {
        [PrimaryKey("staffid", false)]
        public int StaffId { get; set; }

        [Column("role")]
        public string Role { get; set; } = "";

        [Column("first_name")]
        public string FirstName { get; set; } = "";

        [Column("last_name")]
        public string LastName { get; set; } = "";

        [Column("email")]
        public string Email { get; set; } = "";

        [Column("status")]
        public string Status { get; set; } = "";
    }
}