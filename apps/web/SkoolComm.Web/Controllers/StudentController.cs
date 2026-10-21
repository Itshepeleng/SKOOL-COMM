using Microsoft.AspNetCore.Mvc;
using SkoolComm.Application.Interfaces;


namespace SkoolComm.Web.Controllers
{
    public class StudentController : Controller
    {
        private readonly IStudentService _studentService;

        public StudentController(IStudentService studentService)
        {
            _studentService = studentService;
        }
        public async Task<IActionResult> Index()
        {
            var students = await _studentService.GetAllAsync();
            return View(students);

    }   }
}
