USE master
IF EXISTS(SELECT [Name] FROM sys.databases WHERE [Name] = 'CC_PO')
DROP DATABASE CC_PO

CREATE DATABASE [CC_PO]
GO

USE [CC_PO]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](250) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Amount] [float] NOT NULL,
	[Supplier_Id] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Order_Details]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Order_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Purchase_Id] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Amount] [float] NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_Purchase_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Orders]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](250) NOT NULL,
	[Supplier_Id] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Purchase_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (1, N'Product 1222', N'pr_114', 156, 1)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (2, N'Product 2', N'pr_2', 50, 2)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (3, N'Product 3', N'pr_3', 200, 2)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (4, N'Product 44', N'pr_44', 500, 26)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (5, N'Product 55', N'pr_55', 45.99, 25)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (6, N'Product 6', N'pr_6', 400, 3)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (8, N'Product 77', N'pr_77', 150.5, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Purchase_Order_Details] ON 

INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (56, 2, 28, CAST(N'2019-07-15T11:37:01.290' AS DateTime), 50, 6)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (57, 3, 28, CAST(N'2019-07-15T11:37:01.307' AS DateTime), 200, 10)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (58, 8, 29, CAST(N'2019-07-15T11:37:16.463' AS DateTime), 150.5, 25)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (59, 6, 29, CAST(N'2019-07-15T11:37:16.463' AS DateTime), 400, 10)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (60, 8, 29, CAST(N'2019-07-15T11:37:16.480' AS DateTime), 150.5, 5)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (61, 5, 30, CAST(N'2019-07-15T11:37:29.790' AS DateTime), 45.99, 3)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (62, 4, 31, CAST(N'2019-07-15T11:37:38.057' AS DateTime), 500, 15)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (63, 1, 27, CAST(N'2019-07-15T11:42:23.130' AS DateTime), 100, 55)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (64, 1, 27, CAST(N'2019-07-15T11:42:23.130' AS DateTime), 100, 25)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (68, 1, 32, CAST(N'2019-07-15T11:43:47.753' AS DateTime), 100, 14)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (69, 1, 32, CAST(N'2019-07-15T11:45:16.953' AS DateTime), 100, 55)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount], [Qty]) VALUES (70, 1, 32, CAST(N'2019-07-15T11:45:16.953' AS DateTime), 100, 165)
SET IDENTITY_INSERT [dbo].[Purchase_Order_Details] OFF
SET IDENTITY_INSERT [dbo].[Purchase_Orders] ON 

INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (27, N'PO 1', 1, CAST(N'2019-07-15T11:36:48.603' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (28, N'PO 2', 2, CAST(N'2019-07-15T11:37:01.277' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (29, N'PO 3', 3, CAST(N'2019-07-15T11:37:16.447' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (30, N'PO 5', 25, CAST(N'2019-07-15T11:37:29.730' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (31, N'PO 6', 26, CAST(N'2019-07-15T11:37:38.040' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (32, N'TEST', 1, CAST(N'2019-07-15T11:43:07.317' AS DateTime))
SET IDENTITY_INSERT [dbo].[Purchase_Orders] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (1, N'Supplier 1.24')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (2, N'Supplier 2')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (3, N'Supplier 3')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (24, N'Supplier 4.5')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (25, N'Supplier 5')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (26, N'Supplier 6.6')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (27, N'Supplier 8.1')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Supplier_Id]  DEFAULT ((0)) FOR [Supplier_Id]
GO
ALTER TABLE [dbo].[Purchase_Order_Details] ADD  CONSTRAINT [DF_Purchase_Order_Details_Product_Id]  DEFAULT ((0)) FOR [Product_Id]
GO
ALTER TABLE [dbo].[Purchase_Order_Details] ADD  CONSTRAINT [DF_Purchase_Order_Details_Purchase_Id]  DEFAULT ((0)) FOR [Purchase_Id]
GO
ALTER TABLE [dbo].[Purchase_Order_Details] ADD  CONSTRAINT [DF_Purchase_Order_Details_Amount]  DEFAULT ((0)) FOR [Amount]
GO
ALTER TABLE [dbo].[Purchase_Order_Details] ADD  CONSTRAINT [DF_Purchase_Order_Details_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[Purchase_Orders] ADD  CONSTRAINT [DF_Purchase_Orders_Supplier_Id]  DEFAULT ((0)) FOR [Supplier_Id]
GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Create new product>
-- =============================================
CREATE PROCEDURE [dbo].[CreateProduct] 
	
	@prodDescr varchar(250) = null,
	@prodCode varchar(50) = null,
	@prodAmount float = 0,
	@prodSupp int = 0
	

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	SAVE TRANSACTION SavePoint;

	INSERT INTO Products(Description, Code, Amount, Supplier_Id) VALUES(@prodDescr, @prodCode, @prodAmount, @prodSupp);

	

	IF @@ERROR > 0
	BEGIN
		ROLLBACK TRANSACTION SavePoint;
	END

	COMMIT TRANSACTION;
   
END
GO
/****** Object:  StoredProcedure [dbo].[CreatePurchaseOrder]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatePurchaseOrder] 
	
	@poDescr varchar(150) = null,
	@poSupp int = 0,
	@poId int out
AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	SAVE TRANSACTION SavePoint;

	INSERT INTO Purchase_Orders(Description, Supplier_Id, Created) VALUES(@poDescr, @poSupp, GETUTCDATE());
	
	SET @poId = SCOPE_IDENTITY();

	IF @@ERROR > 0
	BEGIN
		ROLLBACK TRANSACTION SavePoint;
	END
	
	COMMIT TRANSACTION;
	
END
GO
/****** Object:  StoredProcedure [dbo].[CreatePurchaseOrderDetail]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreatePurchaseOrderDetail] 
	
	@poId int = 0,
	@prodId int = 0,
	@prodAmount float = 0,
	@prodQty int = 0

AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRANSACTION;
	SAVE TRANSACTION SavePoint;

	INSERT INTO Purchase_Order_Details(Product_Id, Purchase_Id, Amount, Qty, DateCreated) VALUES(@prodId, @poId, @prodAmount, @prodQty, GETUTCDATE());

	COMMIT TRANSACTION;

END
GO
/****** Object:  StoredProcedure [dbo].[CreateSupplier]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Create new supplier>
-- =============================================
CREATE PROCEDURE [dbo].[CreateSupplier] 
	@suppName varchar(150) = null
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	SAVE TRANSACTION SavePoint;
    
	INSERT INTO Suppliers(Name) VALUES(@suppName);

	IF @@ERROR > 0
	BEGIN
		ROLLBACK TRANSACTION SavePoint;
	END


	COMMIT TRANSACTION;


END
GO
/****** Object:  StoredProcedure [dbo].[RemovePurchaseOrderItem]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RemovePurchaseOrderItem] 
	
	@poId int = 0
AS
BEGIN
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	SAVE TRANSACTION SavePoint;

    DELETE FROM Purchase_Order_Details WHERE Id = @poId;
	
	IF @@ERROR > 0
	BEGIN
		ROLLBACK TRANSACTION SavePoint;
	END

	COMMIT TRANSACTION;


END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveProducts]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Retrieve products list>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveProducts] 
	
AS
BEGIN
	SET NOCOUNT ON;

     SELECT Prod.Id, Prod.Description, Prod.Code, Prod.Amount, Prod.Supplier_Id, supps.Name AS Supplier_Name 
	FROM Products AS Prod INNER JOIN Suppliers AS Supps ON Supps.Id = Prod.Supplier_Id
	ORDER BY Prod.Description;
	
END
GO
/****** Object:  StoredProcedure [dbo].[RetrievePurchaseOrderDetail]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrievePurchaseOrderDetail] 
	
	@poId int = 0
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT POD.Id, POD.Product_Id, POD.Purchase_Id, POD.DateCreated, POD.Amount, POD.Qty, Prod.Description 
	FROM Purchase_Order_Details AS POD 
		INNER JOIN Products AS Prod ON Prod.Id = POD.Product_Id
	WHERE POD.Purchase_Id = @poId
	ORDER BY POD.DateCreated;
	
END
GO
/****** Object:  StoredProcedure [dbo].[RetrievePurchaseOrders]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-14>
-- Description:	<Retrieve list of POs>
-- =============================================
CREATE PROCEDURE [dbo].[RetrievePurchaseOrders] 
	
AS
BEGIN
	SET NOCOUNT ON;
 
 WITH CTE_POD (Id, Description, Amount, Created, Supplier, SupplierId)
AS
(
	SELECT PO.Id, PO.Description, POD.Amount, PO.Created, Supp.Name, Supp.Id
	FROM Purchase_Order_Details AS POD 
		RIGHT OUTER JOIN Purchase_Orders AS PO ON PO.Id = POD.Purchase_Id
		INNER JOIN Suppliers AS Supp ON Supp.Id = PO.Supplier_Id
)

SELECT Id, Description, Supplier, Created, SUM(Amount) AS Total, SupplierId 
FROM CTE_POD
GROUP BY Description, Id, Created, Supplier, SupplierId
ORDER BY Created

END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveSupplierProducts]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveSupplierProducts] 
	
	@suppId int = 0
	
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Prod.Id, Prod.Description, Prod.Code, Prod.Amount, Prod.Supplier_Id, supps.Name AS Supplier_Name 
	FROM Products AS Prod 
		INNER JOIN Suppliers AS Supps ON Supps.Id = Prod.Supplier_Id
	WHERE prod.Supplier_Id = @suppId
	ORDER BY Prod.Description;
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveSuppliers]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Retrieve list of suppliers>
-- =============================================
CREATE PROCEDURE [dbo].[RetrieveSuppliers] 
	
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT Id, Name 
   FROM Suppliers 
   ORDER BY Name;
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Update product>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateProduct] 
	@prodId int = 0,
	@prodDescr varchar(150) = null,
	@prodAmount float = 0,
	@prodSuppId int  = 0,
	@prodCode varchar(50) = null
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE Products SET Description = @prodDescr, Amount = @prodAmount, Code = @prodCode, Supplier_id = @prodSuppId WHERE Id = @prodId;

    
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSupplier]    Script Date: 2019/07/15 1:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Andries de Kock>
-- Create date: <2019-07-13>
-- Description:	<Update supplier profile>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSupplier] 
	
	@suppNo int = 0,
	@suppName varchar(150) = null
AS
BEGIN
	
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Suppliers SET Name = @suppName WHERE Id = @suppNo;
END
GO
