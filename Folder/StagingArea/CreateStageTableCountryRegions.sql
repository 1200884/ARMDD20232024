IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'CountryRegions')
	CREATE TABLE [dbo].[CountryRegions](
		[CountryRegionCode] [nvarchar](3) NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL
	)
ELSE
	TRUNCATE TABLE CountryRegions