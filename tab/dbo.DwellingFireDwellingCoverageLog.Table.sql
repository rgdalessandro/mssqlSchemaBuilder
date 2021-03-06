USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireDwellingCoverageLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireDwellingCoverageLog](
	[dwellingFireDwellingCoverageLogID] [int] NOT NULL,
	[dwellingFireDwellingCoverageID] [int] NULL,
	[policyID] [int] NULL,
	[dwellingFireID] [int] NULL,
	[dwellingFireDwellingID] [int] NULL,
	[logDate] [smalldatetime] NULL,
	[logUsersID] [int] NULL,
	[systemCoverageTypeID] [int] NULL,
	[limit] [decimal](19, 2) NULL,
	[premium] [decimal](19, 2) NULL,
	[description] [varchar](500) NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [bit] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[formInfo] [varchar](6000) NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_DwellingFireDwellingCoverageLog] PRIMARY KEY CLUSTERED 
(
	[dwellingFireDwellingCoverageLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DwellingFireDwellingCoverageLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DwellingFireDwellingCoverageLog_policyID] ON [dbo].[DwellingFireDwellingCoverageLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
