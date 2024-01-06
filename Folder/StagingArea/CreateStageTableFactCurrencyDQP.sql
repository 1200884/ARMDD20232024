IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'FactCurrencyDQP')
	CREATE TABLE [dbo].[FactCurrencyDQP](
		[CurrencyRateDate] [date] NOT NULL,
		[FromCurrencyKey] [int] NOT NULL,
		[AverageRate] [money] NULL,
		[EndOfDayRate] [money] NOT NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE FactCurrencyDQP