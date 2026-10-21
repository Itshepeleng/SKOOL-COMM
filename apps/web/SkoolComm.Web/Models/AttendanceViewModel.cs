using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Models
{
    public class AttendanceViewModel
    {
        public DateTime Date { get; set; } = DateTime.Today;
        public string SelectedClass { get; set; } = "";
        public List<string> Classes { get; set; } = new();
        public List<LearnerSummary> Learners { get; set; } = new();

        // learnerId -> status already saved for this date
        public Dictionary<int, string> Saved { get; set; } = new();
    }
}
