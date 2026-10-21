using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Web.Models;

namespace SkoolComm.Web.Controllers
{
    public class BehaviouralController : Controller
    {
        private readonly IBehaviourService _behaviourService;
        private readonly IAttendanceService _learnerSource;   // used only to read the learners

        public BehaviouralController(
            IBehaviourService behaviourService,
            IAttendanceService attendanceService)
        {
            _behaviourService = behaviourService;
            _learnerSource = attendanceService;
        }

        [HttpGet]
        public async Task<IActionResult> Index(string? cls, int? learner)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            var model = new BehaviourViewModel();

            try
            {
                model.Learners = await _learnerSource.GetLearnersAsync();
                model.Entries = await _behaviourService.GetAllAsync();

                model.Classes = model.Learners
                    .Select(l => l.Class).Distinct().OrderBy(c => c).ToList();

                model.SelectedClass = !string.IsNullOrWhiteSpace(cls) && model.Classes.Contains(cls)
                    ? cls
                    : model.Classes.FirstOrDefault() ?? "";

                if (learner.HasValue && model.Learners.Any(l =>
                        l.LearnerId == learner.Value && l.Class == model.SelectedClass))
                {
                    model.SelectedLearnerId = learner.Value;
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load behavioural points: " + ex.Message;
            }

            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> Save(
            int learnerId, string offenceCode, string? notes, string date, string cls)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            var staffId = HttpContext.Session.GetInt32("StaffId");
            if (staffId == null)
            {
                TempData["Error"] = "Your staff ID could not be found. Please log in again.";
                return RedirectToAction("Index", new { cls });
            }

            // Points and level come from the school's offence list, never from the browser
            var offence = OffenceCatalog.Find(offenceCode ?? "");
            if (offence == null || learnerId <= 0)
            {
                TempData["Error"] = "Please choose a learner and an offence.";
                return RedirectToAction("Index", new { cls });
            }

            if (!DateTime.TryParse(date, out var day)) day = DateTime.Today;

            try
            {
                await _behaviourService.CreateAsync(new BehaviourEntry
                {
                    LearnerId = learnerId,
                    IssuedBy = staffId.Value,
                    OffenceCode = offence.Code,
                    Level = offence.Level,
                    OffenceName = offence.Description,
                    Points = offence.Points,
                    Reason = notes,
                    DateRecorded = day.Date + DateTime.Now.TimeOfDay
                });

                TempData["Success"] = "Recorded " + offence.Code + " · " + offence.Description +
                                      " (−" + offence.Points + " pts).";
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not save the record: " + ex.Message;
            }

            return RedirectToAction("Index", new { cls, learner = learnerId });
        }
    }
}