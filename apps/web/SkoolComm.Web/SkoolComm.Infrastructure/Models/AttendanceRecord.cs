using Supabase.Postgrest.Attributes;
using Supabase.Postgrest.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Infrastructure.Models
{
    [Table("attendance")]
    public class AttendanceRecord:BaseModel
    {


        [PrimaryKey("attendanceid", false)]
        public int AttendanceId { get; set; }

        [Column("learnerid")]
        public int LearnerId { get; set; }

        [Column("recordedby")]
        public int RecordedBy { get; set; }

        [Column("date")]
        public DateTime Date { get; set; }

        [Column("status")]
        public string Status { get; set; } = "";
    }





}

