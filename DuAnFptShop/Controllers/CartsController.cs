using DuAnFptShop.Models;
using DuAnFptShop.Models.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DuAnFptShop.Controllers
{
    public class CartsController : Controller
    {
        private FPTSHOPEntities2 db = new FPTSHOPEntities2();

        public List<CartViewModel> GetCart()
        {
            List<CartViewModel> myCart = Session["GioHang"] as List<CartViewModel>;

            if (myCart == null)
            {
                myCart = new List<CartViewModel>();
                Session["GioHang"] = myCart;
            }

            return myCart;
        }

        public ActionResult AddToCart(int id)
        {
            List<CartViewModel> myCart = GetCart();
            CartViewModel currentProduct = myCart.FirstOrDefault(p => p.ProductDetailID == id);
            if (currentProduct == null)
            {
                ProductDetail productDetail = db.ProductDetails.FirstOrDefault(p => p.ProductDetailID == id);
                if (productDetail != null)
                {
                    myCart.Add(new CartViewModel
                    {
                        //bảng productdetail
                        ProductDetailID = productDetail.ProductDetailID,
                        NewPrice = productDetail.NewPrice,
                        OldPrice = productDetail.OldPrice,
                        ColorImage = productDetail.ColorImage,

                        //bảng product
                        ProductID = (int)productDetail.ProductID,
                        ProName = productDetail.Product.ProName,
                        ProImage = productDetail.Product.ProImage,

                        //bảng productdiscount
                        DiscountType = productDetail.ProductDiscounts.FirstOrDefault()?.DiscountType,
                        DiscountValue = productDetail.ProductDiscounts.FirstOrDefault()?.DiscountID,
                        DiscountDecription = productDetail.ProductDiscounts.FirstOrDefault()?.DiscountDecription,
                    });
                    Session["GioHang"] = myCart;
                }
            }
            return RedirectToAction("ShopCart", "Home", new { addedProductId = id });
        }
    }
}