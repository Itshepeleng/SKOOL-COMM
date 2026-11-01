using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("parent")]
    public class ParentRecord : BaseModel
    {
        [PrimaryKey("parentid", false)]
        public int ParentId { get; set; }

        [Column("authuserid")]
        public string AuthUserId { get; set; } = "";

        [Column("first_name")]
        public string FirstName { get; set; } = "";

        [Column("last_name")]
        public string LastName { get; set; } = "";

        [Column("email")]
        public string Email { get; set; } = "";

        [Column("phone")]
        public string? Phone { get; set; }

        [Column("status")]
        public string Status { get; set; } = "";

        [Column("created_at")]
        public DateTime CreatedAt { get; set; }
    }
}
