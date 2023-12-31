USE [FPTSHOP]
GO
/****** Object:  Table [dbo].[CameraFeature]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CameraFeature](
	[CameraFeatureID] [int] NOT NULL,
	[Feature] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CameraFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateID] [int] NOT NULL,
	[CateName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriesSlider]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriesSlider](
	[CategoriesSliderID] [int] NOT NULL,
	[CateSliderImage] [varchar](250) NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoriesSliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] NOT NULL,
	[ColorName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CusID] [int] NOT NULL,
	[CusName] [nvarchar](150) NULL,
	[CusPhone] [char](10) NULL,
	[CusGender] [bit] NULL,
	[CusEmail] [varchar](150) NULL,
	[CusPassword] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[OrderItemID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[Quantity] [int] NULL,
	[ProductDetailID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[CusID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[AddressDelivery] [nvarchar](250) NULL,
	[PaymentMethodID] [int] NULL,
	[OrderStatus] [nvarchar](250) NULL,
	[ReceiverName] [nvarchar](250) NULL,
	[ReceiverPhone] [char](10) NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[LastPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[PaymentMethodID] [int] NOT NULL,
	[PaymentMethodName] [nvarchar](250) NULL,
	[PaymentMethodImage] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerformanceBattery]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerformanceBattery](
	[PerformanceBatteryID] [int] NOT NULL,
	[Performance] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[PerformanceBatteryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[CateID] [int] NULL,
	[ProName] [nvarchar](150) NULL,
	[ProDecription] [nvarchar](max) NULL,
	[Screen] [varchar](100) NULL,
	[Camera] [varchar](100) NULL,
	[CameraSelfie] [varchar](100) NULL,
	[Cpu] [varchar](100) NULL,
	[Battery] [varchar](100) NULL,
	[Sim] [varchar](100) NULL,
	[OperatingSystem] [varchar](50) NULL,
	[Origin] [nvarchar](100) NULL,
	[LaunchTime] [int] NULL,
	[PerformanceBatteryID] [int] NULL,
	[ScreenSizeID] [int] NULL,
	[ProImage] [varchar](250) NULL,
	[ProDescriptionTitle] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCamera]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCamera](
	[CameraFeatureID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CameraFeatureID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetail]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetail](
	[ProductDetailID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[ColorID] [int] NULL,
	[NewPrice] [decimal](18, 0) NULL,
	[OldPrice] [decimal](18, 0) NULL,
	[RamID] [int] NULL,
	[StorageID] [int] NULL,
	[ColorImage] [nvarchar](max) NULL,
	[QuantityInventory] [int] NULL,
	[QuantityPurchased] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiscounts]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDiscounts](
	[DiscountID] [int] NOT NULL,
	[ProductDetailID] [int] NULL,
	[DiscountType] [nvarchar](150) NULL,
	[DiscountValue] [decimal](18, 0) NULL,
	[DiscountDecription] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductNews]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductNews](
	[ProductNewsID] [int] NOT NULL,
	[NewsTitle] [nvarchar](250) NULL,
	[NewsImage] [varchar](250) NULL,
	[NewsTags] [varchar](100) NULL,
	[ProductID] [int] NULL,
	[TypeNews] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductNewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductQuestion]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuestion](
	[QuestionID] [int] NOT NULL,
	[QuestionTitle] [nvarchar](250) NULL,
	[Answer] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSlider]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSlider](
	[ProductSliderID] [int] NOT NULL,
	[ProductSliderImage] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductSliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ram]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ram](
	[RamID] [int] NOT NULL,
	[RamName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[RamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScreenSize]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScreenSize](
	[ScreenSizeID] [int] NOT NULL,
	[Size] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ScreenSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[StorageID] [int] NOT NULL,
	[StorageName] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[StorageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/20/2023 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (1, N'Quay phim slow motion')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (2, N'Ai camera')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (3, N'Hiệu ứng làm đẹp')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (4, N'Zoom quang học')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (5, N'Chống rung ois')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (6, N'Chụp macro')
INSERT [dbo].[CameraFeature] ([CameraFeatureID], [Feature]) VALUES (7, N'chụp góc rộng')
GO
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (1, N'Samsung')
GO
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (1, N'~/images/promotion-slider1.1.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (2, N'~/images/promotion-slider1.2.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (3, N'~/images/promotion-slider1.3.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (4, N'~/images/promotion-slider1.4.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (5, N'~/images/promotion-slider1.5.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (6, N'~/images/promotion-slider1.6.jpg', 1)
INSERT [dbo].[CategoriesSlider] ([CategoriesSliderID], [CateSliderImage], [CateID]) VALUES (7, N'~/images/promotion-slider1.7.jpg', 1)
GO
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Đen')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Xanh lá')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Trắng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Tím')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Xanh')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (6, N'Đỏ')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (7, N'Bạc')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (8, N'Kem')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (9, N'Xám')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (10, N'Vàng')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (11, N'Xanh đen')
GO
INSERT [dbo].[Customer] ([CusID], [CusName], [CusPhone], [CusGender], [CusEmail], [CusPassword]) VALUES (1, N'nguyễn duy thắng', N'0336971705', 1, N'nguyenduythang1392004@gmail.com', N'Thang123')
INSERT [dbo].[Customer] ([CusID], [CusName], [CusPhone], [CusGender], [CusEmail], [CusPassword]) VALUES (2, N'lữ trung tín', N'0336971722', 1, N'lutrungtin@gmail.com', N'lutrungtin123')
GO
INSERT [dbo].[OrderItems] ([OrderItemID], [OrderID], [Quantity], [ProductDetailID]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[Orders] ([OrderID], [CusID], [OrderDate], [AddressDelivery], [PaymentMethodID], [OrderStatus], [ReceiverName], [ReceiverPhone], [TotalPrice], [LastPrice]) VALUES (0, 1, CAST(N'2023-11-20T21:42:52.860' AS DateTime), N'312, quang trung, phường 10, gò vấp', 1, N'1', N'nguyễn duy thắng', N'0336971705', CAST(5990000 AS Decimal(18, 0)), CAST(5190000 AS Decimal(18, 0)))
INSERT [dbo].[Orders] ([OrderID], [CusID], [OrderDate], [AddressDelivery], [PaymentMethodID], [OrderStatus], [ReceiverName], [ReceiverPhone], [TotalPrice], [LastPrice]) VALUES (1, 1, CAST(N'2023-11-05T00:00:00.000' AS DateTime), N'312, quang trung, phường 10, gò vấp', 1, N'1', N'nguyễn duy thắng', N'0336971705', CAST(5990000 AS Decimal(18, 0)), CAST(5190000 AS Decimal(18, 0)))
GO
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (1, N'Thanh toán khi nhận hàng', N'~/images/ThanhToanKhiNhanHang.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (2, N'Thanh toán bằng thẻ ATM nội địa (Qua VNPay)', N'~/images/vnpay.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (3, N'Thanh toán bằng thẻ quốc tế Visa, Master, JCB, AMEX', N'~/images/card.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (4, N'Thanh toán bằng ví ZaloPay', N'~/images/zalopay.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (5, N'Thanh toán qua Kredivo', N'~/images/card.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (6, N'Trả góp qua nhà tài chính', N'~/images/card.png')
INSERT [dbo].[PaymentMethods] ([PaymentMethodID], [PaymentMethodName], [PaymentMethodImage]) VALUES (7, N'Trả góp qua thẻ tín dụng', N'~/images/card.png')
GO
INSERT [dbo].[PerformanceBattery] ([PerformanceBatteryID], [Performance]) VALUES (1, N'Dưới 3000 mah')
INSERT [dbo].[PerformanceBattery] ([PerformanceBatteryID], [Performance]) VALUES (2, N'Pin từ 3000 - 4000 mah')
INSERT [dbo].[PerformanceBattery] ([PerformanceBatteryID], [Performance]) VALUES (3, N'Pin từ 4000 - 5000 mah')
INSERT [dbo].[PerformanceBattery] ([PerformanceBatteryID], [Performance]) VALUES (4, N'Siêu trâu: trên 5000 mah')
GO
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (1, 1, N'Samsung Galaxy A23 5G', N'Chiến thần smartphone tầm trung gọi tên Samsung Galaxy A23 5G với những tính năng đột phá từ màn hình 120Hz mượt mà, 4 camera 50MP cho đến hiệu năng “khủng” Snapdragon 695, sẵn sàng cùng bạn khai mở tiềm lực công nghệ tối ưu để tận hưởng cuộc sống tiện lợi và thông minh.', N'6.6 inch, PLS LCD, FHD+, 1080 x 2408 Pixels', N'50.0 MP + 5.0 MP + 2.0 MP + 2.0 MP', N'8.0 MP', N'Snapdragon 695 5G', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 12', N'Việt Nam / Trung Quốc', 2022, 3, 3, N'~/images/samsung-a23-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy A23 4G', CAST(5190000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (2, 1, N'Samsung Galaxy A14 4G', N'Thêm sắc màu và trải nghiệm cho cuộc sống của bạn, Samsung giới thiệu Galaxy A14 4G giá rẻ với loạt điểm cải tiến mới. Mọi thứ được kết hợp hài hòa từ thiết kế trẻ trung, hệ thống camera 50MP, màn hình sắc nét cho đến viên pin siêu lớn, tạo ra chiếc điện thoại hấp dẫn với nhiều ưu điểm tuyệt vời dành cho giới trẻ.', N'6.6 inch, PLS LCD, FHD+, 1080 x 2408 Pixels', N'50.0 MP + 2.0 MP + 2.0 MP', N'13.0 MP', N'Exynos 850', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 12', N'Việt Nam / Trung Quốc', 2023, 3, 3, N'~/images/samsung-a14-4G.jpg', N'Đánh giá chi tiết Samsung Galaxy A14 4G', CAST(3690000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (3, 1, N'Samsung Galaxy Z Fold5 5G 256GB', N'Samsung Galaxy Z Fold5 khẳng định vị thế điện thoại gập tiên phong, mạnh dạn bứt phá ranh giới cũ, dẫn đầu với công nghệ bản lề Flex tiên tiến. Thiết bị còn mở ra loạt trải nghiệm thông minh toàn diện nhất thông qua màn hình lớn, hiệu năng vượt trội, tương thích bút S-Pen, cho phép đa nhiệm tối ưu, tăng tốc công việc hiệu quả, giúp người dùng tự tin nhập hội linh hoạt cùng Galaxy Z Fold 5.', N'	7.6 inch, 6.2 inch, Chính: Dynamic AMOLED 2X, QXGA, 2176 x 1812 pixels', N'	50 MP + 12.0 MP + 10.0 MP', N'	10.0 MP + 4.0 MP', N'Snapdragon 8 Gen 2', N'4400 mAh', N'2 - 2 Nano SIM or 1 eSIM, 1 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 3, 4, N'~/images/samsung-z fold5-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy Z Fold5 5G', CAST(30990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (4, 1, N'Samsung Galaxy S23 5G 256GB', N'Tuyệt tác Samsung Galaxy S23 thế hệ mới tối ưu toàn diện, vượt chuẩn cao cấp, cho trải nghiệm hoàn hảo từ sắc màu hiện đại, nhiếp ảnh đêm đậm chất điện ảnh Nightography đến bộ vi xử lý 4nm Snapdragon 8 Gen 2 for Galaxy mạnh mẽ, phát huy tối đa tiềm lực công nghệ hàng đầu của Samsung trên thế hệ S23.', N'6.1 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2340 Pixels', N'50.0 MP + 12.0 MP + 10.0 MP', N'12.0 MP', N'Snapdragon 8 Gen 2', N'3900 mAh', N'1 - 2 Nano SIM or 1 eSIM, 1 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 2, 3, N'~/images/samsung-s23-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy S23 5G 256GB', CAST(18990000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (5, 1, N'Samsung Galaxy A54 5G 128GB', N'Tỏa sáng với thế hệ Galaxy A mới trẻ trung và năng động, Samsung Galaxy A54 sát cánh cùng người dùng trong mọi trải nghiệm di động đỉnh cao từ thiết kế đột phá, sức mạnh Exynos 1380, đến tận dụng tối đa công nghệ nhiếp ảnh tiên tiến, tiên phong chống rung OIS, mang tới hệ thống camera đẳng cấp, thước phim chuẩn nét dù ngày hay đêm.', N'Chính: 6.4 inch, Super AMOLED, FHD+, 1080 x 2400 Pixels', N'50.0 MP + 12.0 MP + 5.0 MP', N'32.0 MP', N'Exynos 1380', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 12', N'Trung Quốc / Việt Nam', 2023, 3, 3, N'~/images/samsung-a54-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy A54 5G', CAST(9590000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (6, 1, N'Samsung Galaxy A34 5G', N'Sở hữu những tính năng hàng đầu trong phân khúc, đi kèm mức giá hợp lý, Samsung Galaxy A34 là “chiến hữu” kề vai sát cánh cùng Gen Z, sẵn sàng cân mọi hoạt động, chinh phục mọi thử thách. Hãy trải nghiệm Galaxy A34 5G, bạn sẽ thấy sự khác biệt từ thiết kế hiện đại, màn hình 120Hz, bộ 3 camera 48MP sắc nét đến hiệu năng Dimensity 1080 mạnh mẽ.', N'	6.6 inch, Super AMOLED, FHD+, 1080 x 2400 Pixels', N'48.0 MP + 8.0 MP + 5.0 MP', N'13.0 MP', N'MediaTek Dimensity 1080', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 3, 3, N'~/images/samsung-a34-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy A34 5G', CAST(7100000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (7, 1, N'Samsung Galaxy Z Flip5 5G 256GB', N'Nhập hội linh hoạt cùng Samsung Galaxy Z Flip 5, bạn sẽ trải nghiệm loạt công nghệ đột phá đầy thú vị và thiết kế độc đáo hoàn toàn mới. Nơi bạn có thể thỏa thích khám phá và tự tin thể hiện gu cá tính. Sự nhỏ gọn, vừa vặn và tính thời trang của Z Flip 5 còn giúp bạn thật nổi bật và sẵn sàng “cân” mọi phong cách yêu thích.', N'6.7 inch, 3.4 inch, Dynamic AMOLED, FHD+, 1080 x 2636 Pixels', N'12.0 MP + 12.0 MP', N'10.0 MP', N'Snapdragon 8 Gen 2', N'3700 mAh', N'1 - 1 eSIM, 1 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 2, 4, N'~/images/samsung-z flip5-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy Z Flip5 5G', CAST(17790000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (8, 1, N'Samsung Galaxy A05 128GB', N'Tận hưởng những công nghệ mới ở tầm giá phải chăng cùng Galaxy A05. Từ diện mạo trẻ trung, năng động đến màn hình rộng lớn 6.7 inch, bộ đôi camera 50MP sắc nét, pin “trâu” sử dụng cả ngày dài và dung lượng bộ nhớ lớn, Samsung Galaxy A05 là lựa chọn lý tưởng ở phân khúc giá rẻ trong năm 2023.', N'6.7 inch, PLS LCD, HD+, 720 x 1600 Pixels', N'50.0 MP + 2.0 MP', N'8.0 MP', N'Helio G85', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 3, 3, N'~/images/samsung-a05.jpg', N'Đánh giá chi tiết Samsung Galaxy A05 128GB', CAST(3090000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (9, 1, N'Samsung Galaxy S22 5G 128GB', N'Samsung Galaxy S22 là bước nhảy vọt trong công nghệ video trên thế hệ di động. Đồng thời, điện thoại cũng mở ra loạt cải tiến đột phá hàng đầu hiện nay từ màn hình vát phẳng “nịnh” mắt đến bộ xử lý 4nm tiên tiến đầu tiên trên thế hệ smartphone Samsung.', N'6.1 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2340 Pixels', N'50.0 MP + 12.0 MP + 10.0 MP', N'10.0 MP', N'Snapdragon 8 Gen 1', N'3700 mAh', N'2 - 2 Nano SIM or 1 eSIM, 1 Nano SIM', N'Android 12', N'Việt Nam / Trung Quốc', 2022, 2, 3, N'~/images/samsung-s22-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy S22 5G 128GB', CAST(11690000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (10, 1, N'Samsung Galaxy Z Flip4 5G 128GB', N'Nhỏ gọn và tinh tế, Samsung Galaxy Z Flip4 là chiếc smartphone sinh ra dành cho các tín đồ thời trang. Cơ chế gập duyên dáng, bộ màu sắc nhẹ nhàng và loạt chức năng quay chụp sẽ làm say lòng những người yêu cái đẹp.', N'6.7 inch, 19 inch, Dynamic AMOLED 2X, FHD+, 1080 x 2636 Pixels', N'12.0 MP + 12.0 MP', N'10.0 MP', N'	Snapdragon 8+ Gen 1', N'3700 mAh', N'2 - 1 eSIM, 1 Nano SIM', N'Android 12', N'Việt Nam', 2022, 2, 4, N'~/images/samsung-z flip4-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy Z Flip4 5G', CAST(13490000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (11, 1, N'Samsung Galaxy M34 5G 128GB', N'Sự trở lại mạnh mẽ và toàn năng của dòng Galaxy M sẽ giúp người dùng tận hưởng những công nghệ mới cùng mức giá hợp lý. Samsung Galaxy M34 5G sẽ chinh phục người dùng bởi màn hình 120Hz mượt mà, hiệu năng chuẩn gaming Exynos 1280 và viên pin “khủng” 6.000mAh. Đây xứng đáng là “ông vua tầm trung” mới trên thị trường.', N'	6.5 inch, Super AMOLED, FHD+, 1080 x 2400 Pixels', N'	50.0 MP + 8.0 MP + 2.0 MP', N'13.0 MP', N'	Exynos 1280', N'6000 mAh', N'2 - 2 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 4, 3, N'~/images/samsung-m34-5G.jpg', N'Đánh giá chi tiết Samsung Galaxy M34 5G 128GB', CAST(7190000 AS Decimal(18, 0)))
INSERT [dbo].[Product] ([ProductID], [CateID], [ProName], [ProDecription], [Screen], [Camera], [CameraSelfie], [Cpu], [Battery], [Sim], [OperatingSystem], [Origin], [LaunchTime], [PerformanceBatteryID], [ScreenSizeID], [ProImage], [ProDescriptionTitle], [Price]) VALUES (12, 1, N'Samsung Galaxy A05s 128GB', N'Samsung Galaxy A05s là chiếc smartphone giá rẻ hiệu năng cao, sở hữu con chip Snapdragon 680 đầu tiên phân khúc, giúp người dùng tận hưởng trải nghiệm mượt mà, ổn định. Chưa hết, điện thoại còn ghi điểm bởi viên pin 5.000mAh, 3 camera 50MP chất lượng và màn hình lớn nhất từ trước đến nay dòng Galaxy A.', N'6.7 inch, PLS LCD, FHD+, 1080 x 2400 Pixels', N'50.0 MP + 2.0 MP + 2.0 MP', N'	13.0 MP', N'Snapdragon 680', N'5000 mAh', N'2 - 2 Nano SIM', N'Android 13.0', N'Việt Nam / Trung Quốc', 2023, 3, 3, N'~/images/samsung-a05s.jpg', N'Đánh giá chi tiết Samsung Galaxy A05s 128GB', CAST(3990000 AS Decimal(18, 0)))
GO
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (1, 10)
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (2, 4)
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (2, 10)
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (3, 4)
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (6, 1)
INSERT [dbo].[ProductCamera] ([CameraFeatureID], [ProductID]) VALUES (7, 4)
GO
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (1, 1, 5, CAST(5190000 AS Decimal(18, 0)), CAST(5990000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a23-xanh.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (2, 1, 1, CAST(5190000 AS Decimal(18, 0)), CAST(5990000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a23-den.jpg', 50, 10)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (3, 2, 6, CAST(3690000 AS Decimal(18, 0)), CAST(4490000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a14-do.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (4, 2, 3, CAST(3690000 AS Decimal(18, 0)), CAST(4490000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a14-trang.jpg', 50, 15)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (5, 2, 1, CAST(3690000 AS Decimal(18, 0)), CAST(4490000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a14-den.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (6, 3, 5, CAST(30990000 AS Decimal(18, 0)), CAST(40990000 AS Decimal(18, 0)), 3, 4, N'~/images/samsung-z fold5-xanh.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (7, 3, 1, CAST(30990000 AS Decimal(18, 0)), CAST(40990000 AS Decimal(18, 0)), 3, 4, N'~/images/samsung-z fold5-den.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (8, 3, 8, CAST(30990000 AS Decimal(18, 0)), CAST(40990000 AS Decimal(18, 0)), 3, 4, N'~/images/samsung-z fold5-kem.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (9, 4, 8, CAST(18990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-s23-kem.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (10, 4, 4, CAST(18990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-s23-tim.jpg', 50, 10)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (11, 4, 5, CAST(18990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-s23-xanh.jpg', 50, 14)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (12, 4, 1, CAST(18990000 AS Decimal(18, 0)), CAST(24990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-s23-den.jpg', 50, 15)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (13, 5, 1, CAST(9590000 AS Decimal(18, 0)), CAST(11490000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-a54-den.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (14, 5, 2, CAST(9590000 AS Decimal(18, 0)), CAST(11490000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-a54-xanh la.jpg', 50, 25)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (15, 5, 3, CAST(9590000 AS Decimal(18, 0)), CAST(11490000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-a54-trang.jpg', 50, 27)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (16, 5, 4, CAST(9590000 AS Decimal(18, 0)), CAST(11490000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-a54-tim.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (17, 6, 2, CAST(7100000 AS Decimal(18, 0)), CAST(8490000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-a34-xanh la.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (18, 6, 1, CAST(7100000 AS Decimal(18, 0)), CAST(8490000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-s34-den.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (19, 6, 7, CAST(7100000 AS Decimal(18, 0)), CAST(8490000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-a34-bac.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (20, 7, 5, CAST(17790000 AS Decimal(18, 0)), CAST(25990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-z flip5-xanh.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (21, 7, 4, CAST(17790000 AS Decimal(18, 0)), CAST(25990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-z flip5-tim.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (22, 7, 8, CAST(17790000 AS Decimal(18, 0)), CAST(25990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-z flip5-kem.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (23, 7, 9, CAST(17790000 AS Decimal(18, 0)), CAST(25990000 AS Decimal(18, 0)), 2, 4, N'~/images/samsung-z flip5-xam.jpg', 50, 25)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (24, 8, 1, CAST(3090000 AS Decimal(18, 0)), CAST(3590000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05-den.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (25, 8, 2, CAST(3090000 AS Decimal(18, 0)), CAST(3590000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05-xanh la.jpg', 50, 24)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (26, 8, 7, CAST(3090000 AS Decimal(18, 0)), CAST(3590000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05-bac.jpg', 50, 12)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (27, 9, 4, CAST(11690000 AS Decimal(18, 0)), CAST(21990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-s22-tim.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (28, 9, 1, CAST(11690000 AS Decimal(18, 0)), CAST(21990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-s22-den.jpg', 50, 12)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (29, 9, 5, CAST(11690000 AS Decimal(18, 0)), CAST(21990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-s22-xanh.jpg', 50, 12)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (30, 10, 5, CAST(13490000 AS Decimal(18, 0)), CAST(23990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-z flip4-xanh.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (31, 10, 4, CAST(13490000 AS Decimal(18, 0)), CAST(23990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-z flip4-tim.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (32, 10, 10, CAST(13490000 AS Decimal(18, 0)), CAST(23990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-z flip4-vang.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (33, 11, 11, CAST(7190000 AS Decimal(18, 0)), CAST(7990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-m34-xanh den.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (34, 11, 5, CAST(7190000 AS Decimal(18, 0)), CAST(7990000 AS Decimal(18, 0)), 2, 3, N'~/images/samsung-m34-xanh.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (35, 12, 1, CAST(3990000 AS Decimal(18, 0)), CAST(4450000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05s-den.jpg', 50, 30)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (36, 12, 2, CAST(3990000 AS Decimal(18, 0)), CAST(4450000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05s-xanh la.jpg', 50, 20)
INSERT [dbo].[ProductDetail] ([ProductDetailID], [ProductID], [ColorID], [NewPrice], [OldPrice], [RamID], [StorageID], [ColorImage], [QuantityInventory], [QuantityPurchased]) VALUES (37, 12, 7, CAST(3990000 AS Decimal(18, 0)), CAST(4450000 AS Decimal(18, 0)), 1, 3, N'~/images/samsung-a05s-bac.jpg', 50, 13)
GO
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (1, 1, N'Theo sản phẩm', CAST(800000 AS Decimal(18, 0)), N'Giảm ngay 800,000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (2, 3, N'Theo sản phẩm', CAST(800000 AS Decimal(18, 0)), N'Giảm ngay 800,000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (3, 6, N'Theo sản phẩm', CAST(10000000 AS Decimal(18, 0)), N'Giảm ngay 10.000,000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (4, 9, N'Theo sản phẩm', CAST(6000000 AS Decimal(18, 0)), N'Giảm ngay 6.000.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (5, 13, N'Theo sản phẩm', CAST(1900000 AS Decimal(18, 0)), N'Giảm ngay 1.900.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (6, 17, N'Theo sản phẩm', CAST(1390000 AS Decimal(18, 0)), N'Giảm ngay 1.390.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (7, 20, N'Theo sản phẩm', CAST(8200000 AS Decimal(18, 0)), N'Giảm ngay 8.200.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (8, 24, N'Theo sản phẩm', CAST(500000 AS Decimal(18, 0)), N'Giảm ngay 500.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (9, 27, N'Theo sản phẩm', CAST(10300000 AS Decimal(18, 0)), N'Giảm ngay 10.300.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (10, 30, N'Theo sản phẩm', CAST(10500000 AS Decimal(18, 0)), N'Giảm ngay 10.500.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (11, 33, N'Theo sản phẩm', CAST(800000 AS Decimal(18, 0)), N'Giảm ngay 800.000đ', NULL, NULL)
INSERT [dbo].[ProductDiscounts] ([DiscountID], [ProductDetailID], [DiscountType], [DiscountValue], [DiscountDecription], [StartDate], [EndDate]) VALUES (12, 35, N'Theo sản phẩm', CAST(460000 AS Decimal(18, 0)), N'Giảm ngay 460.000đ', NULL, NULL)
GO
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (1, N'Mua Galaxy A23 5G tại FPT Shop, nhận combo quà liền tay', N'~/images/samsung-a23-new1.jpg', N'Galaxy A23', 1, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (2, N'Samsung ra mắt Galaxy A23 5G tại VN: Snapdragon 695, màn hình 120Hz, 4 camera 50MP, giá chỉ 6.69 triệu', N'~/images/samsung-a23-new2.jpg', N'Samsung Galaxy A 2022', 1, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (3, N'FPT Shop tặng ưu đãi thiết thực cho chủ sở hữu Galaxy A23', N'~/images/samsung-a23-new3.jpg', N'FPT Shop', 1, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (4, N'Samsung Galaxy A23 và Galaxy A13 ra mắt với hệ thống 4 camera sau, pin 5000 mAh', N'~/images/samsung-a23-new4.jpg', N'Galaxy A series', 1, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (5, N'Samsung Galaxy A23 5G lộ cấu hình: Màn hình 90Hz, chip Dimensity 700', N'~/images/samsung-a23-new5.jpg', N'5G', 1, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (6, N'Tìm mua điện thoại pin trâu giá rẻ dưới 5 triệu tốt nhất 2023? Đừng bỏ qua 5 gợi ý này', N'~/images/samsung-a23-new6.jpg', N'TopList', 1, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (7, N'Đâu là những mẫu điện thoại Samsung pin trâu dưới 10 triệu đáng tiền nhất hiện nay?', N'~/images/samsung-a23-new7.jpg', N'TopList', 1, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (8, N'Top điện thoại giá rẻ tốt nhất 2023 của Samsung', N'~/images/samsung-a23-new8.jpg', N'TopList', 1, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (9, N'Mua điện thoại Samsung pin trâu dưới 5 triệu? Chọn ngay 5 sản phẩm này, vừa đẹp vừa mạnh', N'~/images/samsung-a23-new9.jpg', N'TopList', 1, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (10, N'FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-a14-new1.jpg', N'Tin khuyen mai', 2, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (11, N'Samsung Galaxy A14 4G ra mắt: Thiết kế trẻ trung, chip Helio G80, 3 camera 50MP', N'~/images/samsung-a14-new2.jpg', N'Galaxy A', 2, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (12, N'Samsung Galaxy A14 4G xuất hiện trên Google Play Console với chip Helio G80', N'~/images/samsung-a14-new3.jpg', N'Tin moi', 2, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (13, N'Samsung Galaxy A14 4G sẽ sớm ra mắt với chip Helio G80, màn hình 60Hz', N'~/images/samsung-a14-new4.jpg', N'Tin moi', 2, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (14, N'Samsung Galaxy A14 4G được phát hiện trên chứng nhận BIS, ngày ra mắt sắp đến', N'~/images/samsung-a14-new5.jpg', N'Tin moi', 2, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (15, N'Mua điện thoại Samsung pin trâu dưới 5 triệu? Chọn ngay 5 sản phẩm này, vừa đẹp vừa mạnh', N'~/images/samsung-a14-new6.jpg', N'TopList', 2, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (16, N'Top 5 điện thoại Samsung dưới 5 triệu đáng mua nhất 2023, nhiều tính năng hấp dẫn, phù hợp với đa số người dùng', N'~/images/samsung-a14-new7.jpg', N'TopList', 2, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (17, N'Top 5 điện thoại pin trâu chơi game mượt giá rẻ năm 2023 không nên bỏ lỡ', N'~/images/samsung-a14-new8.jpg', N'TopList', 2, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (18, N'3 smartphone Samsung giá 5 triệu cho học sinh, sinh viên đáng mua nhất hiện nay', N'~/images/samsung-a14-new9.jpg', N'TopList', 2, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (19, N'Samsung Galaxy Z Fold5 Thom Browne Edition sẽ ra mắt vào tuần tới', N'~/images/samsung-z fold5-new1.jpg', N'Samsung', 3, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (20, N'Samsung Galaxy Z Fold5 và Galaxy Z Flip5 quá "hot", phá kỷ lục đặt hàng trước tại Hàn Quốc', N'~/images/samsung-z fold5-new2.jpg', N'Samsung', 3, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (21, N'Galaxy Z Fold5 là smartphone màn hình gập mỏng nhất của Samsung', N'~/images/samsung-z fold5-new3.jpg', N'Samsung', 3, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (22, N'Galaxy Z Fold5 sẽ nhận được mấy bản cập nhật Android lớn từ Samsung?Galaxy Z Fold5 sẽ nhận được mấy bản cập nhật Android lớn từ Samsung?', N'~/images/samsung-z fold5-new4.jpg', N'Samsung', 3, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (23, N'Galaxy Z Fold5 là smartphone thứ ba có camera selfie ẩn dưới màn hình', N'~/images/samsung-z fold5-new5.jpg', N'Samsung', 3, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (24, N'Khám phá TOP 5 điện thoại mỏng nhất của Samsung', N'~/images/samsung-z fold5-new6.jpg', N'TopList', 3, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (25, N'5 điều không nên bỏ lỡ ở Samsung Galaxy Z Series 2023: Thiết kế trendy, Flex Window và còn gì nữa?', N'~/images/samsung-z fold5-new7.jpg', N'TopList', 3, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (26, N'Một ngày rong ruổi cùng Galaxy Z Series 2023: Ngạc nhiên về độ bền của pin, màn hình và khung vỏ', N'~/images/samsung-z fold5-new8.jpg', N'TopList', 3, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (27, N'Với Samsung Galaxy Z Fold5, mọi tác vụ văn phòng sẽ gói gọn trong một chiếc điện thoại', N'~/images/samsung-z fold5-new9.jpg', N'TopList', 3, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (28, N'Samsung tung bản cập nhật quan trọng cho Galaxy S23 series với những cải tiến về camera', N'~/images/samsung-s23-new1.jpg', N'Samsung', 4, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (29, N'Samsung tung ra bản cập nhật phần mềm đầu tiên cho Galaxy S23 series', N'~/images/samsung-s23-new2.jpg', N'Tin moi', 4, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (30, N'Sắm ngay Galaxy S23 Series, FPT Shop giảm đến 10 triệu', N'~/images/samsung-s23-new3.jpg', N'Samsung-s23-series', 4, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (31, N'Astro Hyperlapse sẽ là tính năng độc quyền của dòng Samsung Galaxy S23', N'~/images/samsung-s23-new4.jpg', N'Tin moi', 4, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (32, N'
Samsung Galaxy S23 series không có kết nối vệ tinh và đây là lý do', N'~/images/samsung-s23-new5.jpg', N'Samsung-s23-series', 4, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (33, N'So sánh Galaxy Z Flip5 và Galaxy S23: Flagship Samsung nào đáng mua hơn?', N'~/images/samsung-s23-new6.jpg', N'Samsung', 4, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (34, N'So sánh iPhone 15 và Samsung Galaxy S23 dựa trên tin đồn: Chọn siêu phẩm nào đây?', N'~/images/samsung-s23-new7.jpg', N'Samsung', 4, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (35, N'So sánh Samsung Galaxy Z Flip5 và Galaxy S23 dựa trên tin đồn: Nên mua máy nào?', N'~/images/samsung-s23-new8.jpg', N'Samsung', 4, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (36, N'2023 rồi, liệu Galaxy S22 có còn đáng mua khi Galaxy S23 đang quá hot?', N'~/images/samsung-s23-new9.jpg', N'Samsung', 4, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (37, N'FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-a54-new1.jpg', N'Tin khuyen mai', 5, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (38, N'FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-a54-new2.jpg', N'Tin khuyen mai', 5, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (39, N'Video mở hộp Samsung Galaxy A34 5G và Galaxy A54 5G bất ngờ xuất hiện trước ngày ra mắt', N'~/images/samsung-a54-new3.jpg', N'Samsung', 5, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (40, N'Mời bạn tải về hình nền Samsung Galaxy A34 5G và Galaxy A54 5G trước khi ra mắt', N'~/images/samsung-a54-new4.jpg', N'Galaxy A', 5, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (41, N'Hé lộ giá bán Samsung Galaxy A54 5G và Galaxy A34 5G trước khi ra mắt', N'~/images/samsung-a54-new5.jpg', N'Galaxy A', 5, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (42, N'Mua điện thoại pin trâu dưới 10 triệu nhất định không nên bỏ qua 5 sản phẩm này', N'~/images/samsung-a54-new6.jpg', N'TopList', 5, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (43, N'Đâu là những mẫu điện thoại Samsung pin trâu dưới 10 triệu đáng tiền nhất hiện nay?', N'~/images/samsung-a54-new7.jpg', N'TopList', 5, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (44, N'Bật mí TOP 5 điện thoại Samsung pin trâu chơi game mượt hàng đầu hiện nay', N'~/images/samsung-a54-new8.jpg', N'TopList', 5, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (45, N'Trong tay 9 triệu nên mua điện thoại gì năm 2023? Gợi ý 5 lựa chọn đáng giá nhất', N'~/images/samsung-a54-new9.jpg', N'TopList', 5, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (46, N'FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-a34-new1.jpg', N'Tin khuyen mai', 6, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (47, N'
FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-a34-new2.jpg', N'Tin khuyen mai', 6, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (48, N'Bạn có voucher Cảm ơn 18 triệu khách hàng? Đây là những sản phẩm bạn nên mua!', N'~/images/samsung-a34-new3.jpg', N'Tin khuyen mai', 6, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (49, N'Video mở hộp Samsung Galaxy A34 5G và Galaxy A54 5G bất ngờ xuất hiện trước ngày ra mắt', N'~/images/samsung-a34-new4.jpg', N'Samsung', 6, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (50, N'Thiết kế và cấu hình Samsung Galaxy A34 5G được xác nhận trong ảnh quảng cáo', N'~/images/samsung-a34-new5.jpg', N'Tin moi', 6, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (51, N'TOP 5 điện thoại chơi game dưới 8 triệu cực hot 2023: Cấu hình mạnh, pin trâu', N'~/images/samsung-a34-new6.jpg', N'TopList', 6, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (52, N'Đâu là những mẫu điện thoại Samsung pin trâu dưới 10 triệu đáng tiền nhất hiện nay?', N'~/images/samsung-a34-new7.jpg', N'TopList', 6, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (53, N'Top điện thoại giá rẻ tốt nhất 2023 của Samsung', N'~/images/samsung-a34-new8.jpg', N'TopList', 6, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (54, N'Bật mí TOP 5 điện thoại Samsung pin trâu chơi game mượt hàng đầu hiện nay', N'~/images/samsung-a34-new9.jpg', N'TopList', 6, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (55, N'Sẽ ra sao nếu tra tấn Samsung Galaxy Z Flip5 bằng dao rọc giấy, hơ lửa và bẻ cong?', N'~/images/samsung-z flip5-new1.jpg', N'smartphone man hinh gap', 7, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (56, N'
Cực HOT: Sở hữu Samsung Galaxy Z Flip5 chỉ từ 17.49 triệu đồng, giá quá hấp dẫn, mời bạn nhanh tay chốt ngay!', N'~/images/samsung-z flip5-new2.jpg', N'Samsung Z series', 7, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (57, N'Video teardown cho thấy Samsung Galaxy Z Flip5 dễ sửa chữa hơn thế hệ trước', N'~/images/samsung-z flip5-new3.jpg', N'Samsung', 7, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (58, N'Samsung Galaxy Z Fold5 và Galaxy Z Flip5 quá "hot", phá kỷ lục đặt hàng trước tại Hàn Quốc', N'~/images/samsung-z flip5-new4.jpg', N'Samsung', 7, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (59, N'Samsung Galaxy Z Flip5 ra mắt: Màn hình ngoài lớn, bản lề không kẽ hở, giá từ 25.99 triệu đồng', N'~/images/samsung-z flip5-new5.jpg', N'Samsung', 7, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (60, N'Khám phá TOP 5 điện thoại mỏng nhất của Samsung', N'~/images/samsung-z flip5-new6.jpg', N'TopList', 7, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (61, N'5 điều không nên bỏ lỡ ở Samsung Galaxy Z Series 2023: Thiết kế trendy, Flex Window và còn gì nữa?', N'~/images/samsung-z flip5-new7.jpg', N'TopList', 7, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (62, N'Một ngày rong ruổi cùng Galaxy Z Series 2023: Ngạc nhiên về độ bền của pin, màn hình và khung vỏ', N'~/images/samsung-z flip5-new8.jpg', N'TopList', 7, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (63, N'Bàn về trải nghiệm Samsung Galaxy Z Flip5 qua 3 từ: Linh hoạt, đa năng và bền bỉ', N'~/images/samsung-z flip5-new9.jpg', N'TopList', 7, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (64, N'FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-a05-new1.jpg', N'Tin khuyen mai', 8, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (65, N'FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-a05-new2.jpg', N'Tin khuyen mai', 8, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (66, N'Đổi điện thoại 2G cũ lấy Galaxy A05|A05s mới giảm ngay 300.000đ duy nhất tại FPT Shop', N'~/images/samsung-a05-new3.jpg', N'Tin khuyen mai', 8, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (67, N'Samsung Galaxy A05 và Galaxy A05s ra mắt: Thiết kế và cấu hình được cải tiến', N'~/images/samsung-a05-new4.jpg', N'Samsung', 8, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (68, N'Đây là ảnh render và cấu hình chi tiết của Samsung Galaxy A05, A05s sắp ra mắt', N'~/images/samsung-a05-new5.jpg', N'Tin moi', 8, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (69, N'Samsung Galaxy A05|A05s - món quà cực tâm lý mà cánh mày râu dành tặng chị em phụ nữ nhân dịp 20/10', N'~/images/samsung-a05-new6.jpg', N'TopList', 8, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (70, N'Samsung Galaxy A05 và Galaxy A05s: “Chiến hữu” ngon – bổ - rẻ cho các tài xế công nghệ', N'~/images/samsung-a05-new7.jpg', N'TopList', 8, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (71, N'“Lên đời” điện thoại cho mẹ nhân dịp 20/10, chọn ngay Samsung Galaxy A05/A05s với ưu đãi hấp dẫn', N'~/images/samsung-a05-new8.jpg', N'TopList', 8, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (72, N'Trên tay Samsung Galaxy A05: Thiết kế hiện đại, hiệu năng ổn, pin khỏe, giá phải chăng', N'~/images/samsung-a05-new9.jpg', N'TopList', 8, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (73, N'FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-s22-new1.jpg', N'Tin khuyen mai', 9, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (74, N'FPT Shop giảm sốc Samsung đến 12 triệu duy nhất trên Livestream Tiktok FPT Shop Official', N'~/images/samsung-s22-new2.jpg', N'Tin khuyen mai', 9, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (75, N'FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-s22-new3.jpg', N'Tin khuyen mai', 9, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (76, N'
Điện thoại Samsung giảm giá tới 45% tại gian hàng FPT Shop trong sự kiện TikTok for Business SMB Vietnam Summit 2023', N'~/images/samsung-s22-new4.jpg', N'Tin khuyen mai', 9, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (77, N'Samsung phát hành bản cập nhật OneUI 5.1 cho Galaxy S22 series', N'~/images/samsung-s22-new5.jpg', N'Tin khuyen mai', 9, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (78, N'Chênh nhau gần 3 triệu đồng, nên mua Samsung Galaxy S22 hay Galaxy S23 FE?', N'~/images/samsung-s22-new6.jpg', N'TopList', 9, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (79, N'Khám phá TOP 5 điện thoại Samsung sạc nhanh công suất cao hàng đầu hiện nay', N'~/images/samsung-s22-new7.jpg', N'TopList', 9, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (80, N'Góc tư vấn: Tầm 12 triệu nên mua điện thoại nào 2023?', N'~/images/samsung-s22-new8.jpg', N'TopList', 9, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (81, N'Top 5 điện thoại màn hình lớn để sinh viên ghi chú và học tập hiệu quả', N'~/images/samsung-s22-new9.jpg', N'TopList', 9, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (82, N'
FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-z flip4-new1.jpg', N'Tin khuyen mai', 10, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (83, N'FPT Shop giảm sốc Samsung đến 12 triệu duy nhất trên Livestream Tiktok FPT Shop Official', N'~/images/samsung-z flip4-new2.jpg', N'Tin khuyen mai', 10, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (84, N'Tháng 7 – Giá hết sảy, săn siêu phẩm Samsung Galaxy Z Flip4 giá sốc chỉ 7K', N'~/images/samsung-z flip4-new3.jpg', N'Tin khuyen mai', 10, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (85, N'Bạn có voucher Cảm ơn 18 triệu khách hàng? Đây là những sản phẩm bạn nên mua!', N'~/images/samsung-z flip4-new4.jpg', N'Tin khuyen mai', 10, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (86, N'Samsung ra mắt phiên bản màu mới Galaxy Z Fold4 Đỏ Burgundy và Galaxy Z Flip4 Xanh Navy', N'~/images/samsung-z flip4-new5.jpg', N'Tin khuyen mai', 10, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (87, N'Khám phá TOP 5 điện thoại Samsung sạc nhanh công suất cao hàng đầu hiện nay', N'~/images/samsung-z flip4-new6.jpg', N'TopList', 10, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (88, N'So sánh iPhone 14 và Samsung Galaxy Z Flip4: Đều có giá hấp dẫn hiện tại, chọn điện thoại nào đây?', N'~/images/samsung-z flip4-new7.jpg', N'TopList', 10, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (89, N'Khám phá TOP 5 điện thoại mỏng nhất của Samsung', N'~/images/samsung-z flip4-new8.jpg', N'TopList', 10, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (90, N'Samsung Galaxy Z Flip4 cực kì đáng mua hơn Galaxy Z Flip5 với giá giảm "sốc" đến 10 triệu đồng', N'~/images/samsung-z flip4-new9.jpg', N'TopList', 10, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (91, N'FPT Shop giảm sốc Samsung đến 12 triệu duy nhất trên Livestream Tiktok FPT Shop Official', N'~/images/samsung-m34-new1.jpg', N'Tin khuyen mai', 11, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (92, N'Samsung Galaxy M34 5G ra mắt: Pin 6000 mAh, chip Exynos 1280, giá từ 5.14 triệu đồng', N'~/images/samsung-m34-new2.jpg', N'Tin moi', 11, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (93, N'
Samsung Galaxy M34 5G được xác nhận dùng chip Exynos 1280 trên Geekbench', N'~/images/samsung-m34-new3.jpg', N'Tin moi', 11, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (94, N'Samsung Galaxy M34 5G sẽ ra mắt vào ngày 7 tháng 7', N'~/images/samsung-m34-new4.jpg', N'Samsung', 11, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (95, N'Samsung Galaxy M34 5G lộ thông số kỹ thuật chi tiết', N'~/images/samsung-m34-new5.jpg', N'Samsung', 11, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (96, N'Trên tay và đánh giá nhanh Samsung Galaxy M34 5G: Thiết kế hiện đại, pin khủng 6.000mAh, camera chất, giá 7.69', N'~/images/samsung-m34-new6.jpg', N'Samsung', 11, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (97, N'Có nên mua Samsung Galaxy M34 5G? Đây là 5 điểm khiến bạn "say yes" với chiếc điện thoại tầm trung mạnh mẽ', N'~/images/samsung-m34-new7.jpg', N'Samsung', 11, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (98, N'Lương về “lên đời” ngay điện thoại cũ của ba mẹ bằng Samsung Galaxy M34 5G mạnh mượt, bền bỉ', N'~/images/samsung-m34-new8.jpg', N'Samsung', 11, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (99, N'“Trèo đèo lội suối” cùng Samsung Galaxy M34 5G – bạn đồng hành bền bỉ cho phượt thủ trên mọi nẻo đường', N'~/images/samsung-m34-new9.jpg', N'Galaxy M series', 11, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (100, N'FPT Shop mang đến “Samsung Lễ Lớn - Siêu Sale Sớm” giảm sốc đến 11 triệu đồng', N'~/images/samsung-a05s-new1.jpg', N'Tin khuyen mai', 12, N'Tin tức')
GO
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (101, N'
FPT Shop giảm sốc Samsung đến 12 triệu duy nhất trên Livestream Tiktok FPT Shop Official', N'~/images/samsung-a05s-new2.jpg', N'Tin khuyen mai', 12, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (102, N'FPT Shop triển khai chương trình Samsung Finance+ - Giải pháp trả góp mới', N'~/images/samsung-a05s-new3.jpg', N'Tin khuyen mai', 12, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (103, N'Đổi điện thoại 2G cũ lấy Galaxy A05|A05s mới giảm ngay 300.000đ duy nhất tại FPT Shop', N'~/images/samsung-a05s-new4.jpg', N'Tin khuyen mai', 12, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (104, N'Samsung Galaxy A05 và Galaxy A05s ra mắt: Thiết kế và cấu hình được cải tiến', N'~/images/samsung-a05s-new5.jpg', N'Tin khuyen mai', 12, N'Tin tức')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (105, N'Samsung Galaxy A05|A05s - món quà cực tâm lý mà cánh mày râu dành tặng chị em phụ nữ nhân dịp 20/10', N'~/images/samsung-a05s-new6.jpg', N'Samsung', 12, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (106, N'Samsung Galaxy A05 và Galaxy A05s: “Chiến hữu” ngon – bổ - rẻ cho các tài xế công nghệ', N'~/images/samsung-a05s-new7.jpg', N'Grab', 12, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (107, N'“Lên đời” điện thoại cho mẹ nhân dịp 20/10, chọn ngay Samsung Galaxy A05/A05s với ưu đãi hấp dẫn', N'~/images/samsung-a05s-new8.jpg', N'Samsung', 12, N'Hướng dẫn tư vấn')
INSERT [dbo].[ProductNews] ([ProductNewsID], [NewsTitle], [NewsImage], [NewsTags], [ProductID], [TypeNews]) VALUES (108, N'Trên tay và đánh giá nhanh Samsung Galaxy A05s: Smartphone giá chưa tới 4 triệu nhưng có chip “rồng”, 3 camera', N'~/images/samsung-a05s-new9.jpg', N'Samsung', 12, N'Hướng dẫn tư vấn')
GO
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (1, N'Samsung Galaxy A23 5G có cảm biến vân tay không?', N'Samsung Galaxy A23 5G có cảm biến vân tay ngay nút nguồn, giúp mở khóa nhanh chóng, chỉ cần chạm nút nguồn, máy đã sẵn sàng để bạn trải nghiệm.', 1)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (2, N'Pin Samsung Galaxy A23 5G sử dụng trong bao lâu?', N'Samsung Galaxy A23 5G có viên pin lớn 5.000mAh, cho phép bạn sử dụng cả ngày dài. Nếu chỉ dùng cơ bản, có thể kéo dài đến 2 ngày.', 1)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (3, N'
Samsung Galaxy A23 5G chơi game được không?', N'Samsung Galaxy A23 5G sở hữu con chip mạnh Snapdragon 695, đi kèm 4GB RAM, màn 120Hz cùng chế độ Game Booster mang tới khả năng chơi game tốt cho người dùng.', 1)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (4, N'Camera Samsung Galaxy A23 5G có chống rung không?', N'Camera Samsung Galaxy A23 5G có chống rung OIS, mang tới các tấm ảnh/video mượt mà và sắc nét trong nhiều điều kiện, ngay cả khi bạn hoặc chủ thể đang di chuyển.', 1)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (5, N'Chất lượng màn hình Samsung Galaxy A23 5G như thế nào?', N'Samsung Galaxy A23 5G có màn hình tràn viền Infinity-V, kích thước lớn 6.6 inch, FHD+ cho chất lượng sắc nét và thao tác thoải mái. Đi kèm là tần số quét vượt trội nhất phân khúc 120hz, cho phản hồi siêu nhanh.', 1)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (6, N'
Màn hình Samsung Galaxy A14 4G giải trí tốt không?', N'Samsung Galaxy A14 4G có kích thước lớn 6.6 inch, độ phân giải FHD+ cho chi tiết hiển thị rõ ràng, chân thực và sống động, đáp ứng tốt nhu cầu giải trí từ lướt mạng xã hội, xem phim đến chơi game.', 2)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (7, N'Samsung Galaxy A14 4G có mở khóa vân tay không?', N'Samsung Galaxy A14 4G tích hợp mở khóa vân tay ngay nút nguồn, giúp bạn mở khóa nhanh chóng, tiện lợi và an toàn.', 2)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (8, N'Camera Samsung Galaxy A14 4G có chất lượng như thế nào?', N'Samsung Galaxy A14 4G sở hữu hệ thống camera 50MP+ 5MP + 2MP, mang tới khả năng chụp ảnh ấn tượng cho người dùng. Trong đó, cảm biến chính lên tới 50MP cho chất ảnh sắc nét; camera góc rộng 5MP lấy được nhiều chi tiết hơn.', 2)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (9, N'
Samsung Galaxy A14 4G có mở rộng RAM được không?', N'Samsung Galaxy A14 4G có tích hợp công nghệ mở rộng RAM Plus, theo đó bản 4GB sẽ được mở rộng thêm 4GB, để bạn đa nhiệm ổn định và mượt mà hơn.', 2)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (10, N'Trong hộp Samsung Galaxy A14 4G có gì?', N'Trong hộp Samsung Galaxy A14 4G có cáp sạc USB Type-C, que chọc SIM và sách hướng dẫn.', 2)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (11, N'Samsung Galaxy Z Fold5 có hỗ trợ bút S-Pen không?', N'Samsung Galaxy Z Fold5 có hỗ trợ bút S-Pen, tuy nhiên bút S-Pen sẽ không kèm theo máy, mà người dùng cần mua riêng.', 3)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (12, N'Samsung Galaxy Z Fold5 sử dụng kính cường lực nào?', N'Samsung Galaxy Z Fold5 sử dụng kính cường lực Gorilla Glass Victus 2 vượt trội nhất trên thị trường, giúp bảo vệ máy tối ưu.', 3)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (13, N'Khả năng đa nhiệm của Samsung Galaxy Z Fold5 tốt không?', N'Samsung Galaxy Z Fold5 đa nhiệm rất tốt với màn hình siêu lớn khi mở ra, kích thước đạt được 7.6 inch. Hơn nữa, điện thoại còn có sự tối ưu tuyệt vời từ phần mềm, giúp bạn nâng cao hiệu suất công việc tốt.', 3)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (14, N'
Thiết kế Samsung Galaxy Z Fold5 có gì cải tiến?', N'Samsung Galaxy Z Fold5 là chiếc Galaxy Z Fold mỏng gọn nhất từ trước đến nay. Điện thoại sử dụng bản lề mới cho tổng thể mỏng và nhẹ hơn so với tiền nhiệm (cụ thể là mỏng hơn 2.4mm và nhẹ hơn 9g).', 3)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (15, N'Samsung Galaxy Z Fold5 có kháng nước không?', N'Samsung Galaxy Z Fold5 có tích hợp chuẩn kháng nước IPX8 vượt trội, giúp thiết bị kháng nước trong 30 phút ở độ sâu 1.5 mét, giúp bạn tự tin sử dụng thiết bị ở nhiều môi trường khác nhau.', 3)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (16, N'Hiệu năng Samsung Galaxy S23 như thế nào?', N'Samsung Galaxy S23 sở hữu con chip Snapdragon mạnh nhất hiện nay được chế tác dành riêng cho điện thoại dòng Galaxy S 2023. Đây là bộ vi xử lý Snapdragon 8 Gen 2, có tốc độ xung nhịp CPU và GPU cao hơn bản tiêu chuẩn.', 4)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (17, N'Camera Samsung Galaxy S23 có chống rung không?', N'Camera Samsung Galaxy S23 có chống rung quang học OIS mang tới những tấm ảnh/video rõ ràng và sắc nét. Đây sẽ là trợ lý đắc lực để bạn sở hữu những video chất lượng, dễ dàng sáng tạo mọi nội dung video ngay trên điện thoại.', 4)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (18, N'Camera Samsung Galaxy S23 chụp đêm tốt không?', N'Camera Samsung Galaxy S23 là một trong camera di động tốt nhất hiện nay. Đồng thời, điện thoại còn được mệnh danh là “Camera mắt thần bóng đêm”, chính vì thế khả năng chụp ảnh đêm của Galaxy S23 được đánh giá rất cao.', 4)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (19, N'Samsung Galaxy S23 tích hợp kính cường lực nào?', N'Samsung Galaxy S23 sử dụng kính cường lực thế hệ mới nhất nhà Gorilla là Glass Victus 2 cho cả mặt trước và mặt sau, bảo vệ máy tối ưu. Đồng thời, kính này còn thân thiện với môi trường khi sử dụng 22% chất liệu thủy tinh tái chế.', 4)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (20, N'Samsung Galaxy S23 có chống nước không?', N'Samsung Galaxy S23 hỗ trợ chuẩn chống nước/bụi IP68, mang tới khả năng kháng nước ở độ sâu 1.5m trong vòng 30 phút, giúp người dùng an tâm hơn trong quá trình sử dụng điện thoại.', 4)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (21, N'Samsung Galaxy A54 5G có kháng nước không?', N'Samsung Galaxy A54 5G có tích hợp chuẩn kháng bụi/nước IP67, cho phép máy có thể ngâm trong độ sâu 1 mét trong vòng 30 phút, giúp bạn thoải sử dụng trong nhiều điều kiện môi trường khác nhau.', 5)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (22, N'Chất lượng màn hình Samsung Galaxy A54 5G như thế nào?', N'Samsung Galaxy A54 5G sở hữu loạt công nghệ màn hình cao cấp như: tấm nền Super AMOLED, độ phân giải FHD+ và độ sáng lên tới 1.000 nit, đáp ứng tốt nhu cầu giải trí của người dùng với chi tiết sắc nét, rõ ràng và chân thực.', 5)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (23, N'Camera Samsung Galaxy A54 5G quay video tốt không?', N'Camera Samsung Galaxy A54 5G 5G quay video rất tốt khi có camera chính đạt độ phân giải 50MP và chống rung quang học OIS. Đây là sự kết hợp hoàn hảo để có những thước phim mượt mà và chuyên nghiệp.', 5)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (24, N'Camera Samsung Galaxy A54 5G chụp đêm tốt không?', N'Samsung Galaxy A54 5G hiện là một trong những mẫu điện thoại chụp đêm tốt nhất phân khúc. Điện thoại có nâng cấp ấn tượng về tính năng chụp đêm Nightography, cho khả năng thu sáng và chi tiết nhiều nhất có thể.', 5)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (25, N'
Hiệu năng Samsung Galaxy A54 5G như thế nào?', N'Samsung Galaxy A54 5G có hiệu năng mạnh mẽ khi được trang bị bộ vi xử lý Exynos 1380, đi kèm 8GB RAM, mang tới khả năng xử lý vượt trội, đảm bảo mọi tác vụ diễn ra mượt mà. Bạn có thể tự tin “chiến” nhiều game mà không lo giật lag.', 5)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (26, N'Thời lượng pin của Samsung Galaxy A34 5G như thế nào?', N'Samsung Galaxy A34 5G có viên pin 5.000mAh, mang tới thời lượng pin sử dụng thoải mái cho người dùng trong cả ngày dài mà không cần sạc thêm. Nếu bạn dùng ít, thì thời lượng sử dụng có thể lên tới 2 ngày.', 6)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (27, N'Camera Samsung Galaxy A34 5G chụp hình tốt không?', N'Samsung Galaxy A34 5G sở hữu hệ thống 3 camera sau 48MP (chính) + 8MP (góc rộng) + 5MP (chụp cận) và 1 camera trước 13MP. Trong đó nổi bật là cảm biến chính độ phân giải 48MP, tích hợp chống rung quang học OIS, cho phép cố định khung hình vững chắc.', 6)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (28, N'
Tần số quét của Samsung Galaxy A34 5G là bao nhiêu?', N'Samsung Galaxy A34 5G có tần số quét 120Hz, mang tới tốc độ phản hồi nhanh chóng, siêu mượt cho các thao tác chuyển cảnh, lướt và vuốt. Đây cũng được xem là một trong những cải tiến ấn tượng so với bản Galaxy A33 5G cũ chỉ 90Hz.', 6)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (29, N'Chơi game trên Samsung Galaxy A34 5G tốt không?', N'Samsung Galaxy A34 5G sở hữu bộ vi xử lý Dimensity 1080, sản xuất trên tiến trình 6nm, 8 nhân với nhân Cortex-A78 xung nhịp đến 2.6GHz, mang tới hiệu năng ấn tượng, đáp ứng tốt các tựa game phổ biến hiện nay như Liên Quân Mobile, PUBG Mobile.', 6)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (30, N'
Samsung Galaxy A34 5G có kháng nước không?', N'Samsung Galaxy A34 5G có tích hợp chuẩn kháng bụi/nước IP67 có thể ngâm nước ở độ sâu 1 mét trong 30 phút, giúp bạn yên tâm sử dụng trong nhiều điều kiện môi trường.', 6)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (31, N'Hiệu năng Samsung Galaxy Z Flip5 như thế nào?', N'Hiệu năng Samsung Galaxy Z Flip5 mạnh mẽ với con chip đầu bảng Snapdragon 8 Gen 2 for Galaxy. Con chip này sản xuất trên tiến trình mới 4nm, với nhân Cortex-A715 xung nhịp đến 3.36GHz, cho hiệu năng CPU tăng đến 17%, đảm bảo xử lý mượt mọi tác vụ.', 7)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (32, N'
Dung lượng pin của Samsung Galaxy Z Flip5 sử dụng trong bao lâu?', N'Samsung Galaxy Z Flip5 có viên pin 3.700mAh, kết hợp với sự tối ưu hóa tốt của hiệu năng Snapdragon 8 Gen 2 for Galaxy mang tới thời lượng sử dụng tốt hơn để bạn sử dụng cả ngày dài.', 7)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (33, N'Màn hình phụ Samsung Galaxy Z Flip5 có thể làm được gì?', N'Với màn hình lớn nâng cấp lên tới 3.4 inch, Samsung Galaxy Z Flip5 có không gian thao tác thoải mái hơn. Đồng thời, bạn cũng sẽ tùy thích tùy chỉnh nhiều chế độ widget tiện lợi (có hơn 12 widget); xem thông báo, tin nhắn, cuộc gọi trực quan;', 7)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (34, N'Thiết kế Samsung Galaxy Z Flip5 có gì cải tiến?', N'Thiết kế Samsung Galaxy Z Flip5 có rất nhiều điểm cải tiến sáng giá, có thể kể đến như màn hình ngoài lớn đến 3.4 inch (bản cũ chỉ 1.9 inch), bản lề mới không khoảng hở khi gập lại, nếp gấp giảm 40% so với tiền nhiệm, tổng thể mỏng gọn hơn,…', 7)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (35, N'
Samsung Galaxy Z Flip5 có kháng nước không?', N'Samsung Galaxy Z Flip5 sở hữu chuẩn kháng nước hàng đầu cho smartphone gập là IPX8. Theo đó, chuẩn này có thể bảo vệ máy ở độ sâu 1.5 mét trong 30 phút, giúp bạn yên tâm hơn trong quá trình trải nghiệm máy.', 7)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (36, N'Bộ nhớ Samsung Galaxy A05 lưu trữ thoải mái không?', N'Samsung Galaxy A05 là chiếc smartphone có dung lượng lưu trữ lớn trong phân khúc đến 128GB. Chính vì vậy, bạn có thể thỏa thích lưu tất cả thông tin, ứng dụng, ảnh và video trên Galaxy A05.', 8)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (37, N'Hiệu năng Samsung Galaxy A05 ra sao?', N'Samsung Galaxy A05 sử dụng con chip Helio G85, có hiệu năng ổn định, đáp ứng tốt các tác vụ cơ bản cho người dùng.', 8)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (38, N'
Camera Samsung Galaxy A05 có chất lượng như thế nào?', N'Samsung Galaxy A05 có hệ thống camera kép 50MP chất lượng với camera chính 50MP sắc nét, đảm bảo ảnh rõ nét trong nhiều điều kiện sáng. Camera phụ thứ hai là camera xóa phông 2MP, giúp bạn ghi lại tấm ảnh chân dung ấn tượng.', 8)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (39, N'
Pin Samsung Galaxy A05 sử dụng trong bao lâu?', N'Samsung Galaxy A05 sở hữu viên pin “trâu” đến 5.000mAh, giúp bạn sử dụng thoải mái trong cả ngày dài mà không cần cắm sạc thêm.', 8)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (40, N'
Màn hình Samsung Galaxy A05 có ưu điểm gì?', N'Ưu điểm Samsung Galaxy A05 đó là kích thước lớn nhất dòng Galaxy A, đến 6.7 inch, giúp bạn thao tác thoải mái và chi tiết hiển thị rõ ràng.', 8)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (41, N'Chất liệu hoàn thiện của Samsung Galaxy S22 là gì?', N'Samsung Galaxy S22 được hoàn thiện từ Armor Aluminium cho khung máy. Đây là chất liệu hợp kim nhôm cứng cáp nhất trên thị trường, có độ bền rất tuyệt vời. Đồng thời, mặt trước và mặt sau còn tích hợp kính cường lực thế hệ tiên tiến nhất', 9)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (42, N'Màn hình Samsung Galaxy S22 cho chất lượng như thế nào?', N'Samsung Galaxy S22 có màn hình 6.1 inch, FHD+ trên tấm nền Dynamic AMOLED 2X cho chất lượng rõ ràng, màu sắc sống động và chân thực. Nhờ vậy, bạn có thể tận hưởng không gian giải trí cực tốt trên Samsung Galaxy S22.', 9)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (43, N'Hiệu năng Snapdragon 8 Gen 1 có sức mạnh ra sao?', N'Snapdragon 8 Gen 1 hiện là vi xử lý đầu bảng trong năm 2022. Con chip được sản xuất trên tiến trình tiên tiến 4nm, với một lõi hiệu năng cao Cortex-X2 tốc độ 3.GHz, ba lõi hiệu năng Cortex-A710 tốc độ 2.5GHz và bốn lõi tiết kiệm điện năng Cortex-A510', 9)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (44, N'
Chất lượng quay video Samsung Galaxy S22 như thế nào?', N'Camera Samsung Galaxy S22 được trang bị chống rung OIS cải tiến, tối ưu chống rung đến 58%. Chính vì thế, các thước phim được quay bởi Galaxy S22 luôn mượt mà, dù bạn đang di chuyển. Đồng thời, công nghệ Super HDR còn đảm bảo màu sắc video sống động.', 9)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (45, N'
Chụp đêm Samsung Galaxy S22 tốt không?', N'Samsung Galaxy S22 có khả năng chụp đêm cực kì tốt khi camera được xem là “Mắt thần bóng đêm”. Camera đã được nâng cấp cảm biến 23%, để điện thoại có thể thu nhiều sáng và chi tiết hơn trong điều kiện ánh sáng yếu.', 9)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (46, N'Samsung Galaxy Z Flip4 hoàn thiện bằng chất liệu gì?', N'Samsung Galaxy Z Flip4 có khung máy được hoàn thiện từ hợp kim nhôm Armor Aluminium chắc chắn và được bảo vệ bởi kính cường lực Gorilla Glass Victus+ cho mặt trước, mặt sau, giúp điện thoại sử dụng bền bỉ theo năm tháng.', 10)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (47, N'Pin Samsung Galaxy Z Flip4 ra sao?', N'Samsung Galaxy Z Flip4 có viên pin 3.700mAh, giúp bạn có thể sử dụng cả ngày dài.', 10)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (48, N'
Samsung Galaxy Z Flip4 có thể gập mấy góc độ?', N'Với tính năng Flex Mode, Samsung Galaxy Z Flip4 có khả năng gập nhiều góc độ khác nhau, giúp người dùng sử dụng linh hoạt với các góc phù hợp cho từng tác vụ.', 10)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (49, N'
Màn hình ngoài Samsung Galaxy Z Flip4 có những tính năng nào?', N'Màn hình ngoài Samsung Galaxy Z Flip4 có thể giúp bạn xem nhanh thông báo, tin nhắn, cuộc gọi, chuyển nhạc, bấm giờ, lịch, chụp hình, danh bạ yêu thích…', 10)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (50, N'Samsung Galaxy Z Flip4 có chống nước không?', N'Samsung Galaxy Z Flip4 tích hợp chuẩn IPX8, có khả năng chống nước ở độ sâu 1.5 mét trong 30 phút, giúp bạn yên tâm sử dụng trong nhiều điều kiện môi trường.', 10)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (51, N'Màn hình Samsung Galaxy M34 5G giải trí tốt không?', N'Samsung Galaxy M34 5G có màn hình 6.5 inch Infinity-U, độ phân giải FHD+, tấm nền Super AMOLED cho chi tiết hiển thị sắc nét, sống động, đáp ứng tốt nhu cầu giải trí cho người dùng.', 11)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (52, N'Camera Samsung Galaxy M34 5G có chống rung không?', N'Camera Samsung Galaxy M34 5G có chống rung OIS, giúp giữ vững khung hình chắc chắn, đảm bảo từng thước phim mượt mà, chống rung nhòe hiệu quả.', 11)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (53, N'
Samsung Galaxy M34 5G chơi game tốt không?', N'Samsung Galaxy M34 5G tích hợp con chip Exynos 1280 sản xuất trên tiến 5nm mới, cho khả năng gaming ấn tượng, máy xử lý nhanh và mượt.', 11)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (54, N'Tần số quét Samsung Galaxy M34 5G bao nhiêu?', N'Samsung Galaxy M34 5G có tần số quét 120Hz, cho các thao tác chuyển cảnh mượt mà, nhanh chóng.', 11)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (55, N'
Pin Samsung Galaxy M34 5G sử dụng trong bao lâu?', N'Samsung Galaxy M34 5G sở hữu viên pin 6.000mAh, cho phép người dùng sử dụng thoải mái cả ngày dài, thậm chí sang ngày thứ hai dễ dàng.', 11)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (56, N'
Camera selfie Samsung Galaxy A05s có nâng cấp gì?', N'Camera selfie Samsung Galaxy A05s có cải tiến ấn tượng so với bản Galaxy A04s. Theo đó, máy sở hữu camera 8MP, có độ phân giải cao hơn đến 1.6x so với tiền nhiệm, mang tới tấm ảnh selfie sắc nét, đẹp tự nhiên.', 12)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (57, N'
Samsung Galaxy A05s chơi game tốt không?', N'Samsung Galaxy A05s sở hữu con chip Snapdragon 680 đầu tiên trong phân khúc, mang tới khả năng gaming ổn định, mượt mà cho các tùy chọn tiêu chuẩn các tựa game phổ biến như Liên Quân Mobile.', 12)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (58, N'Pin Samsung Galaxy A05s sử dụng trong bao lâu?', N'Samsung Galaxy A05s có viên pin lớn 5.000mAh, giúp bạn sử dụng thoải mái cả ngày dài hay thậm chí hai ngày nếu dùng ít.', 12)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (59, N'Khả năng nhiếp ảnh của Samsung Galaxy A05s như thế nào?', N'Samsung Galaxy A05s có hệ thống 3 camera 50MP, cho phép chụp ảnh sắc nét và chân thực. Hai camera phụ còn lại là camera xóa phông 2MP và chụp cận cảnh 2MP, mang tới nhiều góc chụp cho người dùng hơn.', 12)
INSERT [dbo].[ProductQuestion] ([QuestionID], [QuestionTitle], [Answer], [ProductID]) VALUES (60, N'
Màn hình Samsung Galaxy A05s giải trí tốt không?', N'Samsung Galaxy A05s có màn hình lớn nhất dòng Galaxy A là 6.7 inch, FHD+, cho chi tiết hiển thị sắc nét và rõ ràng, đáp ứng tốt nhu cầu giải trí của người dùng.', 12)
GO
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (1, N'~/images/slider-samsung-a23-1.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (2, N'~/images/slider-samsung-a23-2.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (3, N'~/images/slider-samsung-a23-3.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (4, N'~/images/slider-samsung-a23-4.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (5, N'~/images/slider-samsung-a23-5.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (6, N'~/images/paramNews-samsung-a23-slider1.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (7, N'~/images/paramNews-samsung-a23-slider2.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (8, N'~/images/paramNews-samsung-a23-slider3.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (9, N'~/images/paramNews-samsung-23-slider4.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (10, N'~/images/paramNews-samsung-a23-slider5.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (11, N'~/images/paramNews-samsung-a23-slider6.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (12, N'~/images/paramNews-samsung-a23-slider7.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (13, N'~/images/paramNews-samsung-a23-slider8.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (14, N'~/images/paramNews-samsung-a23-slider9.jpg', 1)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (15, N'~/images/slider-samsung-a14-1.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (16, N'~/images/slider-samsung-a14-2.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (17, N'~/images/slider-samsung-a14-3.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (18, N'~/images/slider-samsung-a14-4.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (19, N'~/images/slider-samsung-a14-5.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (20, N'~/images/paramNews-samsung-a14-slider1.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (21, N'~/images/paramNews-samsung-a14-slider2.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (22, N'~/images/paramNews-samsung-a14-slider3.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (23, N'~/images/paramNews-samsung-a14-slider4.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (24, N'~/images/paramNews-samsung-a14-slider5.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (25, N'~/images/paramNews-samsung-a14-slider6.jpg', 2)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (26, N'~/images/slider-samsung-z fold5-1.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (27, N'~/images/slider-samsung-z fold5-2.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (28, N'~/images/slider-samsung-z fold5-3.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (29, N'~/images/slider-samsung-z fold5-4.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (30, N'~/images/slider-samsung-z fold5-5.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (31, N'~/images/paramNews-samsung-z fold5-slider1.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (32, N'~/images/paramNews-samsung-z fold5-slider2.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (33, N'~/images/paramNews-samsung-z fold5-slider3.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (34, N'~/images/paramNews-samsung-z fold5-slider4.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (35, N'~/images/paramNews-samsung-z fold5-slider5.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (36, N'~/images/paramNews-samsung-z fold5-slider6.jpg', 3)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (37, N'~/images/slider-samsung-s23-1.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (38, N'~/images/slider-samsung-s23-2.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (39, N'~/images/slider-samsung-s23-3.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (40, N'~/images/slider-samsung-s23-5.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (41, N'~/images/slider-samsung-s23-2.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (42, N'~/images/paramNews-samsung-s23-slider1.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (43, N'~/images/paramNews-samsung-s23-slider2.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (44, N'~/images/paramNews-samsung-s23-slider3.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (45, N'~/images/paramNews-samsung-s23-slider4.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (46, N'~/images/paramNews-samsung-s23-slider5.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (47, N'~/images/paramNews-samsung-s23-slider6.jpg', 4)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (48, N'~/images/slider-samsung-a54-1.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (49, N'~/images/slider-samsung-a54-2.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (50, N'~/images/slider-samsung-a54-3.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (51, N'~/images/slider-samsung-a54-4.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (52, N'~/images/slider-samsung-a54-5.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (53, N'~/images/slider-samsung-a34-1.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (54, N'~/images/slider-samsung-a34-2.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (55, N'~/images/slider-samsung-a34-2.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (56, N'~/images/slider-samsung-a34-3.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (57, N'~/images/slider-samsung-a34-4.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (58, N'~/images/slider-samsung-a34-5.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (59, N'~/images/paramNews-samsung-a34-slider1.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (60, N'~/images/paramNews-samsung-a34-slider2.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (61, N'~/images/paramNews-samsung-a34-slider3.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (62, N'~/images/paramNews-samsung-a34-slider4.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (63, N'~/images/paramNews-samsung-a34-slider5.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (64, N'~/images/paramNews-samsung-a34-slider6.jpg', 6)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (65, N'~/images/slider-samsung-z flip5-1.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (66, N'~/images/slider-samsung-z flip5-2.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (67, N'~/images/slider-samsung-z flip5-3.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (68, N'~/images/slider-samsung-z flip5-4.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (69, N'~/images/slider-samsung-z flip5-5.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (70, N'~/images/paramNews-samsung-z flip5-slider1.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (71, N'~/images/paramNews-samsung-z flip5-slider2.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (72, N'~/images/paramNews-samsung-z flip5-slider3.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (73, N'~/images/paramNews-samsung-z flip5-slider4.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (74, N'~/images/paramNews-samsung-z flip5-slider5.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (75, N'~/images/paramNews-samsung-z flip5-slider6.jpg', 7)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (76, N'~/images/slider-samsung-a05-1.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (77, N'~/images/slider-samsung-a05-2.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (78, N'~/images/slider-samsung-a05-3.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (79, N'~/images/slider-samsung-a05-4.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (80, N'~/images/slider-samsung-a05-5.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (81, N'~/images/paramNews-samsung-a05-slider1.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (82, N'~/images/paramNews-samsung-a05-slider2.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (83, N'~/images/paramNews-samsung-a05-slider3.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (84, N'~/images/paramNews-samsung-a05-slider1.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (85, N'~/images/paramNews-samsung-a05-slider4.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (86, N'~/images/paramNews-samsung-a05-slider5.jpg', 8)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (87, N'~/images/slider-samsung-s22-1.jpg', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (88, N'~/images/slider-samsung-s22-2.jpg', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (89, N'~/images/slider-samsung-s22-3.jpg', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (90, N'~/images/slider-samsung-s22-2.jpg', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (91, N'~/images/slider-samsung-s22-4.jpg', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (92, N'~/images/paramNews-samsung-s22-slider1.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (93, N'~/images/paramNews-samsung-s22-slider2.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (94, N'~/images/paramNews-samsung-s22-slider3.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (95, N'~/images/paramNews-samsung-s22-slider4.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (96, N'~/images/paramNews-samsung-s22-slider5.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (97, N'~/images/paramNews-samsung-s22-slider6.png', 9)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (98, N'~/images/slider-samsung-z flip4-1.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (99, N'~/images/slider-samsung-z flip4-2.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (100, N'~/images/slider-samsung-z flip4-3.jpg', 10)
GO
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (101, N'~/images/slider-samsung-z flip4-4.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (102, N'~/images/slider-samsung-z flip4-5.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (103, N'~/images/paramNews-samsung-z flip4-slider1.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (104, N'~/images/paramNews-samsung-z flip4-slider2.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (105, N'~/images/paramNews-samsung-z flip4-slider3.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (106, N'~/images/paramNews-samsung-z flip4-slider4.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (107, N'~/images/paramNews-samsung-z flip4-slider5.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (108, N'~/images/paramNews-samsung-z flip4-slider6.jpg', 10)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (109, N'~/images/slider-samsung-m34-1.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (110, N'~/images/slider-samsung-m34-2.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (111, N'~/images/slider-samsung-m34-3.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (112, N'~/images/slider-samsung-m34-4.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (113, N'~/images/slider-samsung-m34-5.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (114, N'~/images/paramNews-samsung-m34-slider1.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (115, N'~/images/paramNews-samsung-m34-slider2.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (116, N'~/images/paramNews-samsung-m34-slider3.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (117, N'~/images/paramNews-samsung-m34-slider4.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (118, N'~/images/paramNews-samsung-m34-slider5.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (119, N'~/images/paramNews-samsung-m34-slider6.jpg', 11)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (120, N'~/images/slider-samsung-a05s-1.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (121, N'~/images/slider-samsung-a05s-2.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (122, N'~/images/slider-samsung-a05s-3.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (123, N'~/images/slider-samsung-a05s-4.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (124, N'~/images/slider-samsung-a05s-5.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (125, N'~/images/paramNews-samsung-a05s-slider1.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (126, N'~/images/paramNews-samsung-a05s-slider2.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (127, N'~/images/paramNews-samsung-a05s-slider3.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (128, N'~/images/paramNews-samsung-a05s-slider4.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (129, N'~/images/paramNews-samsung-a05s-slider5.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (130, N'~/images/paramNews-samsung-a05s-slider6.jpg', 12)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (131, N'~/images/paramNews-samsung-a54-slider1.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (132, N'~/images/paramNews-samsung-a54-slider2.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (133, N'~/images/paramNews-samsung-a54-slider3.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (134, N'~/images/paramNews-samsung-a54-slider4.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (135, N'~/images/paramNews-samsung-a54-slider5.jpg', 5)
INSERT [dbo].[ProductSlider] ([ProductSliderID], [ProductSliderImage], [ProductID]) VALUES (136, N'~/images/paramNews-samsung-a54-slider6.jpg', 5)
GO
INSERT [dbo].[Ram] ([RamID], [RamName]) VALUES (1, N'4GB')
INSERT [dbo].[Ram] ([RamID], [RamName]) VALUES (2, N'8GB')
INSERT [dbo].[Ram] ([RamID], [RamName]) VALUES (3, N'12GB')
GO
INSERT [dbo].[ScreenSize] ([ScreenSizeID], [Size]) VALUES (1, N'Màn hình nhỏ: dưới 5.0 inch')
INSERT [dbo].[ScreenSize] ([ScreenSizeID], [Size]) VALUES (2, N'Nhỏ gọn vừa tay: dưới 6.0 inch, tràn viền')
INSERT [dbo].[ScreenSize] ([ScreenSizeID], [Size]) VALUES (3, N'Trên 6.0 inch')
INSERT [dbo].[ScreenSize] ([ScreenSizeID], [Size]) VALUES (4, N'Màn hình gập')
GO
INSERT [dbo].[Storage] ([StorageID], [StorageName]) VALUES (1, N'32GB')
INSERT [dbo].[Storage] ([StorageID], [StorageName]) VALUES (2, N'64GB')
INSERT [dbo].[Storage] ([StorageID], [StorageName]) VALUES (3, N'128GB')
INSERT [dbo].[Storage] ([StorageID], [StorageName]) VALUES (4, N'256GB')
INSERT [dbo].[Storage] ([StorageID], [StorageName]) VALUES (5, N'512GB')
GO
ALTER TABLE [dbo].[CategoriesSlider]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[CategoriesSlider]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[CategoriesSlider]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_ProductDetail] FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ProductDetailID])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_ProductDetail]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([PerformanceBatteryID])
REFERENCES [dbo].[PerformanceBattery] ([PerformanceBatteryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([PerformanceBatteryID])
REFERENCES [dbo].[PerformanceBattery] ([PerformanceBatteryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([PerformanceBatteryID])
REFERENCES [dbo].[PerformanceBattery] ([PerformanceBatteryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ScreenSizeID])
REFERENCES [dbo].[ScreenSize] ([ScreenSizeID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ScreenSizeID])
REFERENCES [dbo].[ScreenSize] ([ScreenSizeID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ScreenSizeID])
REFERENCES [dbo].[ScreenSize] ([ScreenSizeID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([CameraFeatureID])
REFERENCES [dbo].[CameraFeature] ([CameraFeatureID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([CameraFeatureID])
REFERENCES [dbo].[CameraFeature] ([CameraFeatureID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([CameraFeatureID])
REFERENCES [dbo].[CameraFeature] ([CameraFeatureID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductCamera]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([RamID])
REFERENCES [dbo].[Ram] ([RamID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([RamID])
REFERENCES [dbo].[Ram] ([RamID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([RamID])
REFERENCES [dbo].[Ram] ([RamID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([StorageID])
REFERENCES [dbo].[Storage] ([StorageID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([StorageID])
REFERENCES [dbo].[Storage] ([StorageID])
GO
ALTER TABLE [dbo].[ProductDetail]  WITH CHECK ADD FOREIGN KEY([StorageID])
REFERENCES [dbo].[Storage] ([StorageID])
GO
ALTER TABLE [dbo].[ProductDiscounts]  WITH CHECK ADD FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ProductDetailID])
GO
ALTER TABLE [dbo].[ProductDiscounts]  WITH CHECK ADD FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ProductDetailID])
GO
ALTER TABLE [dbo].[ProductDiscounts]  WITH CHECK ADD FOREIGN KEY([ProductDetailID])
REFERENCES [dbo].[ProductDetail] ([ProductDetailID])
GO
ALTER TABLE [dbo].[ProductNews]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductNews]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductNews]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductQuestion]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductQuestion]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductQuestion]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductSlider]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductSlider]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductSlider]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
