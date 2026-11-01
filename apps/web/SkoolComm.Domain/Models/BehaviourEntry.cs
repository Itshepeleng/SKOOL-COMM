using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Models
{
    public class BehaviourEntry
    {
        public int PointId { get; set; }
        public int LearnerId { get; set; }
        public int IssuedBy { get; set; }
        public string OffenceCode { get; set; } = "";
        public int Level { get; set; }
        public string OffenceName { get; set; } = "";
        public int Points { get; set; }
        public string? Reason { get; set; }
        public DateTime DateRecorded { get; set; }

        // Initials of the teacher who recorded it (filled in when reading)
        public string IssuedByInitials { get; set; } = "";
    }
}