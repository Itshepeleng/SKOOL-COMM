using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("learner")]
    public class LearnerRecord : BaseModel
    {
        [PrimaryKey("learnerid", false)]
        public int LearnerId { get; set; }

        [Column("firstname")]
        public string FirstName { get; set; } = "";

        [Column("lastname")]
        public string LastName { get; set; } = "";

        [Column("grade")]
        public string Grade { get; set; } = "";

        [Column("class")]
        public string Class { get; set; } = "";
    }
}