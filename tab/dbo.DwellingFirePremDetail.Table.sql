USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFirePremDetail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFirePremDetail](
	[dwellingFirePremDetailID] [int] IDENTITY(1,1) NOT NULL,
	[policyID] [int] NULL,
	[dwellingFireID] [int] NULL,
	[dwellingFireDwellingID] [int] NULL,
	[limit] [decimal](19, 2) NULL,
	[premium] [decimal](19, 2) NULL,
	[displayType] [tinyint] NULL,
	[displayOrder] [smallmoney] NULL,
	[status] [tinyint] NULL,
	[categoryType] [tinyint] NULL,
	[description] [varchar](500) NULL,
	[strReference] [varchar](25) NULL,
	[noCommission] [tinyint] NULL,
	[fullyEarned] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [bit] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[formSection] [varchar](10) NULL,
	[systemCoverageTypeID] [int] NULL,
	[dwellingFireDwellingCoverageID] [int] NULL,
	[firePremium] [decimal](19, 2) NULL,
	[ecPremium] [decimal](19, 2) NULL,
	[itemType] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[coverageNum] [tinyint] NULL,
	[changeInComponentProRate] [decimal](19, 2) NULL,
	[includeInAggregate] [tinyint] NULL,
	[postInsertToAggregate] [tinyint] NULL,
 CONSTRAINT [PK_DwellingFirePremDetail] PRIMARY KEY CLUSTERED 
(
	[dwellingFirePremDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DwellingFirePremDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DwellingFirePremDetail_policyID] ON [dbo].[DwellingFirePremDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
