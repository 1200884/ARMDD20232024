IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'Persons')
	CREATE TABLE [dbo].[Persons](
		[BusinessEntityID] [int] NOT NULL,
		[PersonType] [nvarchar](20) NOT NULL,
		[Title] [nvarchar](8) NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[MiddleName] [nvarchar](50) NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL,
	)
ELSE
	TRUNCATE TABLE Persons