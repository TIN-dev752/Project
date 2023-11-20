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
    public class ProductSlidersController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/ProductSliders
        public ActionResult Index()
        {
            var productSliders = db.ProductSliders.Include(p => p.Product);
            return View(productSliders.ToList());
        }

        // GET: Admin/ProductSliders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductSlider productSlider = db.ProductSliders.Find(id);
            if (productSlider == null)
            {
                return HttpNotFound();
            }
            return View(productSlider);
        }

        // GET: Admin/ProductSliders/Create
        public ActionResult Create()
        {
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName");
            return View();
        }

        // POST: Admin/ProductSliders/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductSliderID,ProductSliderImage,ProductID")] ProductSlider productSlider)
        {
            if (ModelState.IsValid)
            {
                db.ProductSliders.Add(productSlider);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productSlider.ProductID);
            return View(productSlider);
        }

        // GET: Admin/ProductSliders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductSlider productSlider = db.ProductSliders.Find(id);
            if (productSlider == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productSlider.ProductID);
            return View(productSlider);
        }

        // POST: Admin/ProductSliders/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductSliderID,ProductSliderImage,ProductID")] ProductSlider productSlider)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productSlider).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productSlider.ProductID);
            return View(productSlider);
        }

        // GET: Admin/ProductSliders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductSlider productSlider = db.ProductSliders.Find(id);
            if (productSlider == null)
            {
                return HttpNotFound();
            }
            return View(productSlider);
        }

        // POST: Admin/ProductSliders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductSlider productSlider = db.ProductSliders.Find(id);
            db.ProductSliders.Remove(productSlider);
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
