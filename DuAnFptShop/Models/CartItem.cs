using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DuAnFptShop.Models
{
    public class CartItem
    {
        FPTSHOPEntities2 db = new FPTSHOPEntities2();
        public int ProductID { get; set; }
        public string NamePro { get; set; }
        public string ImagePro { get; set; }
        public decimal Price { get; set; }
        public int Number { get; set; }
        public Nullable<decimal> NewPrice { get; set; }
        public Nullable<decimal> OldPrice { get; set; }
        public int DiscountID { get; set; }
        public Nullable<decimal> DiscountValue { get; set; }
        public string DiscountDecription { get; set; }  

        public decimal FinalPrice()
        {
            return Number * (Decimal)OldPrice;
        }

        public decimal LastPrice()
        {
            return Number * (Decimal)OldPrice - Number * (Decimal)DiscountValue;
        }

        public CartItem(int productID)
        {
            this.ProductID = productID;
            var productDB = db.Products.Single(s => s.ProductID == this.ProductID);
            this.NamePro = productDB.ProName;
            this.ImagePro = productDB.ProImage;
            this.Price = (decimal)productDB.Price;
            this.Number = 1;
            this.NewPrice = productDB.ProductDetails.FirstOrDefault().NewPrice;
            this.OldPrice = productDB.ProductDetails.FirstOrDefault().OldPrice;
            this.DiscountDecription = productDB.ProductDetails.FirstOrDefault().ProductDiscounts.FirstOrDefault().DiscountDecription;
            this.DiscountValue = productDB.ProductDetails.FirstOrDefault().ProductDiscounts.FirstOrDefault().DiscountValue;
        }

    }
}