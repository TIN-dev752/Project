using DuAnFptShop.Models;
using DuAnFptShop.Models.ViewModel;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DuAnFptShop.Controllers
{
    public class CategoryController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        public ActionResult LocSP(int? pricemin, int? pricemax)
        {
            var pc = db.ProductDetails.DistinctBy(pd => pd.ProductID).ToList();
            var prolst = pc.Select(pd => new HomeViewModel
            {
                //lấy thông tin bảng ProductDetail
                ProductDetailID = pd.ProductDetailID,
                NewPrice = pd.NewPrice,
                OldPrice = pd.OldPrice,

                //lấy thông tin bảng Product
                ProductID = (int)pd.ProductID,
                ProName = pd.Product.ProName,
                ProImage = pd.Product.ProImage,
                Screen = pd.Product.Screen,
                Cpu = pd.Product.Cpu,
                RamName = pd.Ram.RamName,
                StorageName = pd.Storage.StorageName,
            }).Where(p => p.NewPrice < pricemax).Where(p => p.NewPrice > pricemin).ToList();
            return View(prolst);
        }

    }
}