IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'AddressesDQP')
	CREATE TABLE [dbo].[AddressesDQP](
		[AddressID] [int] NOT NULL,
		[AddressLine1] [nvarchar](60) NOT NULL,
		[AddressLine2] [nvarchar](60) NULL,
		[City] [nvarchar](30) NOT NULL,
		[StateProvinceID] [int] NOT NULL,
		[PostalCode] [nvarchar](15) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE AddressesDQP