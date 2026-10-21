using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Infrastructure.Models
{
    [Table("behavioural_points")]
    public class BehaviouralPointRecord : BaseModel
    {
        [PrimaryKey("pointid", false)]
        public int PointId { get; set; }

        [Column("learnerid")]
        public int LearnerId { get; set; }

        [Column("issuedby")]
        public int IssuedBy { get; set; }

        [Column("offencecode")]
        public string OffenceCode { get; set; } = "";

        [Column("level")]
        public int Level { get; set; }

        [Column("offencename")]
        public string OffenceName { get; set; } = "";

        [Column("points")]
        public int Points { get; set; }

        [Column("reason")]
        public string? Reason { get; set; }

        [Column("daterecorded")]
        public DateTime DateRecorded { get; set; }
    }



}
