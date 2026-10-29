using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Web.Models;
using Supabase;

namespace SkoolComm.Web.Controllers
{
    public class DashboardController : Controller
    {
        private readonly IAttendanceService _learnerSource;   // used only to read the learners
        private readonly IStaffService _staffService;
        private readonly IAnnouncementService _announcementService;
        private readonly Client _supabaseClient;

        public DashboardController(
            IAttendanceService attendanceService,
            IStaffService staffService,
            IAnnouncementService announcementService,
            Client supabaseClient)
        {
            _learnerSource = attendanceService;
            _staffService = staffService;
            _announcementService = announcementService;
            _supabaseClient = supabaseClient;
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
            await LoadRecentActivity();
            return View();
        }

        private async Task LoadRecentActivity()
        {
            try
            {
                var announcements = await _announcementService.GetAllAsync();
                var staff = await _staffService.GetAllAsync();
                var staffNames = staff.ToDictionary(s => s.StaffId, s => s.FullName);

                ViewBag.RecentActivity = announcements
                    .Take(5)
                    .Select(announcement => new DashboardActivityViewModel
                    {
                        User = staffNames.TryGetValue(announcement.StaffId, out var name) && !string.IsNullOrWhiteSpace(name)
                            ? name
                            : "Staff member",
                        Action = $"Published announcement: {announcement.Title}",
                        DatePosted = announcement.DatePosted
                    })
                    .ToList();
            }
            catch
            {
                ViewBag.RecentActivity = new List<DashboardActivityViewModel>();
            }
        }

        private async Task LoadCounts()
        {
            try
            {
                var learners = await _learnerSource.GetLearnersAsync();
                ViewBag.LearnerCount = learners.Count;

                var staff = await _staffService.GetAllAsync();
                ViewBag.TeacherCount = staff.Count(s =>
                    s.Role.Equals("teacher", StringComparison.OrdinalIgnoreCase));
            }
            catch
            {
                ViewBag.LearnerCount = null;
                ViewBag.TeacherCount = null;
            }

            try
            {
                var parents = await _supabaseClient.From<ParentCountRecord>().Get();
                ViewBag.ParentCount = parents.Models.Count;
            }
            catch
            {
                ViewBag.ParentCount = null;
            }
        }
    }
}