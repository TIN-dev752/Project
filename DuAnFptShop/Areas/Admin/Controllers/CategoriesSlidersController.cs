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
    public class CategoriesSlidersController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/CategoriesSliders
        public ActionResult Index()
        {
            var categoriesSliders = db.CategoriesSliders.Include(c => c.Category);
            return View(categoriesSliders.ToList());
        }

        // GET: Admin/CategoriesSliders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoriesSlider categoriesSlider = db.CategoriesSliders.Find(id);
            if (categoriesSlider == null)
            {
                return HttpNotFound();
            }
            return View(categoriesSlider);
        }

        // GET: Admin/CategoriesSliders/Create
        public ActionResult Create()
        {
            ViewBag.CateID = new SelectList(db.Categories, "CateID", "CateName");
            return View();
        }

        // POST: Admin/CategoriesSliders/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CategoriesSliderID,CateSliderImage,CateID")] CategoriesSlider categoriesSlider)
        {
            if (ModelState.IsValid)
            {
                db.CategoriesSliders.Add(categoriesSlider);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CateID = new SelectList(db.Categories, "CateID", "CateName", categoriesSlider.CateID);
            return View(categoriesSlider);
        }

        // GET: Admin/CategoriesSliders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoriesSlider categoriesSlider = db.CategoriesSliders.Find(id);
            if (categoriesSlider == null)
            {
                return HttpNotFound();
            }
            ViewBag.CateID = new SelectList(db.Categories, "CateID", "CateName", categoriesSlider.CateID);
            return View(categoriesSlider);
        }

        // POST: Admin/CategoriesSliders/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CategoriesSliderID,CateSliderImage,CateID")] CategoriesSlider categoriesSlider)
        {
            if (ModelState.IsValid)
            {
                db.Entry(categoriesSlider).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CateID = new SelectList(db.Categories, "CateID", "CateName", categoriesSlider.CateID);
            return View(categoriesSlider);
        }

        // GET: Admin/CategoriesSliders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CategoriesSlider categoriesSlider = db.CategoriesSliders.Find(id);
            if (categoriesSlider == null)
            {
                return HttpNotFound();
            }
            return View(categoriesSlider);
        }

        // POST: Admin/CategoriesSliders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CategoriesSlider categoriesSlider = db.CategoriesSliders.Find(id);
            db.CategoriesSliders.Remove(categoriesSlider);
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
