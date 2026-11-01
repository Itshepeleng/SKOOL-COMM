using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;

namespace SkoolComm.Infrastructure.Models
{
    [Table("learner_code")]
    public class LearnerCodeRecord : BaseModel
    {
        [PrimaryKey("codeid", false)]
        public int CodeId { get; set; }

        [Column("learnerid")]
        public int LearnerId { get; set; }

        [Column("code")]
        public string Code { get; set; } = "";

        [Column("max_uses")]
        public int MaxUses { get; set; }

        [Column("uses")]
        public int Uses { get; set; }

        [Column("revoked")]
        public bool Revoked { get; set; }
    }
}

