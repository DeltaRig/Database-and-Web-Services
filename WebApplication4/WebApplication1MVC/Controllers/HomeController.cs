using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using WebApplication1MVC.Models;

namespace WebApplication1MVC.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult Info(string t)
        {
            ViewData["Message"] = "You have requested info for " + t;
            return View();
        }

        // add in the training
        public ContentResult StudentAsString()
        {
            return Content("The name of the student is Walter Smith and he is in Grade 7.");
        }

        public ViewResult StudentView()
        {
            ViewData["Message"] = "The name of the student is <b>Walter Smith</b> and he is in Grade 7.";
            return View();
        }

        public FileResult StudentFileResult()
        {
            byte[] fileBytes = System.IO.File.ReadAllBytes(@"./wwwroot/StudentData.txt");
            string fileName = "StudentData.txt";
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, fileName);
        }

        public ViewResult StudentList()
        {
            return View();
        }
    }
}
