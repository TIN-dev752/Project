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
    public class ProductDiscountsController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/ProductDiscounts
        public ActionResult Index()
        {
            var productDiscounts = db.ProductDiscounts.Include(p => p.ProductDetail);
            return View(productDiscounts.ToList());
        }

        // GET: Admin/ProductDiscounts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductDiscount productDiscount = db.ProductDiscounts.Find(id);
            if (productDiscount == null)
            {
                return HttpNotFound();
            }
            return View(productDiscount);
        }

        // GET: Admin/ProductDiscounts/Create
        public ActionResult Create()
        {
            ViewBag.ProductDetailID = new SelectList(db.ProductDetails, "ProductDetailID", "ColorImage");
            return View();
        }

        // POST: Admin/ProductDiscounts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DiscountID,ProductDetailID,DiscountType,DiscountValue,DiscountDecription,StartDate,EndDate")] ProductDiscount productDiscount)
        {
            if (ModelState.IsValid)
            {
                db.ProductDiscounts.Add(productDiscount);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductDetailID = new SelectList(db.ProductDetails, "ProductDetailID", "ColorImage", productDiscount.ProductDetailID);
            return View(productDiscount);
        }

        // GET: Admin/ProductDiscounts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductDiscount productDiscount = db.ProductDiscounts.Find(id);
            if (productDiscount == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductDetailID = new SelectList(db.ProductDetails, "ProductDetailID", "ColorImage", productDiscount.ProductDetailID);
            return View(productDiscount);
        }

        // POST: Admin/ProductDiscounts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "DiscountID,ProductDetailID,DiscountType,DiscountValue,DiscountDecription,StartDate,EndDate")] ProductDiscount productDiscount)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productDiscount).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductDetailID = new SelectList(db.ProductDetails, "ProductDetailID", "ColorImage", productDiscount.ProductDetailID);
            return View(productDiscount);
        }

        // GET: Admin/ProductDiscounts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductDiscount productDiscount = db.ProductDiscounts.Find(id);
            if (productDiscount == null)
            {
                return HttpNotFound();
            }
            return View(productDiscount);
        }

        // POST: Admin/ProductDiscounts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductDiscount productDiscount = db.ProductDiscounts.Find(id);
            db.ProductDiscounts.Remove(productDiscount);
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
