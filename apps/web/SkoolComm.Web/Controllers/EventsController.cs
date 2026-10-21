using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SkoolComm.Domain.Interfaces;
using SkoolComm.Domain.Models;

namespace SkoolComm.Web.Controllers
{
    public class EventsController : Controller
    {
        private readonly IEventService _eventService;

        public EventsController(IEventService eventService)
        {
            _eventService = eventService;
        }

        [HttpGet]
        public async Task<IActionResult> Index(string? month)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            ViewBag.Month = month ?? "";

            try
            {
                return View(await _eventService.GetAllAsync());
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Could not load events: " + ex.Message;
                return View(new List<CalendarItem>());
            }
        }

        [HttpPost]
        public async Task<IActionResult> Save(
            string kind, int? id, string title, string? description,
            string date, string? endDate, string? time, string? location)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            var staffId = HttpContext.Session.GetInt32("StaffId");
            if (staffId == null)
            {
                TempData["Error"] = "Your staff ID could not be found. Please log in again.";
                return RedirectToAction("Index");
            }

            if (string.IsNullOrWhiteSpace(title) || !DateTime.TryParse(date, out var start))
            {
                TempData["Error"] = "Please enter a title and a date.";
                return RedirectToAction("Index");
            }

            bool isPlan = kind == "yearplan";
            var end = start;

            if (isPlan)
            {
                if (!DateTime.TryParse(endDate, out end) || end.Date < start.Date)
                {
                    TempData["Error"] = "The end date must be on or after the start date.";
                    return RedirectToAction("Index");
                }
            }
            else if (TimeSpan.TryParse(time, out var t))
            {
                start = start.Date + t;
                end = start;
            }

            var item = new CalendarItem
            {
                Kind = isPlan ? "yearplan" : "event",
                Id = id ?? 0,
                StaffId = staffId.Value,
                Title = title.Trim(),
                Description = (description ?? "").Trim(),
                StartDate = start,
                EndDate = end,
                Location = isPlan ? "" : (location ?? "").Trim()
            };

            try
            {
                if (item.Id > 0)
                {
                    await _eventService.UpdateAsync(item);
                    TempData["Success"] = "\"" + item.Title + "\" was updated.";
                }
                else
                {
                    await _eventService.CreateAsync(item);
                    TempData["Success"] = "\"" + item.Title + "\" was added to the year plan.";
                }
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not save: " + ex.Message;
            }

            return RedirectToAction("Index", new { month = start.ToString("yyyy-MM") });
        }

        [HttpPost]
        public async Task<IActionResult> Delete(string kind, int id)
        {
            if (HttpContext.Session.GetString("LoggedIn") != "true")
                return RedirectToAction("Login", "Account");

            try
            {
                await _eventService.DeleteAsync(kind, id);
                TempData["Success"] = "The item was deleted.";
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Could not delete: " + ex.Message;
            }

            return RedirectToAction("Index");
        }
    }
}
