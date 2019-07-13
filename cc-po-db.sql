IF NOT EXISTS(SELECT [Name] FROM dbo.sysdatabases WHERE [Name] = 'CC_PO')
CREATE DATABASE [CC_PO]
GO

USE [CC_PO]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  Table [dbo].[Purchase_Order_Details]    Script Date: 2019/07/13 5:41:54 PM ******/
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
 CONSTRAINT [PK_Purchase_Order_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Orders]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2019/07/13 5:41:54 PM ******/
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

INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (1, N'Product 1', N'pr_1', 100, 1)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (2, N'Product 2', N'pr_2', 50, 2)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (3, N'Product 3', N'pr_3', 200, 2)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (4, N'Product 44', N'pr_44', 500, 26)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (5, N'Product 55', N'pr_55', 45.99, 25)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (6, N'Product 6', N'pr_6', 400, 3)
INSERT [dbo].[Products] ([Id], [Description], [Code], [Amount], [Supplier_Id]) VALUES (8, N'Product 77', N'pr_77', 150.5, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Purchase_Order_Details] ON 

INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (1, 1, 1, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 100)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (2, 2, 1, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 50)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (3, 1, 2, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 100)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (4, 3, 2, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 200)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (5, 4, 2, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 300)
INSERT [dbo].[Purchase_Order_Details] ([Id], [Product_Id], [Purchase_Id], [DateCreated], [Amount]) VALUES (6, 6, 2, CAST(N'2019-07-13T00:00:00.000' AS DateTime), 400)
SET IDENTITY_INSERT [dbo].[Purchase_Order_Details] OFF
SET IDENTITY_INSERT [dbo].[Purchase_Orders] ON 

INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (1, N'PO 1', 1, CAST(N'2019-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (2, N'PO 2', 2, CAST(N'2019-07-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Purchase_Orders] ([Id], [Description], [Supplier_Id], [Created]) VALUES (3, N'PO 3', 1, CAST(N'2019-07-13T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Purchase_Orders] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (1, N'Supplier 1.2')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (2, N'Supplier 2')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (3, N'Supplier 3')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (24, N'Supplier 4.5')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (25, N'Supplier 5')
INSERT [dbo].[Suppliers] ([Id], [Name]) VALUES (26, N'Supplier 6.6')
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
ALTER TABLE [dbo].[Purchase_Orders] ADD  CONSTRAINT [DF_Purchase_Orders_Supplier_Id]  DEFAULT ((0)) FOR [Supplier_Id]
GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CreateSupplier]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  StoredProcedure [dbo].[RetrieveProducts]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  StoredProcedure [dbo].[RetrieveSuppliers]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 2019/07/13 5:41:54 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateSupplier]    Script Date: 2019/07/13 5:41:54 PM ******/
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
