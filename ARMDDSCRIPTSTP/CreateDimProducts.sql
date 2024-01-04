IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProducts')

	CREATE TABLE [dbo].[DimProducts](
		[ProductKey] [int] IDENTITY(1,1) NOT NULL,
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
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NOT NULL		
		CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
