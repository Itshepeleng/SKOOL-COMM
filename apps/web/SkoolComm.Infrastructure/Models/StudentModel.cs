
using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("learner")]
    public class StudentModel : BaseModel
    {
        [PrimaryKey("learnerid", false)]
        public int LearnerId { get; set; }

        [Column("firstname")]
        public string FirstName { get; set; } = string.Empty;

        [Column("lastname")]
        public string LastName { get; set; } = string.Empty;

        [Column("grade")]
        public string Grade { get; set; } = string.Empty;

        [Column("class")]
        public string Class { get; set; } = string.Empty;

        [Column("dob")]
        public DateTime Dob { get; set; }

        [Column("idnumber")]
        public string IdNumber { get; set; } = string.Empty;
    }
}

