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
    public class ProductQuestionsController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        // GET: Admin/ProductQuestions
        public ActionResult Index()
        {
            var productQuestions = db.ProductQuestions.Include(p => p.Product);
            return View(productQuestions.ToList());
        }

        // GET: Admin/ProductQuestions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductQuestion productQuestion = db.ProductQuestions.Find(id);
            if (productQuestion == null)
            {
                return HttpNotFound();
            }
            return View(productQuestion);
        }

        // GET: Admin/ProductQuestions/Create
        public ActionResult Create()
        {
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName");
            return View();
        }

        // POST: Admin/ProductQuestions/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "QuestionID,QuestionTitle,Answer,ProductID")] ProductQuestion productQuestion)
        {
            if (ModelState.IsValid)
            {
                db.ProductQuestions.Add(productQuestion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productQuestion.ProductID);
            return View(productQuestion);
        }

        // GET: Admin/ProductQuestions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductQuestion productQuestion = db.ProductQuestions.Find(id);
            if (productQuestion == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productQuestion.ProductID);
            return View(productQuestion);
        }

        // POST: Admin/ProductQuestions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "QuestionID,QuestionTitle,Answer,ProductID")] ProductQuestion productQuestion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productQuestion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductID = new SelectList(db.Products, "ProductID", "ProName", productQuestion.ProductID);
            return View(productQuestion);
        }

        // GET: Admin/ProductQuestions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductQuestion productQuestion = db.ProductQuestions.Find(id);
            if (productQuestion == null)
            {
                return HttpNotFound();
            }
            return View(productQuestion);
        }

        // POST: Admin/ProductQuestions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductQuestion productQuestion = db.ProductQuestions.Find(id);
            db.ProductQuestions.Remove(productQuestion);
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
