using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcApplication1.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";
            if (User.Identity.IsAuthenticated)
            {
                ViewData["user"] = string.Format("{0}/{1}",
                    User.Identity.Name, User.Identity.AuthenticationType);
            }
            ViewData["Timestamp"] = HttpContext.Timestamp;
            ViewData["testNumber"] = 6;
            ViewData["title"] = "Home Page Entry";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
