IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ShipMethodsDQP')
	CREATE TABLE [dbo].[ShipMethodsDQP](
		[ShipMethodID] [int] NULL,
		[Name] [nvarchar](50) NULL,
		[ShipBase] [money] NULL,
		[ShipRate] [money] NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE ShipMethodsDQP