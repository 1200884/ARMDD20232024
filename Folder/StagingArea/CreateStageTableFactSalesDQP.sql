IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'FactSalesDQP')
	CREATE TABLE [dbo].[FactSalesDQP](
		[ProductKey] [int] NULL,
		[OrderDateKey] [int] NULL,
		[CustomerKey] [int] NULL,
		[DueDateKey] [int] NULL,
		[SalesPersonKey] [int] NULL,
		[ShipMethodKey] [int] NULL,
		[TerritoryKey] [int] NULL,
		[CurrencyKey] [int] ,
		[ShipDateKey] [int] NULL,
		[BillToAddressKey] [int] NULL,
		[ShipToAddressKey] [int] NULL,
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