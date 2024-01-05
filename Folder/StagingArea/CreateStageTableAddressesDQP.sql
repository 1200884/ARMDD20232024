IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'AddressesDQP')
	CREATE TABLE [dbo].[AddressesDQP](
		[AddressID] [int] NOT NULL,
		[AddressLine] [nvarchar](60) NOT NULL,
		[AddressLine2] [nvarchar](60) NULL,
		[City] [nvarchar](30) NOT NULL,
		[PostalCode] [nvarchar](15) NOT NULL,
		[CountryRegionName] [nvarchar](50) NOT NULL,
		[StateProvinceCode] [nchar](3) NOT NULL,
		[StateProvinceName] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE AddressesDQP