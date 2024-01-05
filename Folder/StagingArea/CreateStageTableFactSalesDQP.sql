IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'FactSalesDQP')
	CREATE TABLE [dbo].[FactSalesDQP](
		[ProductKey] [int] NOT NULL,
		[OrderDateKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[DueDateKey] [int] NOT NULL,
		[SalesPersonKey] [int] NOT NULL,
		[ShipMethodKey] [int] NOT NULL,
		[TerritoryKey] [int] NOT NULL,
		[CurrencyKey] [int] NOT NULL,
		[ShipDateKey] [int] NOT NULL,
		[BillToAddressKey] [int] NOT NULL,
		[ShipToAddressKey] [int] NOT NULL,
		[SalesOrderDetailID] [int] NOT NULL,
		[SalesOrderID] [int] NOT NULL,
		[OrderQty] [smallint] NOT NULL,
		[UnitPriceLocal] [money] NOT NULL,
		[UnitPriceStandard] [money] NOT NULL,
		[UnitPriceDiscountLocal] [money] NOT NULL,
		[UnitPriceDiscountStandard] [money] NOT NULL,
		[LineTotalLocal] [numeric] (38,6) NOT NULL,
		[LineTotalStandard] [numeric] (38,6) NOT NULL,
		[FreightLocal] [money] NOT NULL,
		[FreightStandard] [money] NOT NULL,
		[TotalDueLocal] [money] NOT NULL,
		[TotalDueStandard] [money] NOT NULL,
		[TaxAmountLocal] [money] NOT NULL,
		[TaxAmountStandard] [money] NOT NULL,
		[SubTotalLocal] [money] NOT NULL,
		[SubTotalStandard] [money] NOT NULL, 
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE FactSalesDQP