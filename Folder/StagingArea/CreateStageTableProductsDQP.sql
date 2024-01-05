IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ProductsDQP')
	CREATE TABLE [dbo].[ProductsDQP](
		[ProductID] [nvarchar](25) NOT NULL,
		[Name] [nvarchar](50) NULL,
		[FinishedGoodsFlag] [nvarchar] (3) NULL,
		[Color] [nvarchar](15) NULL,
		[SafetyStockLevel] [smallint] NULL,
		[ReorderPoint] [smallint] NULL,
		[StandardCost] [money] NULL,
		[ListPrice] [money] NULL,
		[Size] [nvarchar](5) NULL,
		[Weight] [decimal](8,2) NULL,
		[DaysToManufacture] [int] NULL,
		[ProductLine] [nvarchar](10) NULL,
		[Class] [nvarchar](10) NULL,
		[Style] [nvarchar](10) NULL,
		[WeightUnitMeasureName] [nvarchar](50) NULL,
		[SizeUnitMeasureName] [nvarchar](50) NULL,
		[SubCategoryName] [nvarchar](50) NULL,
		[CategoryName] [nvarchar](50) NULL,
		[SellStartDate] [date] NULL,
		[SellEndDate] [date] NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE ProductsDQP