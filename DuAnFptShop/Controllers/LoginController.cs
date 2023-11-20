using DuAnFptShop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DuAnFptShop.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(Customer cus)
        {
            cus.CusPhone = Request.Form["data1"];
            cus.CusPassword = Request.Form["data2"];
            var check = db.Customers.Where(s => s.CusPhone == cus.CusPhone && s.CusPassword == cus.CusPassword).FirstOrDefault();
            if (check == null)
            {
                ViewBag.ErrorInfo = "Sai thông tin";
                return RedirectToAction("HomePage", "Home");
            }
            else
            {
                db.Configuration.ValidateOnSaveEnabled = false;
                Session["CusPhone"] = cus.CusPhone;
                Session["CusPassword"] = cus.CusPassword;

                Session["CusName"] = cus.CusName;
                return RedirectToAction("HomePage", "Home");
            }
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(Customer cus)
        {
            if (ModelState.IsValid)
            {
                var check = db.Customers.Where(s => s.CusPhone == cus.CusPhone).FirstOrDefault();
                if (check == null)
                {
                    db.Configuration.ValidateOnSaveEnabled = false;
                    db.Customers.Add(cus);
                    db.SaveChanges();
                    return RedirectToAction("HomePage","Home");
                }
                else
                {
                    ViewBag.ErrorRegister = "This Phone is exist";
                    return View();
                }
            }
            return View();
        }
    }

}
