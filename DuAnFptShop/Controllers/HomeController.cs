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
using Microsoft.Ajax.Utilities;

namespace DuAnFptShop.Controllers
{
    public class HomeController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        public ActionResult HomePage()
        {
            return View();
        }

        public ActionResult HotDealListPartialView()//lấy sản phẩm theo tiêu chí giá trị lớn nhất khi OldPrice - NewPrice
        {
            var hotDealList = db.ProductDetails
                        .OrderByDescending(pd => pd.OldPrice - pd.NewPrice)
                        .DistinctBy(pd => pd.ProductID)
                        .Take(4)
                        .ToList();
            var homeViewModel = hotDealList.Select(pd => new HomeViewModel
            {
                ProductDetailID = pd.ProductDetailID,
                NewPrice = pd.NewPrice,
                OldPrice = pd.OldPrice,
                ProductID = (int)pd.ProductID,
                ProName = pd.Product.ProName,
                Screen = pd.Product.Screen,
                Cpu = pd.Product.Cpu,
                ProImage = pd.Product.ProImage,
                RamID = pd.Ram.RamID,
                RamName = pd.Ram.RamName,
                StorageID = pd.Storage.StorageID,
                StorageName = pd.Storage.StorageName,
            }).ToList();
            return PartialView(homeViewModel);
        }

        public ActionResult OutstandingListPartialView()//lấy sản phẩm theo tiêu chí năm sản xuất
        {
            int currentYear = DateTime.Now.Year;

            var outstandingList = (from p in db.Products
                                   join pd in db.ProductDetails on p.ProductID equals pd.ProductID
                                   join r in db.Rams on pd.RamID equals r.RamID
                                   join s in db.Storages on pd.StorageID equals s.StorageID
                                   where p.LaunchTime == currentYear
                                   select new HomeViewModel
                                   {
                                       ProductDetailID = pd.ProductDetailID,
                                       NewPrice = pd.NewPrice,
                                       OldPrice = pd.OldPrice,
                                       ProductID = p.ProductID,
                                       ProName = p.ProName,
                                       Screen = p.Screen,
                                       Cpu = p.Cpu,
                                       ProImage = p.ProImage,
                                       RamID = r.RamID,
                                       RamName = r.RamName,
                                       StorageID = s.StorageID,
                                       StorageName = s.StorageName,
                                   })
                                   .DistinctBy(pd => pd.ProductID)
                                   .Take(8)
                                   .ToList();

            return PartialView(outstandingList);
        }

        public ActionResult ProductDetail(int id)
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
                ColorImage = pro.ColorImage,

                //lay thong tin bang ram
                RamID = pro.Ram.RamID,
                RamName = pro.Ram.RamName,

                //lay thong tin bang storage
                StorageID = pro.Storage.StorageID,
                StorageName = pro.Storage.StorageName,

                //lay thong tin bang color
                ColorID = pro.Color.ColorID,
                ColorName = pro.Color.ColorName,

            };
            return View(detailProduct);
        }

        public ActionResult ProductCategory()
        {
            var pc = db.ProductDetails.DistinctBy(pd => pd.ProductID).ToList();
            var homeViewModel = pc.Select(pd => new HomeViewModel
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
            }).ToList();
            return View(homeViewModel);
        }
        public ActionResult ShopCart()
        {
            List<OrderItem> orderItems = db.OrderItems.ToList();
            List<CartViewModel> cartViewModel = orderItems.Select(orderItem => new CartViewModel
            { 
                //bảng productdetail
                ProductDetailID = (int)orderItem.ProductDetailID,
                NewPrice = orderItem.ProductDetail.NewPrice,
                OldPrice= orderItem.ProductDetail.OldPrice,
                ColorImage = orderItem.ProductDetail.ColorImage,

                //bảng product
                ProductID = (int)orderItem.ProductDetail.ProductID,
                ProName = orderItem.ProductDetail.Product.ProName,
                ProImage = orderItem.ProductDetail.Product.ProImage,

                //bảng orderitem
                Quantity = orderItem.Quantity,

                //bảng productdiscount
                DiscountType = orderItem.ProductDetail.ProductDiscounts.FirstOrDefault()?.DiscountType,
                DiscountValue = orderItem.ProductDetail.ProductDiscounts.FirstOrDefault()?.DiscountID,
                DiscountDecription = orderItem.ProductDetail.ProductDiscounts.FirstOrDefault()?.DiscountDecription,

                //bảng Order
                TotalPrice = orderItem.Order.TotalPrice,
                LastPrice = orderItem.Order.LastPrice,

            }).ToList();
            return View(cartViewModel);
        }
        
    }
}