using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class ProfileController : Controller
    {
        private readonly IStaffService _staffService;

        public ProfileController(IStaffService staffService)
        {
            _staffService = staffService;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            StaffProfile? profile = null;
            var staffId = HttpContext.Session.GetInt32("StaffId");

            if (staffId.HasValue)
            {
                try
                {
                    profile = await _staffService.GetByIdAsync(staffId.Value);
                }
                catch (Exception ex)
                {
                    ViewBag.Error = "Could not load your profile: " + ex.Message;
                }
            }

            return View(profile);
        }
    }
}

