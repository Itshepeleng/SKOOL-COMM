using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class AnnouncementsController : Controller
    {
        private readonly IAnnouncementService _announcementService;

        public AnnouncementsController(IAnnouncementService announcementService)
        {
            _announcementService = announcementService;
        }

        // Shows the page with the announcements from Supabase
        [HttpGet]
        public async Task<IActionResult> Index()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
            {
                return RedirectToAction("Login", "Account");
            }

            try
            {
                var announcements = await _announcementService.GetAllAsync();
                return View(announcements);
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load announcements: " + ex.Message;
                return View(new List<Announcement>());
            }
        }

        // Runs when the Send button is clicked
        [HttpPost]
        public async Task<IActionResult> Create(
            string title,
            string targetAudience,
            string content)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
            {
                return RedirectToAction("Login", "Account");
            }

            if (string.IsNullOrWhiteSpace(title) ||
                string.IsNullOrWhiteSpace(content) ||
                string.IsNullOrWhiteSpace(targetAudience))
            {
                TempData["Error"] = "Please fill in the title, audience and message.";
                return RedirectToAction("Index");
            }

            // The staff member who is logged in (saved at login)
            var staffId = HttpContext.Session.GetInt32("StaffId");

            if (staffId == null)
            {
                TempData["Error"] = "Your staff ID could not be found. Please log in again.";
                return RedirectToAction("Index");
            }

            try
            {
                await _announcementService.CreateAsync(new Announcement
                {
                    StaffId = staffId.Value,
                    Title = title.Trim(),
                    Content = content.Trim(),
                    TargetAudience = targetAudience.Trim(),
                    DatePosted = DateTime.Now
                });

                TempData["Success"] = "\"" + title.Trim() + "\" was published to " + targetAudience.Trim() + ".";
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not save the announcement: " + ex.Message;
            }

            return RedirectToAction("Index");
        }
    }
}