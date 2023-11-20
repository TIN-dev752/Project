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
    public class PerformanceBatteriesController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/PerformanceBatteries
        public ActionResult Index()
        {
            return View(db.PerformanceBatteries.ToList());
        }

        // GET: Admin/PerformanceBatteries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PerformanceBattery performanceBattery = db.PerformanceBatteries.Find(id);
            if (performanceBattery == null)
            {
                return HttpNotFound();
            }
            return View(performanceBattery);
        }

        // GET: Admin/PerformanceBatteries/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/PerformanceBatteries/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PerformanceBatteryID,Performance")] PerformanceBattery performanceBattery)
        {
            if (ModelState.IsValid)
            {
                db.PerformanceBatteries.Add(performanceBattery);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(performanceBattery);
        }

        // GET: Admin/PerformanceBatteries/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PerformanceBattery performanceBattery = db.PerformanceBatteries.Find(id);
            if (performanceBattery == null)
            {
                return HttpNotFound();
            }
            return View(performanceBattery);
        }

        // POST: Admin/PerformanceBatteries/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PerformanceBatteryID,Performance")] PerformanceBattery performanceBattery)
        {
            if (ModelState.IsValid)
            {
                db.Entry(performanceBattery).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(performanceBattery);
        }

        // GET: Admin/PerformanceBatteries/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PerformanceBattery performanceBattery = db.PerformanceBatteries.Find(id);
            if (performanceBattery == null)
            {
                return HttpNotFound();
            }
            return View(performanceBattery);
        }

        // POST: Admin/PerformanceBatteries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PerformanceBattery performanceBattery = db.PerformanceBatteries.Find(id);
            db.PerformanceBatteries.Remove(performanceBattery);
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
