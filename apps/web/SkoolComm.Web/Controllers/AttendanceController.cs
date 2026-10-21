using System.Text.Json;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;
using SkoolComm.Web.Models;

namespace SkoolComm.Web.Controllers
{
    public class AttendanceController : Controller
    {
        private readonly IAttendanceService _attendanceService;

        public AttendanceController(IAttendanceService attendanceService)
        {
            _attendanceService = attendanceService;
        }

        // Shows the page: real learners plus any marks already saved for the date
        [HttpGet]
        public async Task<IActionResult> Index(string? date, string? cls)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            var day = DateTime.Today;
            if (!string.IsNullOrWhiteSpace(date) && DateTime.TryParse(date, out var parsed))
                day = parsed.Date;

            var model = new AttendanceViewModel { Date = day };

            try
            {
                model.Learners = await _attendanceService.GetLearnersAsync();

                var saved = await _attendanceService.GetByDateAsync(day);
                model.Saved = saved.ToDictionary(s => s.LearnerId, s => s.Status);

                model.Classes = model.Learners
                    .Select(l => l.Class)
                    .Distinct()
                    .OrderBy(c => c)
                    .ToList();

                model.SelectedClass = !string.IsNullOrWhiteSpace(cls) && model.Classes.Contains(cls)
                    ? cls
                    : model.Classes.FirstOrDefault() ?? "";
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load attendance: " + ex.Message;
            }

            return View(model);
        }

        // Runs when the teacher confirms Save Attendance
        [HttpPost]
        public async Task<IActionResult> Save(string date, string cls, string entriesJson)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            if (!DateTime.TryParse(date, out var day))
            {
                TempData["Error"] = "Please select a valid date.";
                return RedirectToAction("Index");
            }

            // The staff member who is logged in (saved at login)
            var staffId = HttpContext.Session.GetInt32("StaffId");
            if (staffId == null)
            {
                TempData["Error"] = "Your staff ID could not be found. Please log in again.";
                return RedirectToAction("Index", new { date = day.ToString("yyyy-MM-dd"), cls });
            }

            List<AttendanceEntry> entries;
            try
            {
                entries = JsonSerializer.Deserialize<List<AttendanceEntry>>(
                    string.IsNullOrWhiteSpace(entriesJson) ? "[]" : entriesJson,
                    new JsonSerializerOptions { PropertyNameCaseInsensitive = true })
                    ?? new List<AttendanceEntry>();
            }
            catch
            {
                TempData["Error"] = "The attendance data could not be read.";
                return RedirectToAction("Index", new { date = day.ToString("yyyy-MM-dd"), cls });
            }

            // Only the three agreed words are accepted
            var allowed = new[] { "present", "absent", "late" };
            entries = entries
                .Where(e => allowed.Contains((e.Status ?? "").ToLowerInvariant()))
                .ToList();

            if (entries.Count == 0)
            {
                TempData["Error"] = "Mark at least one learner before saving.";
                return RedirectToAction("Index", new { date = day.ToString("yyyy-MM-dd"), cls });
            }

            try
            {
                await _attendanceService.SaveAsync(day, staffId.Value, entries);
                TempData["Success"] = "Attendance saved for " + entries.Count +
                    (entries.Count == 1 ? " learner" : " learners") +
                    " on " + day.ToString("d MMMM yyyy") + ".";
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not save attendance: " + ex.Message;
            }

            return RedirectToAction("Index", new { date = day.ToString("yyyy-MM-dd"), cls });
        }
    }
}
