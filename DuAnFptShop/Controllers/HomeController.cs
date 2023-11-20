﻿using DuAnFptShop.Models;
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
using Newtonsoft.Json.Serialization;

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

        public ActionResult OutstandingListPartialView()//lấy sản phẩm theo tiêu chí số lượng sản phẩm đã mua
        {
            var outstandingList = (from p in db.Products
                                   join pd in db.ProductDetails on p.ProductID equals pd.ProductID
                                   join r in db.Rams on pd.RamID equals r.RamID
                                   join s in db.Storages on pd.StorageID equals s.StorageID
                                   where pd.QuantityPurchased > 0
                                   select new HomeViewModel
                                   {
                                       ProductDetailID = pd.ProductDetailID,
                                       NewPrice = pd.NewPrice,
                                       OldPrice = pd.OldPrice,
                                       QuantityInventory = pd.QuantityInventory,
                                       QuantityPurchased = pd.QuantityPurchased,
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
                                   .OrderByDescending(pd => pd.QuantityPurchased)
                                   .Take(8)
                                   .ToList();
            return PartialView(outstandingList);
        }

        public ActionResult ProductDetail(int id = 1)
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

                //lay thong tin bangr ProductDiscount
                DiscountID = pro.ProductDiscounts.FirstOrDefault().DiscountID,
                DiscountDecription = pro.ProductDiscounts.FirstOrDefault().DiscountDecription,
                DiscountType = pro.ProductDiscounts.FirstOrDefault().DiscountType,
                DiscountValue = pro.ProductDiscounts.FirstOrDefault().DiscountValue,
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

        public ActionResult EmptyCart()
        {
            return View();
        }

        public List<CartItem> GetCart()
        {
            List<CartItem> myCart = Session["GioHang"] as List<CartItem>;
            if (myCart == null)
            {
                myCart = new List<CartItem>();
                Session["GioHang"] = myCart;
            }
            return myCart;
        }

        public ActionResult AddToCart(int id)
        {
            List<CartItem> myCart = GetCart();
            CartItem currentProduct = myCart.FirstOrDefault(p => p.ProductID == id);
            if (currentProduct == null)
            {
                currentProduct = new CartItem(id);
                myCart.Add(currentProduct);
            }
            else
            {
                currentProduct.Number++;
            }
            return RedirectToAction("ShopCart", "Home");
        }
        public ActionResult Delete(int id)
        {
            List<CartItem> myCart = Session["GioHang"] as List<CartItem>;
            CartItem item = myCart.FirstOrDefault(m => m.ProductID == id);
            if (item != null)
            {
                myCart.Remove(item);
                Session["GioHang"] = myCart;
                db.SaveChanges();
            }
            return RedirectToAction("ShopCart", "Home");
        }
        public ActionResult Update(int id, int Number)
        {
            List<CartItem> myCart = Session["GioHang"] as List<CartItem>;
            CartItem item = myCart.FirstOrDefault(m => m.ProductID == id);
            if (item != null)
            {
                item.Number = Number;
                Session["GioHang"] = myCart;
            }
            return RedirectToAction("ShopCart");
        }

        private int GetTotalNumber()
        {
            int totalNumber = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
            {
                totalNumber = myCart.Sum(sp => sp.Number);
            }
            return totalNumber;
        }

        private int GetDisCount()
        {
            int DisCount = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
            {
                DisCount = (int)myCart.Sum(sp => sp.DiscountValue);
            }
            return DisCount;
        }

        private decimal GetTotalPrice()
        {
            decimal totalPrice = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
                totalPrice = myCart.Sum(sp => sp.FinalPrice());
            return totalPrice;
        }

        private decimal GetLastPrice()
        {
            decimal lastPrice = 0;
            List<CartItem> myCart = GetCart();
            if (myCart != null)
                lastPrice = myCart.Sum(sp => sp.LastPrice());
            return lastPrice;
        }

        public ActionResult ShopCart()
        {
            List<CartItem> myCart = GetCart();
            if (myCart == null || myCart.Count == 0)
                return RedirectToAction("EmptyCart", "Home");
            ViewBag.TotalNumber = GetTotalNumber();
            ViewBag.TotalPrice = GetTotalPrice();
            ViewBag.LastPrice = GetLastPrice();
            ViewBag.DisCount = GetDisCount();
            return View(myCart);
        }

        public ActionResult CartPartial()
        {
            ViewBag.TotalNumber = GetTotalNumber();
            ViewBag.TotalPrice = GetTotalPrice();
            ViewBag.LastPrice = GetLastPrice();
            ViewBag.DisCount = GetDisCount();
            return PartialView();
        }

        public ActionResult Search(string search = "")
        {
            search = Request.Form["data"];


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
            }).Where(p => p.ProName.ToUpper().Contains(search.ToUpper()));
            return View(prolst.ToList());

        }

        [HttpPost]
        public ActionResult SuccessOrder(string nameUser, string phone, string nameReceiver, string phoneNumberReceiver, string paymentMethod, string addressDetail)
        {
            var myCart = GetCart();

            Order newOrder = new Order
            {
                OrderDate = DateTime.Now,
                AddressDelivery = addressDetail,
                ReceiverName = nameReceiver,
                ReceiverPhone = phoneNumberReceiver,
                TotalPrice = GetTotalPrice(),
                LastPrice = GetLastPrice(),

                OrderItems = myCart.Select(cartItem => new OrderItem
                {
                    ProductDetailID = cartItem.ProductID,
                    Quantity = cartItem.Number,
                }).ToList()
            };
            db.Orders.Add(newOrder);
            db.SaveChanges();

            int orderID = newOrder.OrderID;
            ViewBag.OrderID = orderID;
            ViewBag.CustomerName = nameUser;
            ViewBag.CustomerPhone = phone;
            ViewBag.PaymentMethod = paymentMethod;

            return RedirectToAction("SuccessOrder");
        }

    }
}