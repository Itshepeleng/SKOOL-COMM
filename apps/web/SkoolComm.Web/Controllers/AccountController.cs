using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using SkoolComm.Domain.Interfaces;

namespace SkoolComm.Web.Controllers
{
    public class AccountController : Controller
    {
        private readonly IAuthService _authService;
        private readonly IStaffService _staffService;

        public AccountController(IAuthService authService, IStaffService staffService)
        {
            _authService = authService;
            _staffService = staffService;
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(
            string email,
            string password,
            string role)
        {
<<<<<<< HEAD
=======
            ViewBag.SelectedRole =
                string.Equals(role, "admin", StringComparison.OrdinalIgnoreCase)
                    ? "admin"
                    : "teacher";
            ViewBag.Email = email?.Trim() ?? "";

>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            if (string.IsNullOrWhiteSpace(email) ||
                string.IsNullOrWhiteSpace(password))
            {
                ViewBag.Error = "Please enter your email and password.";
                return View();
            }

            var result = await _authService.LoginAsync(
                email.Trim(),
                password);

            if (!result.Success)
            {
                ViewBag.Error = result.Message;
                return View();
            }

            if (string.IsNullOrWhiteSpace(result.Role) ||
                string.IsNullOrWhiteSpace(role))
            {
                ViewBag.Error =
                    "Your staff role could not be verified. Please try again.";
                return View();
            }

            string selectedRole = role.Trim().ToLowerInvariant();
            string actualRole = result.Role.Trim().ToLowerInvariant();

            bool roleMatches =
                (selectedRole == "admin" &&
                 actualRole == "administrator") ||
                (selectedRole == "teacher" &&
                 actualRole == "teacher");

            if (!roleMatches)
            {
                ViewBag.Error =
                    "The selected role does not match your staff account.";
                return View();
            }

<<<<<<< HEAD
            // Use the staff member's real name when we can find it
=======
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            string loginEmail = result.Email ?? email.Trim();
            string displayName = loginEmail;

            if (result.StaffId.HasValue)
            {
                try
                {
                    var profile = await _staffService.GetByIdAsync(result.StaffId.Value);
                    if (profile != null && !string.IsNullOrWhiteSpace(profile.FullName))
                    {
                        displayName = profile.FullName;
                    }
                }
                catch
                {
<<<<<<< HEAD
                    // keep the email as the display name if the lookup fails
=======
                    // Keep the email as the display name if the lookup fails.
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
                }
            }

            HttpContext.Session.SetString("LoggedIn", "true");
            HttpContext.Session.SetString("UserRole", actualRole);
            HttpContext.Session.SetString("UserName", displayName);
            HttpContext.Session.SetString("UserEmail", loginEmail);

            if (result.StaffId.HasValue)
            {
<<<<<<< HEAD
                HttpContext.Session.SetInt32(
                    "StaffId",
                    result.StaffId.Value);
=======
                HttpContext.Session.SetInt32("StaffId", result.StaffId.Value);
>>>>>>> 2c9515b (Initial upload of SkoolComm.Web)
            }

            return actualRole == "administrator"
                ? Redirect("/Dashboard/Admin")
                : Redirect("/Dashboard/Teacher");
        }

        [HttpPost]
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Login", "Account");
        }
    }
}

