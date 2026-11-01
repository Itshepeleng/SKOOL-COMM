
using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("staff")]
    public class StaffRecord : BaseModel
    {
        [PrimaryKey("staffid", false)]
        public int StaffId { get; set; }

        [Column("authuserid")]
        public string AuthUserId { get; set; } = string.Empty;

        [Column("role")]
        public string Role { get; set; } = string.Empty;

        [Column("first_name")]
        public string FirstName { get; set; } = string.Empty;

        [Column("last_name")]
        public string LastName { get; set; } = string.Empty;

        [Column("email")]
        public string Email { get; set; } = string.Empty;

        [Column("status")]
        public string Status { get; set; } = string.Empty;
    }
}

