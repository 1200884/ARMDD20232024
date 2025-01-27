IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCurrency')
BEGIN
	CREATE TABLE [dbo].[DimCurrency](
		[CurrencyKey] [int] IDENTITY(1,1) NOT NULL,
		[CurrencyCode] [nchar] (3) NOT NULL,
		[Name] [nvarchar] (50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nchar] (3) NOT NULL,

		CONSTRAINT [PK_DimCurrency] PRIMARY KEY CLUSTERED 
	(
		[CurrencyKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [NonClusteredIndex-CurrencyKey] ON [dbo].[DimCurrency]
(
	[CurrencyKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
END


