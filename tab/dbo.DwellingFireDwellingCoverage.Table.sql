USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireDwellingCoverage]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireDwellingCoverage](
	[dwellingFireDwellingCoverageID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[dwellingFireID] [int] NULL,
	[dwellingFireDwellingID] [int] NULL,
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
 CONSTRAINT [PK_DwellingFireDwellingCoverage] PRIMARY KEY CLUSTERED 
(
	[dwellingFireDwellingCoverageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DwellingFireDwellingCoverage_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DwellingFireDwellingCoverage_policyID] ON [dbo].[DwellingFireDwellingCoverage]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
