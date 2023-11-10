using DuAnFptShop.Models;
using DuAnFptShop.Models.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using System.Net;

namespace DuAnFptShop.Controllers
{
    public class HomeController : Controller
    {
        private FPTSHOPEntities1 db = new FPTSHOPEntities1();

        public ActionResult HomePage()
        {
            return View();
        }
        //var hotDeals = (from pd in db.ProductDetails
        //                join p in db.Products on pd.ProductID equals p.ProductID
        //                let discount = pd.OldPrice - pd.NewPrice
        //                orderby discount descending
        //                select p).Take(4).ToList();
        public ActionResult HotDealList()
        {
            //var hotDeals = (from pd in db.ProductDetails
            //                join p in db.Products
            //                on pd.ProductID equals p.ProductID
            //                select new 
            //                {
            //                    ProductDetail = pd,
            //                    Product = p
            //                }).ToList();
            //return PartialView(hotDeals);
            var productsWithDetails = (from product in db.Products
                                       join productDetail in db.ProductDetails
                                       on product.ProductID equals productDetail.ProductID
                                       select new ProductViewModel
                                       {
                                           ProductID = product.ProductID,
                                           //CateID = product.CateID,
                                           ProName = product.ProName,
                                           ProDecription = product.ProDecription,
                                           Screen = product.Screen,
                                           Camera = product.Camera,
                                           CameraSelfie = product.CameraSelfie,
                                           Cpu = product.Cpu,
                                           Battery = product.Battery,
                                           Sim = product.Sim,
                                           OperatingSystem = product.OperatingSystem,
                                           Origin = product.Origin,
                                           LaunchTime = product.LaunchTime,
                                           PerformanceBatteryID = product.PerformanceBatteryID,
                                           ScreenSizeID = product.ScreenSizeID,
                                           ProImage = product.ProImage,
                                           ProDescriptionTitle = product.ProDescriptionTitle,
                                           NewPrice = productDetail.NewPrice,
                                           OldPrice = productDetail.OldPrice,
                                           RamID = productDetail.RamID,
                                           StorageID = productDetail.StorageID
                                       }).ToList();

            return PartialView(productsWithDetails);
        }

        public ActionResult OutstandingList()
        {
            return PartialView();
        }

        public ActionResult ProductDetail(int? id=1)
        {
            ProductDetail pro = db.ProductDetails.FirstOrDefault(p => p.ProductDetailID == id);
            DetailProduct detailProduct = new DetailProduct
            {
                //lay thong tin bang productdetail
                ProductDetailID = pro.ProductDetailID,
                NewPrice = pro.NewPrice,
                OldPrice = pro.OldPrice,

                //lay thong tin bang product
                ProductID = (int)pro.ProductID,

                ProName = pro.Product.ProName,
                ProDecription = pro.Product.ProDecription,
                Screen = pro.Product.Screen,
                Camera = pro.Product.Camera,
                CameraSelfie = pro.Product.CameraSelfie,
                Cpu = pro.Product.Cpu,
                Battery = pro.Product.Battery,
                Sim = pro.Product.Sim,
                OperatingSystem = pro.Product.OperatingSystem,
                Origin = pro.Product.Origin,
                LaunchTime = pro.Product.LaunchTime,
                PerformanceBatteryID = pro.Product.PerformanceBatteryID,
                ScreenSizeID = pro.Product.ScreenSizeID,
                ProImage = pro.Product.ProImage,
                ProDescriptionTitle = pro.Product.ProDescriptionTitle,

                //lay thong tin bang ram
                RamID = pro.Ram.RamID,
                RamName = pro.Ram.RamName,

                //lay thong tin bang storage
                StorageID = pro.Storage.StorageID,
                StorageName = pro.Storage.StorageName,

                //lay thong tin bang color
                ColorID = pro.Color.ColorID,
                ColorName = pro.Color.ColorName,

                //lay thong tin bang productslider

            };
            return View(detailProduct);
        }

        public ActionResult ProductCategory()
        {
            return View();
        }
        public ActionResult ShopCart()
        {
            return View();
        }
        
    }
}