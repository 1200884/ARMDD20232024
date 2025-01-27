IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'CurrenciesDQP')
	CREATE TABLE [dbo].[CurrenciesDQP](
		[CurrencyCode] [nchar] (3) NULL,
		[Name] [nvarchar] (50) NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE CurrenciesDQP