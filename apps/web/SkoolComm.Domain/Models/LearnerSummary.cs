using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Models
{
    public  class LearnerSummary
    {
        public int LearnerId { get; set; }
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string Grade { get; set; } = "";
        public string Class { get; set; } = "";




    }
}
