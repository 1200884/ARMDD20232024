IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'Customers')
	CREATE TABLE [dbo].[Customers](
		[CustomerID] [int] NOT NULL,
		[PersonID] [int] NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
	)
ELSE
	TRUNCATE TABLE Customers