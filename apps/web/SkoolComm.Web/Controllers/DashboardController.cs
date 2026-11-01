using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class DashboardController : Controller
    {
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
        }

        public async Task<IActionResult> Teacher()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            await LoadCounts();

            try
            {
                ViewBag.Recent = (await _announcements.GetAllAsync()).Take(5).ToList();
            }
            catch
            {
                ViewBag.Recent = new List<Announcement>();
            }

            return View();
        }

        public async Task<IActionResult> Admin()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            if (HttpContext.Session.GetString("UserRole") != "administrator")
                return RedirectToAction("Teacher");

            await LoadCounts();

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

            return View();
        }

        private async Task LoadCounts()
        {
            try
            {
                var counts = await _stats.GetCountsAsync();
                ViewBag.LearnerCount = counts.Learners;
                ViewBag.ParentCount = counts.Parents;
            }
            catch
            {
                ViewBag.LearnerCount = null;
                ViewBag.ParentCount = null;
            }
        }
    }
}