using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
<<<<<<< HEAD
=======
using SkoolComm.Domain.Models;
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)

namespace SkoolComm.Web.Controllers
{
    public class DashboardController : Controller
    {
<<<<<<< HEAD
        private readonly IAttendanceService _learnerSource;   // used only to read the learners
        private readonly IStaffService _staffService;

        public DashboardController(IAttendanceService attendanceService, IStaffService staffService)
        {
            _learnerSource = attendanceService;
            _staffService = staffService;
=======
        private readonly ISchoolStatsService _stats;
        private readonly IStaffService _staff;
        private readonly IAnnouncementService _announcements;
        private readonly IActivityService _activity;

        public DashboardController(
            ISchoolStatsService stats,
            IStaffService staff,
            IAnnouncementService announcements,
            IActivityService activity)
        {
            _stats = stats;
            _staff = staff;
            _announcements = announcements;
            _activity = activity;
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
        }

        public async Task<IActionResult> Teacher()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            await LoadCounts();
<<<<<<< HEAD
=======

            try
            {
                ViewBag.Recent = (await _announcements.GetAllAsync()).Take(5).ToList();
            }
            catch
            {
                ViewBag.Recent = new List<Announcement>();
            }

>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            return View();
        }

        public async Task<IActionResult> Admin()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

<<<<<<< HEAD
            // Teachers can't open the administrator dashboard
=======
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            if (HttpContext.Session.GetString("UserRole") != "administrator")
                return RedirectToAction("Teacher");

            await LoadCounts();
<<<<<<< HEAD
=======

            try
            {
                var staff = await _staff.GetAllAsync();
                ViewBag.TeacherCount = staff.Count(s =>
                    s.Role.Equals("teacher", StringComparison.OrdinalIgnoreCase) &&
                    s.Status.Equals("active", StringComparison.OrdinalIgnoreCase));
            }
            catch
            {
                ViewBag.TeacherCount = null;
            }

            try
            {
                ViewBag.Activity = await _activity.GetRecentAsync(6);
            }
            catch
            {
                ViewBag.Activity = new List<ActivityItem>();
            }

>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            return View();
        }

        private async Task LoadCounts()
        {
            try
            {
<<<<<<< HEAD
                var learners = await _learnerSource.GetLearnersAsync();
                ViewBag.LearnerCount = learners.Count;

                var staff = await _staffService.GetAllAsync();
                ViewBag.TeacherCount = staff.Count(s =>
                    s.Role.Equals("teacher", StringComparison.OrdinalIgnoreCase) &&
                    s.Status.Equals("active", StringComparison.OrdinalIgnoreCase));
=======
                var counts = await _stats.GetCountsAsync();
                ViewBag.LearnerCount = counts.Learners;
                ViewBag.ParentCount = counts.Parents;
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            }
            catch
            {
                ViewBag.LearnerCount = null;
<<<<<<< HEAD
                ViewBag.TeacherCount = null;
=======
                ViewBag.ParentCount = null;
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            }
        }
    }
}