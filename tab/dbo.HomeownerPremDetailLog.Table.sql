USE [Windhaven]
GO
/****** Object:  Table [dbo].[HomeownerPremDetailLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeownerPremDetailLog](
	[homeownerPremDetailLogID] [int] IDENTITY(10,1) NOT NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[homeownerPremDetailID] [int] NULL,
	[homeownerID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[policyID] [int] NULL,
	[limit] [decimal](19, 2) NULL,
	[premium] [decimal](19, 2) NULL,
	[status] [tinyint] NULL,
	[systemCoverageTypeID] [int] NULL,
	[categoryType] [tinyint] NULL,
	[description] [varchar](500) NULL,
	[strReference] [varchar](15) NULL,
	[noCommission] [tinyint] NULL,
	[fullyEarned] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[insertState] [smallint] NULL,
	[formSection] [varchar](10) NULL,
 CONSTRAINT [PK_HomeownerPremDetailLog] PRIMARY KEY CLUSTERED 
(
	[homeownerPremDetailLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HomeownerPremDetailLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HomeownerPremDetailLog_policyID] ON [dbo].[HomeownerPremDetailLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
