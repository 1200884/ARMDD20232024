IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'Currencies')
	CREATE TABLE [dbo].[Currencies](
		[CurrencyCode] [nchar](3) NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL
	)
ELSE
	TRUNCATE TABLE Currencies
	