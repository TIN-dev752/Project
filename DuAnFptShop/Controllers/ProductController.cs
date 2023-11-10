using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DuAnFptShop.Controllers
{
    public class ProductController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            return View();
        }
    }
}