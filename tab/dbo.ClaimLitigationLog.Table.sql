USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimLitigationLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimLitigationLog](
	[claimLitigationLogID] [int] IDENTITY(10,1) NOT NULL,
	[claimLitigationID] [int] NOT NULL,
	[claimID] [int] NOT NULL,
	[claimIncidentID] [int] NOT NULL,
	[caseNumber] [varchar](100) NULL,
	[caseTitle] [varchar](1000) NULL,
	[venue] [varchar](100) NULL,
	[suitFileDate] [smalldatetime] NULL,
	[serviceDate] [smalldatetime] NULL,
	[answerDate] [smalldatetime] NULL,
	[mediationDate] [smalldatetime] NULL,
	[trialDate] [smalldatetime] NULL,
	[settlementDate] [smalldatetime] NULL,
	[demandDate] [smalldatetime] NULL,
	[offerDate] [smalldatetime] NULL,
	[totalDemand] [dbo].[CURRENCY] NULL,
	[medicalDemand] [dbo].[CURRENCY] NULL,
	[otherDemand] [dbo].[CURRENCY] NULL,
	[lostWagesDemand] [dbo].[CURRENCY] NULL,
	[auditAmount] [dbo].[CURRENCY] NULL,
	[offerAmount] [dbo].[CURRENCY] NULL,
	[reserveAtSettlement] [dbo].[CURRENCY] NULL,
	[settlementAmount] [dbo].[CURRENCY] NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NOT NULL,
	[settled] [bit] NOT NULL,
	[changeInAmount] [bit] NOT NULL,
	[demandStep] [int] NULL,
	[isOtherDemand] [int] NULL,
	[changeInOtherDemand] [int] NULL,
 CONSTRAINT [PK_ClaimLitigationLog] PRIMARY KEY CLUSTERED 
(
	[claimLitigationLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimLitigationLogClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLitigationLogClaimID] ON [dbo].[ClaimLitigationLog]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLitigationLogClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLitigationLogClaimIncidentID] ON [dbo].[ClaimLitigationLog]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLitigationLogClaimLitigationID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLitigationLogClaimLitigationID] ON [dbo].[ClaimLitigationLog]
(
	[claimLitigationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLitigationLogDropDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLitigationLogDropDate] ON [dbo].[ClaimLitigationLog]
(
	[dropDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLitigationLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLitigationLogUsersID] ON [dbo].[ClaimLitigationLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_claimLitigationID]  DEFAULT ((1)) FOR [claimLitigationID]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_claimID]  DEFAULT ((1)) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_settled]  DEFAULT ((0)) FOR [settled]
GO
ALTER TABLE [dbo].[ClaimLitigationLog] ADD  CONSTRAINT [DF_ClaimLitigationLog_demandChange]  DEFAULT ((0)) FOR [changeInAmount]
GO
