IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactCurrencyRates')
BEGIN
	CREATE TABLE [dbo].[FactCurrencyRates](
		[DateKey] [int] NOT NULL,
		[ToCurrencyKey] [int] NOT NULL,
		[FromCurrencyKey] [int] NOT NULL,
		[AverageRate] [money] NOT NULL,
		[EndOfDayRate] [money] NOT NULL
		CONSTRAINT [PK_FactCurrencyRates] PRIMARY KEY CLUSTERED 
		(
			[DateKey] ASC,
			[ToCurrencyKey] ASC,
			[FromCurrencyKey] ASC
		) ON [PRIMARY]
	) ON [PRIMARY]
END;