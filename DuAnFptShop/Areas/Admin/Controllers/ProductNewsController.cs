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
    public class ProductNewsController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/ProductNews
        public ActionResult Index()
        {
            var productNews = db.ProductNews.Include(p => p.Product);
            return View(productNews.ToList());
        }

        // GET: Admin/ProductNews/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductNew productNew = db.ProductNews.Find(id);
            if (productNew == null)
            {
                return HttpNotFound();
            }
            return View(productNew);
        }

        // GET: Admin/ProductNews/Create
        public ActionResult Create()
        {
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName");
            return View();
        }

        // POST: Admin/ProductNews/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductNewsID,NewsTitle,NewsImage,NewsTags,ProductID,TypeNews")] ProductNew productNew)
        {
            if (ModelState.IsValid)
            {
                db.ProductNews.Add(productNew);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productNew.ProductID);
            return View(productNew);
        }

        // GET: Admin/ProductNews/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductNew productNew = db.ProductNews.Find(id);
            if (productNew == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productNew.ProductID);
            return View(productNew);
        }

        // POST: Admin/ProductNews/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductNewsID,NewsTitle,NewsImage,NewsTags,ProductID,TypeNews")] ProductNew productNew)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productNew).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productNew.ProductID);
            return View(productNew);
        }

        // GET: Admin/ProductNews/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductNew productNew = db.ProductNews.Find(id);
            if (productNew == null)
            {
                return HttpNotFound();
            }
            return View(productNew);
        }

        // POST: Admin/ProductNews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductNew productNew = db.ProductNews.Find(id);
            db.ProductNews.Remove(productNew);
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
