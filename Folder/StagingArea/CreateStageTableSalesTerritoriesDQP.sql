IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'SalesTerritoriesDQP')
	CREATE TABLE [dbo].[SalesTerritoriesDQP](
		[TerritoryID] [int] NOT NULL,
		[TerritoryName] [nvarchar](50) NOT NULL,	
		[Group] [nvarchar](50) NOT NULL,	
		[SalesYTD] [money] NOT NULL,
		[SalesLastYear] [money] NOT NULL,
		[CountryRegionName] [nvarchar](50) NOT NULL,	
		[CreatedDate] [date] NOT NULL,	
		[ModifiedDate] [date] NOT NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE SalesTerritoriesDQP