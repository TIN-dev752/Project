﻿

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
using System.Data.Entity;
using System.Data.Entity.Infrastructure;


public partial class FPTSHOPEntities2 : DbContext
{
    public FPTSHOPEntities2()
        : base("name=FPTSHOPEntities2")
    {

    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }


    public virtual DbSet<CameraFeature> CameraFeatures { get; set; }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<CategoriesSlider> CategoriesSliders { get; set; }

    public virtual DbSet<Color> Colors { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<OrderItem> OrderItems { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<PaymentMethod> PaymentMethods { get; set; }

    public virtual DbSet<PerformanceBattery> PerformanceBatteries { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<ProductDetail> ProductDetails { get; set; }

    public virtual DbSet<ProductDiscount> ProductDiscounts { get; set; }

    public virtual DbSet<ProductNew> ProductNews { get; set; }

    public virtual DbSet<ProductQuestion> ProductQuestions { get; set; }

    public virtual DbSet<ProductSlider> ProductSliders { get; set; }

    public virtual DbSet<Ram> Rams { get; set; }

    public virtual DbSet<ScreenSize> ScreenSizes { get; set; }

    public virtual DbSet<Storage> Storages { get; set; }

    public virtual DbSet<User> Users { get; set; }

        public System.Data.Entity.DbSet<DuAnFptShop.Models.ViewModel.HomeViewModel> HomeViewModels { get; set; }
    }

}

