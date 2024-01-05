IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'CustomersDQP')
	CREATE TABLE [dbo].[CustomersDQP](
		[CustomerID] [int] NOT NULL,
		[PersonType] [nvarchar](20) NOT NULL,
		[Title] [nvarchar](8) NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[MiddleName] [nvarchar](50) NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE CustomersDQP