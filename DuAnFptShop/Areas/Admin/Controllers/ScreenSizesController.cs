using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DuAnFptShop.Models;

namespace DuAnFptShop.Areas.Admin.Controllers
{
    public class ScreenSizesController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/ScreenSizes
        public ActionResult Index()
        {
            return View(db.ScreenSizes.ToList());
        }

        // GET: Admin/ScreenSizes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScreenSize screenSize = db.ScreenSizes.Find(id);
            if (screenSize == null)
            {
                return HttpNotFound();
            }
            return View(screenSize);
        }

        // GET: Admin/ScreenSizes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ScreenSizes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ScreenSizeID,Size")] ScreenSize screenSize)
        {
            if (ModelState.IsValid)
            {
                db.ScreenSizes.Add(screenSize);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(screenSize);
        }

        // GET: Admin/ScreenSizes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScreenSize screenSize = db.ScreenSizes.Find(id);
            if (screenSize == null)
            {
                return HttpNotFound();
            }
            return View(screenSize);
        }

        // POST: Admin/ScreenSizes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ScreenSizeID,Size")] ScreenSize screenSize)
        {
            if (ModelState.IsValid)
            {
                db.Entry(screenSize).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(screenSize);
        }

        // GET: Admin/ScreenSizes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ScreenSize screenSize = db.ScreenSizes.Find(id);
            if (screenSize == null)
            {
                return HttpNotFound();
            }
            return View(screenSize);
        }

        // POST: Admin/ScreenSizes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ScreenSize screenSize = db.ScreenSizes.Find(id);
            db.ScreenSizes.Remove(screenSize);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
