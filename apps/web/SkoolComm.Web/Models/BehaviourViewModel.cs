using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Models
{
    public class BehaviourViewModel
    {
        public List<string> Classes { get; set; } = new();
        public string SelectedClass { get; set; } = "";
        public List<LearnerSummary> Learners { get; set; } = new();
        public List<BehaviourEntry> Entries { get; set; } = new();
        public int SelectedLearnerId { get; set; }
    }
}