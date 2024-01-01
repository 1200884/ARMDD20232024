IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'CustomersDQP')
	CREATE TABLE [dbo].[CustomersDQP](
		[CustomerID] [int] NOT NULL,
		[PersonID] [int] NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE CustomersDQP