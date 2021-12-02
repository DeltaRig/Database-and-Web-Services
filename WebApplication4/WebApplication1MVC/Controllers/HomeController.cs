using System;
using System.Collections.Generic;
using System.Diagnostics;
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

        // add in the training Action Result
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
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, fileName); // this will send a file
        }

        public ContentResult StudentJSONResult()
        {
            string data = System.IO.File.ReadAllText(@"./wwwroot/StudentData.json");
            return Content(data, "application/json");
        }

        public ViewResult StudentList()
        {
            return View();
        }

        //add in training State Management Techniques in ASP.Net
        [HttpPost]
        public IActionResult ViewDataSubmit(string name, string address, string course, string year)
        {
            ViewData["name"] = name;
            ViewData["address"] = address;
            ViewData["course"] = course;
            ViewData["year"] = year;
            return View();
        }

        [HttpPost]
        public IActionResult ViewBagSubmit(string name, string address, string course, string year)
        {
            ViewBag.name = name;
            ViewBag.address = address;
            ViewBag.course = course;
            ViewBag.year = year;

            return View();
        }

        [HttpPost]
        public IActionResult TempDataRedirect(string name, string address, string course, string year)
        {
            TempData["name"] = name;
            TempData["address"] = address;
            TempData["course"] = course;
            TempData["year"] = year;
            return RedirectToAction("TempDataSubmit");
        }

        [HttpPost]
        public IActionResult TempDataSubmit()
        {
            return View();
        }
    }
}
