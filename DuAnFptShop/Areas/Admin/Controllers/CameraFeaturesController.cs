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
    public class CameraFeaturesController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/CameraFeatures
        public ActionResult Index()
        {
            return View(db.CameraFeatures.ToList());
        }

        // GET: Admin/CameraFeatures/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CameraFeature cameraFeature = db.CameraFeatures.Find(id);
            if (cameraFeature == null)
            {
                return HttpNotFound();
            }
            return View(cameraFeature);
        }

        // GET: Admin/CameraFeatures/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/CameraFeatures/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CameraFeatureID,Feature")] CameraFeature cameraFeature)
        {
            if (ModelState.IsValid)
            {
                db.CameraFeatures.Add(cameraFeature);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cameraFeature);
        }

        // GET: Admin/CameraFeatures/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CameraFeature cameraFeature = db.CameraFeatures.Find(id);
            if (cameraFeature == null)
            {
                return HttpNotFound();
            }
            return View(cameraFeature);
        }

        // POST: Admin/CameraFeatures/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CameraFeatureID,Feature")] CameraFeature cameraFeature)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cameraFeature).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cameraFeature);
        }

        // GET: Admin/CameraFeatures/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CameraFeature cameraFeature = db.CameraFeatures.Find(id);
            if (cameraFeature == null)
            {
                return HttpNotFound();
            }
            return View(cameraFeature);
        }

        // POST: Admin/CameraFeatures/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CameraFeature cameraFeature = db.CameraFeatures.Find(id);
            db.CameraFeatures.Remove(cameraFeature);
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
