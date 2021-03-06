USE [Windhaven]
GO
/****** Object:  Table [dbo].[HomeownerPremDetail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeownerPremDetail](
	[homeownerPremDetailID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[homeownerID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[limit] [decimal](19, 2) NULL,
	[premium] [decimal](19, 2) NULL,
	[displayType] [tinyint] NULL,
	[displayOrder] [tinyint] NULL,
	[status] [tinyint] NULL,
	[systemCoverageTypeID] [int] NULL,
	[homeownerDwellingCoverageID] [int] NULL,
	[categoryType] [tinyint] NULL,
	[description] [varchar](500) NULL,
	[strReference] [varchar](15) NULL,
	[noCommission] [tinyint] NULL,
	[fullyEarned] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [bit] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[formSection] [varchar](10) NULL,
 CONSTRAINT [PK_HomeownerPremDetail] PRIMARY KEY CLUSTERED 
(
	[homeownerPremDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HomeownerPremDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HomeownerPremDetail_policyID] ON [dbo].[HomeownerPremDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HomeownerPremDetail] ADD  CONSTRAINT [DF_HomeownerPremDetail_policyID]  DEFAULT (1) FOR [policyID]
GO
