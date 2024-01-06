IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'AddressesDQP')
	CREATE TABLE [dbo].[AddressesDQP](
		[AddressID] [int] NULL,
		[AddressLine] [nvarchar](60) NULL,
		[AddressLine2] [nvarchar](60) NULL,
		[City] [nvarchar](30) NULL,
		[PostalCode] [nvarchar](15) NULL,
		[CountryRegionName] [nvarchar](50) NULL,
		[StateProvinceCode] [nchar](3) NULL,
		[StateProvinceName] [nvarchar](50) NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE AddressesDQP