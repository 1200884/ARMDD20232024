IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'CustomersDQP')
	CREATE TABLE [dbo].[CustomersDQP](
		[CustomerID] [int] NOT NULL,
		[PersonType] [nvarchar](20) NULL,
		[Title] [nvarchar](8) NULL,
		[FirstName] [nvarchar](50) NULL,
		[MiddleName] [nvarchar](50) NULL,
		[LastName] [nvarchar](50) NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE CustomersDQP