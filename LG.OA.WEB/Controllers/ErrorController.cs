using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LG.OA.WEB.Controllers
{
    public class ErrorController : Controller
    {
        // GET: Error
        public ActionResult Index(string msg)
        {
            msg = msg ?? "";
            ViewData["Msg"] = msg;
            //return View("Error");
            return View();
        }
    }
}