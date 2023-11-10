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
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.ProductDetails = new HashSet<ProductDetail>();
            this.ProductNews = new HashSet<ProductNew>();
            this.ProductQuestions = new HashSet<ProductQuestion>();
            this.ProductSliders = new HashSet<ProductSlider>();
            this.CameraFeatures = new HashSet<CameraFeature>();
        }
    
        public int ProductID { get; set; }
        public Nullable<int> CateID { get; set; }
        public string ProName { get; set; }
        public string ProDecription { get; set; }
        public string Screen { get; set; }
        public string Camera { get; set; }
        public string CameraSelfie { get; set; }
        public string Cpu { get; set; }
        public string Battery { get; set; }
        public string Sim { get; set; }
        public string OperatingSystem { get; set; }
        public string Origin { get; set; }
        public Nullable<int> LaunchTime { get; set; }
        public Nullable<int> PerformanceBatteryID { get; set; }
        public Nullable<int> ScreenSizeID { get; set; }
        public string ProImage { get; set; }
        public string ProDescriptionTitle { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual PerformanceBattery PerformanceBattery { get; set; }
        public virtual ScreenSize ScreenSize { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductDetail> ProductDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductNew> ProductNews { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductQuestion> ProductQuestions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductSlider> ProductSliders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CameraFeature> CameraFeatures { get; set; }
    }
}
