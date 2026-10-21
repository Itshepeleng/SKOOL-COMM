using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;

namespace SkoolComm.Web.Controllers
{
    public class DashboardController : Controller
    {
        private readonly IAttendanceService _learnerSource;   // used only to read the learners
        private readonly IStaffService _staffService;

        public DashboardController(IAttendanceService attendanceService, IStaffService staffService)
        {
            _learnerSource = attendanceService;
            _staffService = staffService;
        }

        public async Task<IActionResult> Teacher()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            await LoadCounts();
            return View();
        }

        public async Task<IActionResult> Admin()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            // Teachers can't open the administrator dashboard
            if (HttpContext.Session.GetString("UserRole") != "administrator")
                return RedirectToAction("Teacher");

            await LoadCounts();
            return View();
        }

        private async Task LoadCounts()
        {
            try
            {
                var learners = await _learnerSource.GetLearnersAsync();
                ViewBag.LearnerCount = learners.Count;

                var staff = await _staffService.GetAllAsync();
                ViewBag.TeacherCount = staff.Count(s =>
                    s.Role.Equals("teacher", StringComparison.OrdinalIgnoreCase) &&
                    s.Status.Equals("active", StringComparison.OrdinalIgnoreCase));
            }
            catch
            {
                ViewBag.LearnerCount = null;
                ViewBag.TeacherCount = null;
            }
        }
    }
}