IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'SalesPersonsDQP')
	CREATE TABLE [dbo].[SalesPersonsDQP](
		[BusinessEntityID] [int] NULL,
		[SalesQuota] [money] NULL,
		[Bonus] [money] NULL,
		[ComissionPct] [smallmoney] NULL,
		[SalesYTD] [money] NULL,
		[SalesLastYear] [money] NULL,
		[NationalIDNumber] [nvarchar] (15) NULL,
		[LoginID] [nvarchar] (256) NULL,
		[JobTitle] [nvarchar] (50) NULL,
		[BirthDate] [date] NULL,
		[MaritalStatus] [nchar] (10) NULL,
		[Gender] [nchar] (6) NULL,
		[HireDate] [date] NULL,
		[SalariedFlag] [nvarchar] (3) NULL,
		[VacationHours] [smallint] NULL,
		[SickLeaveHours] [smallint] NULL,
		[PersonType] [nvarchar] (20) NULL,
		[Title] [nvarchar] (8) NULL,
		[FirstName] [nvarchar] (50) NULL,
		[MiddleName] [nvarchar] (50) NULL,
		[LastName] [nvarchar] (50) NULL,
		[CreatedDate] [date] NULL,
		[ModifiedDate] [date] NULL,
        DQP nvarchar(100)
	)
ELSE
	TRUNCATE TABLE SalesPersonsDQP