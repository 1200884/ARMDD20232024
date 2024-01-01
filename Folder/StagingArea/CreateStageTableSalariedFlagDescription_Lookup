IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'SalariedFlagDescription_Lookup')
BEGIN
	CREATE TABLE [dbo].[SalariedFlagDescription_Lookup](
		[SalariedFlag] [char](1) NULL,
		[SalariedFlagDescription] [nvarchar](10) NOT NULL
	) ON [PRIMARY]
	INSERT [dbo].[SalariedFlagDescription_Lookup] ([SalariedFlag], [SalariedFlagDescription]) VALUES (NULL, N'Unknown')
	INSERT [dbo].[SalariedFlagDescription_Lookup] ([SalariedFlag], [SalariedFlagDescription]) VALUES (N'1', N'Yes')
	INSERT [dbo].[SalariedFlagDescription_Lookup] ([SalariedFlag], [SalariedFlagDescription]) VALUES (N'0', N'No')
END