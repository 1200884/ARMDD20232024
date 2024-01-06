IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'FactCurrencyDQP')
	CREATE TABLE [dbo].[FactCurrencyDQP](
		[CurrencyRateDate] [date] NULL,
		[FromCurrencyKey] [int] NULL,
		[AverageRate] [money] NULL,
		[EndOfDayRate] [money] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE FactCurrencyDQP