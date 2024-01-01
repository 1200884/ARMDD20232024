IF NOT EXISTS(SELECT name FROM sys.tables WHERE name = 'FinishedGoodsFlagDescription_Lookup')
BEGIN
	CREATE TABLE [dbo].[FinishedGoodsFlagDescription_Lookup](
		[FinishedGoodsFlag] [char](1) NULL,
		[FinishedGoodsFlagDescription] [nvarchar](10) NOT NULL
	) ON [PRIMARY]
	INSERT [dbo].[FinishedGoodsFlagDescription_Lookup] ([FinishedGoodsFlag], [FinishedGoodsFlagDescription]) VALUES (NULL, N'Unknown')
	INSERT [dbo].[FinishedGoodsFlagDescription_Lookup] ([FinishedGoodsFlag], [FinishedGoodsFlagDescription]) VALUES (1, N'Yes')
	INSERT [dbo].[FinishedGoodsFlagDescription_Lookup] ([FinishedGoodsFlag], [FinishedGoodsFlagDescription]) VALUES (0, N'No')
END