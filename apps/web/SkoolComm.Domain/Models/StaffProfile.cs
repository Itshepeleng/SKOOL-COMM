using System;
using System.Collections.Generic;
using System.Text;

namespace SkoolComm.Domain.Models
{
    public class StaffProfile
    {
        public int StaffId { get; set; }
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string Email { get; set; } = "";
        public string Role { get; set; } = "";
        public string Status { get; set; } = "";

        public string FullName => (FirstName + " " + LastName).Trim();


    }
}
