IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'SalesPersonsDQP')
	CREATE TABLE [dbo].[SalesPersonsDQP](
		[BusinessEntityID] [int] NOT NULL,
		[SalesQuota] [money] NULL,
		[Bonus] [money] NOT NULL,
		[ComissionPct] [smallmoney] NOT NULL,
		[SalesYTD] [money] NOT NULL,
		[SalesLastYear] [money] NOT NULL,
		[NationalIDNumber] [nvarchar] (15) NOT NULL,
		[LoginID] [nvarchar] (256) NOT NULL,
		[JobTitle] [nvarchar] (50) NOT NULL,
		[BirthDate] [date] NOT NULL,
		[MaritalStatus] [nchar] (10) NOT NULL,
		[Gender] [nchar] (6) NOT NULL,
		[HireDate] [date] NOT NULL,
		[SalariedFlag] [nvarchar] (3) NOT NULL,
		[VacationHours] [smallint] NOT NULL,
		[SickLeaveHours] [smallint] NOT NULL,
		[PersonType] [nvarchar] (20) NOT NULL,
		[Title] [nvarchar] (8) NULL,
		[FirstName] [nvarchar] (50) NOT NULL,
		[MiddleName] [nvarchar] (50) NULL,
		[LastName] [nvarchar] (50) NOT NULL,
		[CreatedDate] [date] NOT NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE SalesPersonsDQP