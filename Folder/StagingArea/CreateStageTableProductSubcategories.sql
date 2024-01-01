IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ProductSubcategories')
	CREATE TABLE [dbo].[ProductSubcategories](
		[ProductSubcategoryID] [int] NOT NULL,
		[ProductCategoryID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL
	)
ELSE
	TRUNCATE TABLE ProductSubcategories