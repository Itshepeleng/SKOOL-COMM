using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class CodesController : Controller
    {
        private readonly ILearnerCodeService _codes;

        public CodesController(ILearnerCodeService codes)
        {
            _codes = codes;
        }

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

            try { return View(await _codes.GetAllAsync()); }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load codes: " + ex.Message;
                return View(new List<LearnerCodeItem>());
            }
        }

        [HttpPost]
        public async Task<IActionResult> Generate(int learnerId, bool replace)
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            try
            {
                await _codes.GenerateAsync(learnerId, replace);
                TempData["Success"] = replace ? "The code was replaced. The old code no longer works."
                                              : "The code was created.";
            }
            catch (Exception ex) { TempData["Error"] = "Could not create the code: " + ex.Message; }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> GenerateMissing()
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            try
            {
                var before = (await _codes.GetAllAsync()).Count(l => l.Code == null);
                await _codes.GenerateMissingAsync();
                TempData["Success"] = "Codes were created for " + before + " learner(s).";
            }
            catch (Exception ex) { TempData["Error"] = "Could not create the codes: " + ex.Message; }

            return RedirectToAction("Index");
        }
    }
}
