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
            ViewBag.SelectedRole =
                string.Equals(role, "admin", StringComparison.OrdinalIgnoreCase)
                    ? "admin"
                    : "teacher";
            ViewBag.Email = email?.Trim() ?? "";

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
                    // Keep the email as the display name if the lookup fails.
                }
            }

            HttpContext.Session.SetString("LoggedIn", "true");
            HttpContext.Session.SetString("UserRole", actualRole);
            HttpContext.Session.SetString("UserName", displayName);
            HttpContext.Session.SetString("UserEmail", loginEmail);

            if (result.StaffId.HasValue)
            {
                HttpContext.Session.SetInt32("StaffId", result.StaffId.Value);
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

