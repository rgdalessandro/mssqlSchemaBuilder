USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimLitigation]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimLitigation](
	[claimLitigationID] [int] IDENTITY(10,1) NOT NULL,
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
	[totalDemand] [dbo].[EMAIL] NULL,
	[medicalDemand] [dbo].[CURRENCY] NULL,
	[otherDemand] [dbo].[CURRENCY] NULL,
	[lostWagesDemand] [dbo].[CURRENCY] NULL,
	[auditAmount] [dbo].[CURRENCY] NULL,
	[offerAmount] [dbo].[CURRENCY] NULL,
	[reserveAtSettlement] [dbo].[CURRENCY] NULL,
	[settlementAmount] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NOT NULL,
	[usersID] [int] NOT NULL,
	[settled] [bit] NOT NULL,
	[demandStep] [int] NULL,
	[isOtherDemand] [int] NULL,
	[changeInOtherDemand] [int] NULL,
 CONSTRAINT [PK_ClaimLiitgation] PRIMARY KEY CLUSTERED 
(
	[claimLitigationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimLiitgationAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLiitgationAddDate] ON [dbo].[ClaimLitigation]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLiitgationClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLiitgationClaimID] ON [dbo].[ClaimLitigation]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLiitgationClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLiitgationClaimIncidentID] ON [dbo].[ClaimLitigation]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimLiitgationUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLiitgationUsersID] ON [dbo].[ClaimLitigation]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLiitgation_claimID]  DEFAULT ((1)) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLiitgation_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLitigation_totalDemand]  DEFAULT ((0)) FOR [totalDemand]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLiitgation_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLiitgation_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimLitigation] ADD  CONSTRAINT [DF_ClaimLiitgation_settled]  DEFAULT ((0)) FOR [settled]
GO
