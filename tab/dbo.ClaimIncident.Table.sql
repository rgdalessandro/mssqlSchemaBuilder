USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimIncident]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimIncident](
	[claimIncidentID] [int] IDENTITY(10,1) NOT NULL,
	[claimCodeID] [int] NULL,
	[policyID] [int] NULL,
	[externalAdjusterID] [int] NULL,
	[internalAdjusterID] [int] NULL,
	[usersID] [int] NULL,
	[dateOfLoss] [smalldatetime] NULL,
	[dateReported] [smalldatetime] NULL,
	[dateOpened] [smalldatetime] NULL,
	[dateClosed] [smalldatetime] NULL,
	[checkDate] [smalldatetime] NULL,
	[claimDescription] [varchar](2000) NULL,
	[status] [tinyint] NULL,
	[totalExpense] [dbo].[CURRENCY] NULL,
	[expenseReserve] [dbo].[CURRENCY] NULL,
	[totalLoss] [dbo].[CURRENCY] NULL,
	[totalSalvage] [dbo].[CURRENCY] NULL,
	[claimIncidentNum] [varchar](20) NULL,
	[catastropheID] [int] NULL,
	[claimIncidentAutoID] [int] NULL,
	[totalSubrogation] [dbo].[CURRENCY] NULL,
	[coverageNotConfirmed] [tinyint] NULL,
	[test] [char](10) NULL,
	[denialReason] [tinyint] NULL,
	[treatyID] [tinyint] NULL,
	[totalLegalExpense] [dbo].[CURRENCY] NULL,
	[reportedBy] [varchar](100) NULL,
	[coverageConfirmedID] [int] NULL,
	[coverageConfirmedDate] [smalldatetime] NULL,
	[lossReserve] [dbo].[CURRENCY] NULL,
	[dateOfLiabilityDetermination] [smalldatetime] NULL,
	[lawyerID] [int] NULL,
	[publicAdjusterCompany] [varchar](150) NULL,
	[publicAdjusterContact] [varchar](150) NULL,
	[attorneyFirm] [varchar](150) NULL,
	[attorneyContact] [varchar](150) NULL,
 CONSTRAINT [PK_28_ClaimIncidents] PRIMARY KEY CLUSTERED 
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IN_6_ClaimIncidentspolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_6_ClaimIncidentspolicyID] ON [dbo].[ClaimIncident]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IN_9_ClaimIncidentsdateOfLoss]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_9_ClaimIncidentsdateOfLoss] ON [dbo].[ClaimIncident]
(
	[dateOfLoss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncident_claimIncidentAutoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncident_claimIncidentAutoID] ON [dbo].[ClaimIncident]
(
	[claimIncidentAutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_claimCodeID]  DEFAULT (1) FOR [claimCodeID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_adjusterID]  DEFAULT (1) FOR [externalAdjusterID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_userID]  DEFAULT (1) FOR [internalAdjusterID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_dateOpened]  DEFAULT (getdate()) FOR [dateOpened]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_paid]  DEFAULT (0) FOR [totalExpense]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_reserved]  DEFAULT (0) FOR [expenseReserve]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_loss]  DEFAULT (0) FOR [totalLoss]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_OLD_ClaimIncidents_salvage]  DEFAULT (0) FOR [totalSalvage]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_catastropheID]  DEFAULT (0) FOR [catastropheID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_claimIncidentAutoID]  DEFAULT (0) FOR [claimIncidentAutoID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_totalSubrogation]  DEFAULT (0) FOR [totalSubrogation]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_coverageNotConfirmed]  DEFAULT (0) FOR [coverageNotConfirmed]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_denialReason]  DEFAULT (0) FOR [denialReason]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_totalLegalExpense]  DEFAULT (0) FOR [totalLegalExpense]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_coverageConfirmedID]  DEFAULT (1) FOR [coverageConfirmedID]
GO
ALTER TABLE [dbo].[ClaimIncident] ADD  CONSTRAINT [DF_ClaimIncident_lossReserve]  DEFAULT (0) FOR [lossReserve]
GO
