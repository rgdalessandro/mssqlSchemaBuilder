USE [Windhaven]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[claimID] [int] IDENTITY(10,1) NOT NULL,
	[claimCodeID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[externalAdjusterID] [int] NULL,
	[internalAdjusterID] [int] NULL,
	[lawyerID] [int] NULL,
	[dateOpened] [smalldatetime] NULL,
	[dateClosed] [smalldatetime] NULL,
	[claimDescription] [varchar](208) NULL,
	[status] [tinyint] NULL,
	[lossReserve] [dbo].[CURRENCY] NULL,
	[salvagePaid] [dbo].[CURRENCY] NULL,
	[expensePaid] [dbo].[CURRENCY] NULL,
	[policyCoveragesID] [int] NOT NULL,
	[claimantID] [int] NULL,
	[reportNum] [int] NULL,
	[citations] [varchar](50) NULL,
	[claimNum] [varchar](50) NULL,
	[lossPaid] [money] NULL,
	[recommendedPaid] [money] NULL,
	[checkDate] [smalldatetime] NULL,
	[subrogationPaid] [dbo].[CURRENCY] NULL,
	[coverageNotConfirmed] [tinyint] NULL,
	[expenseReserve] [dbo].[CURRENCY] NULL,
	[deductableAmount] [dbo].[CURRENCY] NULL,
	[deductablePaid] [bit] NULL,
	[limit] [int] NULL,
	[legalExpenseReserve] [dbo].[CURRENCY] NULL,
	[legalExpensePaid] [dbo].[CURRENCY] NULL,
	[recoveryReserve] [dbo].[CURRENCY] NULL,
	[coverageConfirmedID] [int] NULL,
	[coverageConfirmedDate] [smalldatetime] NULL,
	[contactRequired] [tinyint] NULL,
	[initialContactDate] [datetime] NULL,
	[isTotalLoss] [tinyint] NULL,
	[partyReportingFeature] [tinyint] NULL,
	[dateLawyerInvolved] [smalldatetime] NULL,
	[settlementDate] [datetime] NULL,
 CONSTRAINT [PK_28_Claims] PRIMARY KEY CLUSTERED 
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimClaimantID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimClaimantID] ON [dbo].[Claim]
(
	[claimantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimClaimIncidentID] ON [dbo].[Claim]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimInternalAdjusterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimInternalAdjusterID] ON [dbo].[Claim]
(
	[internalAdjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_claimCodeID]  DEFAULT (1) FOR [claimCodeID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_policyID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_adjusterID]  DEFAULT (1) FOR [externalAdjusterID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_userID]  DEFAULT (1) FOR [internalAdjusterID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_lawyerID]  DEFAULT (1) FOR [lawyerID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_dateOpened]  DEFAULT (getdate()) FOR [dateOpened]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_reserved]  DEFAULT (0) FOR [lossReserve]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_OLD_Claims_salvage]  DEFAULT (0) FOR [salvagePaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_paid]  DEFAULT (0) FOR [expensePaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_systemCoverageTypeID]  DEFAULT (1) FOR [policyCoveragesID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_claimantID]  DEFAULT (0) FOR [claimantID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_reportNum]  DEFAULT (0) FOR [reportNum]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_claimNum]  DEFAULT (0) FOR [claimNum]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_loss]  DEFAULT (0) FOR [lossPaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_recommendedPay]  DEFAULT (0) FOR [recommendedPaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_subrogation]  DEFAULT (0) FOR [subrogationPaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_coverageNotConfirmed]  DEFAULT (0) FOR [coverageNotConfirmed]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_expenseReserve]  DEFAULT (0) FOR [expenseReserve]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_deductableAmount]  DEFAULT (0) FOR [deductableAmount]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_deductablePaid]  DEFAULT (0) FOR [deductablePaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_limit]  DEFAULT (0) FOR [limit]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_legalExpenseReserve]  DEFAULT (0) FOR [legalExpenseReserve]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_legalExpensePaid]  DEFAULT (0) FOR [legalExpensePaid]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_recoveryReserve]  DEFAULT (0) FOR [recoveryReserve]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_coverageConfirmedID]  DEFAULT (1) FOR [coverageConfirmedID]
GO
ALTER TABLE [dbo].[Claim] ADD  CONSTRAINT [DF_Claim_contactRequired]  DEFAULT ((0)) FOR [contactRequired]
GO
ALTER TABLE [dbo].[Claim] ADD  DEFAULT ((0)) FOR [isTotalLoss]
GO
