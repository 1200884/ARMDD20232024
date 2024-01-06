IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'SalesTerritoriesDQP')
	CREATE TABLE [dbo].[SalesTerritoriesDQP](
		[TerritoryID] [int] NULL,
		[TerritoryName] [nvarchar](50) NULL,	
		[Group] [nvarchar](50) NULL,	
		[SalesYTD] [money] NULL,
		[SalesLastYear] [money] NULL,
		[CountryRegionName] [nvarchar](50) NULL,	
		[CreatedDate] [date] NULL,	
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE SalesTerritoriesDQP