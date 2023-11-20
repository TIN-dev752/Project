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

        public ActionResult LocSP(int? pricemin, int? pricemax)//lọc sản phẩm theo giá 
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

        public ActionResult Loc3000()
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
                Battery = pd.Product.Battery,
            }).Where(p => p.Battery == "3000 mAh").ToList();
            return View(prolst);
        }


        public ActionResult LocPin()//loc dung luong pin tu 3000 den 4000
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
                Battery = pd.Product.Battery,
            }).Where(p => p.Battery == "3700 mAh" || p.Battery == "3900 mAh").ToList();
            return View(prolst);
        }

        public ActionResult Loc4000_5000()//loc dung luong pin tu 4000 den 5000
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
                Battery = pd.Product.Battery,
            }).Where(p => p.Battery == "4400 mAh" || p.Battery == "5000 mAh").ToList();
            return View(prolst);
        }

        public ActionResult Loc5000()//loc dung luong pin tren 5000
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
                Battery = pd.Product.Battery,
            }).Where(p => p.Battery == "6000 mAh").ToList();
            return View(prolst);
        }
        public ActionResult LocGame()//loc dung luong pin theo choi game, cau hinh sieu cao
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
                Battery = pd.Product.Battery,
            }).Where(p => p.Cpu == "Snapdragon 8+ Gen 1" || p.Cpu == "Snapdragon 8 Gen 2").ToList();
            return View(prolst);
        }

       

    }
}



