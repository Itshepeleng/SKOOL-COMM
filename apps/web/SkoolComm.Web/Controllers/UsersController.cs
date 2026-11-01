
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class UsersController : Controller
    {
        private readonly IStaffService _staffService;
        private readonly IParentService _parentService;

        public UsersController(
            IStaffService staffService,
            IParentService parentService)
        {
            _staffService = staffService;
            _parentService = parentService;
        }

        // null = allowed, otherwise the page to send the person to
        private IActionResult? Guard()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            if (HttpContext.Session.GetString("UserRole") != "administrator")
                return RedirectToAction("Teacher", "Dashboard");

            return null;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            ViewBag.CurrentStaffId =
                HttpContext.Session.GetInt32("StaffId") ?? 0;

            // Load parent records
            try
            {
                ViewBag.Parents = await _parentService.GetAllAsync();
            }
            catch (Exception ex)
            {
                ViewBag.Parents = new List<ParentProfile>();
                ViewBag.ParentError =
                    "Could not load parents: " + ex.Message;
            }

            // Load staff records
            try
            {
                return View(await _staffService.GetAllAsync());
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load staff: " + ex.Message;

                return View(new List<StaffProfile>());
            }
        }

        [HttpPost]
        public async Task<IActionResult> SaveStaff(
            int? id,
            string firstName,
            string lastName,
            string email,
            string role)
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            firstName = (firstName ?? "").Trim();
            lastName = (lastName ?? "").Trim();
            email = (email ?? "").Trim();
            role = (role ?? "").Trim().ToLowerInvariant();

            if (firstName == "" || lastName == "" || !email.Contains('@'))
            {
                TempData["Error"] =
                    "Please enter a first name, last name and a valid email.";

                return RedirectToAction("Index");
            }

            if (role != "teacher" && role != "administrator")
            {
                TempData["Error"] =
                    "Please choose Teacher or Administrator.";

                return RedirectToAction("Index");
            }

            int me = HttpContext.Session.GetInt32("StaffId") ?? 0;
            bool editing = id.HasValue && id.Value > 0;

            // An administrator can't take their own admin rights away by accident
            if (editing && id!.Value == me && role != "administrator")
            {
                TempData["Error"] = "You can't change your own role.";

                return RedirectToAction("Index");
            }

            try
            {
                var all = await _staffService.GetAllAsync();
                int ownId = editing ? id!.Value : 0;

                if (all.Any(s =>
                    s.StaffId != ownId &&
                    s.Email.Equals(
                        email,
                        StringComparison.OrdinalIgnoreCase)))
                {
                    TempData["Error"] =
                        "A staff member with that email already exists.";

                    return RedirectToAction("Index");
                }

                var staff = new StaffProfile
                {
                    StaffId = ownId,
                    FirstName = firstName,
                    LastName = lastName,
                    Email = email,
                    Role = role
                };

                if (editing)
                {
                    await _staffService.UpdateAsync(staff);

                    TempData["Success"] =
                        lastName + ", " + firstName + " was updated.";
                }
                else
                {
                    await _staffService.CreateAsync(staff);

                    TempData["Success"] =
                        lastName + ", " + firstName + " was added. " +
                        "Now create their login in Supabase (Authentication, Add user) " +
                        "with the same email, and it will link automatically.";
                }
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not save: " + ex.Message;
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> SetStaffStatus(
            int id,
            bool active)
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            int me = HttpContext.Session.GetInt32("StaffId") ?? 0;

            if (id == me && !active)
            {
                TempData["Error"] =
                    "You can't deactivate your own account.";

                return RedirectToAction("Index");
            }

            try
            {
                await _staffService.SetStatusAsync(
                    id,
                    active ? "active" : "inactive");

                TempData["Success"] = active
                    ? "The account was reactivated."
                    : "The account was deactivated. They can no longer log in.";
            }
            catch (Exception ex)
            {
                TempData["Error"] =
                    "Could not update the account: " + ex.Message;
            }

            return RedirectToAction("Index");
        }
    }
}
