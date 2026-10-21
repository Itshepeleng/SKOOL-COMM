using Microsoft.AspNetCore.Mvc;

namespace SkoolComm.Web.Controllers
{
    public class UsersController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
