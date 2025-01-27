IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ShipMethods')
	CREATE TABLE [dbo].[ShipMethods](
		[ShipMethodID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[ShipBase] [money] NOT NULL,
		[ShipRate] [money] NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL
	)
ELSE
	TRUNCATE TABLE ShipMethods