using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace SkoolComm.Web.Pages
{
    public class AttendanceModel : PageModel
    {
        public class LearnerView
        {
            public int Id { get; set; }
            public string Name { get; set; } = string.Empty;
            public string Status { get; set; } = string.Empty; // "present" | "absent" | "late" | ""
        }

        private static readonly string[] DefaultNames = new[] {
            "Adams, Chloe", "Botha, Ethan", "Dlamini, Thabo", "du Plessis, Anri",
            "Fourie, Liam", "Jacobs, Sipho", "Khumalo, Naledi", "Louw, Mia",
            "Mahlangu, Bongani", "Naidoo, Priya", "Olivier, Zak", "Petersen, Amy"
        };

        [BindProperty]
        public List<LearnerView> Learners { get; set; } = new List<LearnerView>();

        [BindProperty]
        public string Grade { get; set; } = "Grade 5A";

        [BindProperty]
        public DateTime Date { get; set; } = DateTime.UtcNow.Date;

        [TempData]
        public string? StatusMessage { get; set; }

        public string? StatusMessageDirect => StatusMessage;

        public void OnGet()
        {
            InitializeLearners();
        }

        public void OnPost()
        {
            // Re-create learners and read posted status values
            InitializeLearners();

            foreach (var l in Learners)
            {
                var key = $"status_{l.Id}";
                if (Request.Form.ContainsKey(key))
                {
                    l.Status = Request.Form[key].ToString() ?? string.Empty;
                }
            }

            StatusMessage = $"Attendance saved for {Grade} on {Date:d}.";
        }

        public IActionResult OnPostMarkAll(string? mark)
        {
            InitializeLearners();
            var status = string.IsNullOrWhiteSpace(mark) ? string.Empty : mark;
            foreach (var l in Learners) l.Status = status;
            StatusMessage = string.IsNullOrEmpty(status) ? "Cleared attendance." : $"Marked all as {status}.";
            return Page();
        }

        private void InitializeLearners()
        {
            Learners = new List<LearnerView>();
            for (int i = 0; i < DefaultNames.Length; i++)
            {
                Learners.Add(new LearnerView { Id = i + 1, Name = DefaultNames[i], Status = string.Empty });
            }
        }
    }
}
