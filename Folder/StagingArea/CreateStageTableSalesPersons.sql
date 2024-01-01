IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'SalesPersons')
	CREATE TABLE [dbo].[SalesPersons](
		[BusinessEntityID] [int] NOT NULL,
		[SalesQuota] [money] NULL,
		[Bonus] [money] NOT NULL,
		[CommissionPct] [smallmoney] NOT NULL,
		[SalesYTD] [money] NOT NULL,
		[SalesLastYear] [money] NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL,
	)
ELSE
	TRUNCATE TABLE SalesPersons