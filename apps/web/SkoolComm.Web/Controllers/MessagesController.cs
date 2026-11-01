using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class MessagesController : Controller
    {
        private readonly IMessageService _messages;
        private readonly IAttendanceService _learnerSource;

        public MessagesController(IMessageService messages, IAttendanceService attendanceService)
        {
            _messages = messages;
            _learnerSource = attendanceService;
        }

        private IActionResult? Guard()
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");
            return null;
        }

        [HttpGet]
        public async Task<IActionResult> Index(string? cls)
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            var model = new MessagesPageModel();
            try
            {
                model.Items = await _messages.GetEngagementAsync();
                model.Classes = await _messages.GetClassesAsync();

                var learners = await _learnerSource.GetLearnersAsync();
                model.AllLearners = learners;
                model.SelectedClass = !string.IsNullOrWhiteSpace(cls) && model.Classes.Contains(cls)
                    ? cls
                    : model.Classes.FirstOrDefault() ?? "";
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load messages: " + ex.Message;
            }
            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> Send(string audience, string subject, string body)
        {
            var blocked = Guard();
            if (blocked != null) return blocked;

            if (string.IsNullOrWhiteSpace(subject) || string.IsNullOrWhiteSpace(body))
            {
                TempData["Error"] = "Please enter a subject and a message.";
                return RedirectToAction("Index");
            }

            try
            {
                var sender = HttpContext.Session.GetString("UserName") ?? "";
                var count = await _messages.SendAsync(
                    string.IsNullOrWhiteSpace(audience) ? "ALL" : audience,
                    subject.Trim(), body.Trim(), sender);
                TempData["Success"] = "Message sent to " + count + " parent(s).";
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not send the message: " + ex.Message;
            }

            return RedirectToAction("Index");
        }
    }
}