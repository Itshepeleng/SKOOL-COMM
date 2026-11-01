namespace SkoolComm.Domain.Models
{
    
    public class CalendarItem
    {
        public string Kind { get; set; } = "event";   
        public int Id { get; set; }
        public int StaffId { get; set; }
        public string Title { get; set; } = "";
        public string Description { get; set; } = "";
        public DateTime StartDate { get; set; }       // for events: the date and time
        public DateTime EndDate { get; set; }         // for events: same day as StartDate
        public string Location { get; set; } = "";    // events only
    }
}
