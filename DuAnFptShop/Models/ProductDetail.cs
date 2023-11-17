
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace DuAnFptShop.Models
{

using System;
    using System.Collections.Generic;
    
public partial class ProductDetail
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ProductDetail()
    {

        this.OrderItems = new HashSet<OrderItem>();

        this.ProductDiscounts = new HashSet<ProductDiscount>();

    }


    public int ProductDetailID { get; set; }

    public Nullable<int> ProductID { get; set; }

    public Nullable<int> ColorID { get; set; }

    public Nullable<decimal> NewPrice { get; set; }

    public Nullable<decimal> OldPrice { get; set; }

    public Nullable<int> RamID { get; set; }

    public Nullable<int> StorageID { get; set; }

    public string ColorImage { get; set; }

    public Nullable<int> QuantityInventory { get; set; }

    public Nullable<int> QuantityPurchased { get; set; }



    public virtual Color Color { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<OrderItem> OrderItems { get; set; }

    public virtual Product Product { get; set; }

    public virtual Ram Ram { get; set; }

    public virtual Storage Storage { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ProductDiscount> ProductDiscounts { get; set; }

}

}
