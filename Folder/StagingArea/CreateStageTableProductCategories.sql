IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'ProductCategories')
	CREATE TABLE [dbo].[ProductCategories](
		[ProductCategoryID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NOT NULL,
	)
ELSE
	TRUNCATE TABLE ProductCategories