IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'FactSalesDQP')
	CREATE TABLE [dbo].[FactSalesDQP](
		[ProductNumber] [nvarchar](25)
		[OrderDate] [date] NULL,
		[CustomerID] [int] NULL,
		[DueDate] [date] NULL,
		[BusinessEntityID] [int] NULL,
		[ShipMethodID] [int] NULL,
		[TerritoryID] [int] NULL,
		[CurrencyCode] [nchar](3) NULL,
		[ShipDate] [date] NULL,
		[BillToAddress] [int] NULL,
		[ShipToAddress] [int] NULL,
		[SalesOrderDetailID] [int] NULL,
		[SalesOrderID] [int] NULL,
		[OrderQty] [smallint] NULL,
		[UnitPriceLocal] [money] NULL,
		[UnitPriceStandard] [money] NULL,
		[UnitPriceDiscountLocal] [money] NULL,
		[UnitPriceDiscountStandard] [money] NULL,
		[LineTotalLocal] [numeric] (38,6) NULL,
		[LineTotalStandard] [numeric] (38,6) NULL,
		[FreightLocal] [money] NULL,
		[FreightStandard] [money] NULL,
		[TotalDueLocal] [money] NULL,
		[TotalDueStandard] [money] NULL,
		[TaxAmountLocal] [money] NULL,
		[TaxAmountStandard] [money] NULL,
		[SubTotalLocal] [money] NULL,
		[SubTotalStandard] [money] NULL, 
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE FactSalesDQP