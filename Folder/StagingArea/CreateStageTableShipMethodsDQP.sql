IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ShipMethodsDQP')
	CREATE TABLE [dbo].[ShipMethodsDQP](
		[ShipMethodID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[ShipBase] [money] NOT NULL,
		[ShipRate] [money] NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE ShipMethodsDQP