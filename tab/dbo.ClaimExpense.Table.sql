USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimExpense]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimExpense](
	[claimExpenseID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[paymentDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[paymentMethod] [tinyint] NULL,
	[checkNum] [varchar](10) NULL,
	[note] [varchar](1000) NULL,
	[usersID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[claimID] [int] NULL,
	[claimantID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[payeeName] [varchar](250) NULL,
	[checkPrinted] [tinyint] NULL,
	[checkPrintedDate] [smalldatetime] NULL,
	[isExpense] [tinyint] NULL,
	[recoveryType] [tinyint] NULL,
	[vendorID] [int] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[deductibleApplied] [dbo].[CURRENCY] NULL,
	[mailName] [varchar](250) NULL,
	[expenseType] [tinyint] NULL,
	[pmtApproved] [tinyint] NULL,
	[pmtApprovedUsersID] [int] NULL,
	[pmtApprovedDate] [smalldatetime] NULL,
	[paymentType] [varchar](10) NULL,
	[payTo] [tinyint] NULL,
	[bankAccountID] [int] NULL,
	[UseManualAddress] [bit] NULL,
	[isDVPayment] [tinyint] NULL,
	[treatyID] [int] NULL,
	[checkPrintedUser] [int] NULL,
	[claimExpenseBatchID] [int] NULL,
	[claimBenefitTypeID] [tinyint] NULL,
	[interestOwed] [tinyint] NULL,
	[interestPaid] [dbo].[CURRENCY] NULL,
	[interestRate] [decimal](5, 2) NULL,
	[isTotalLoss] [tinyint] NULL,
	[voidClaimExpenseID] [int] NULL,
	[invoiceNum] [varchar](25) NULL,
	[isExported] [tinyint] NULL,
 CONSTRAINT [PK_ClaimExpense] PRIMARY KEY CLUSTERED 
(
	[claimExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [ClaimExpense_PolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [ClaimExpense_PolicyID] ON [dbo].[ClaimExpense]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpense_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpense_addDate] ON [dbo].[ClaimExpense]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpense_bankAccountID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpense_bankAccountID] ON [dbo].[ClaimExpense]
(
	[bankAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpense_claimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpense_claimID] ON [dbo].[ClaimExpense]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpense_claimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpense_claimIncidentID] ON [dbo].[ClaimExpense]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpense_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpense_usersID] ON [dbo].[ClaimExpense]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpensePayTo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpensePayTo] ON [dbo].[ClaimExpense]
(
	[payTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpensePmtApproved]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpensePmtApproved] ON [dbo].[ClaimExpense]
(
	[pmtApproved] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimExpenseVendorID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpenseVendorID] ON [dbo].[ClaimExpense]
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_insuredID]  DEFAULT (getdate()) FOR [paymentDate]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_agentID]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_paymentMethod]  DEFAULT (1) FOR [paymentMethod]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_claimantID]  DEFAULT (1) FOR [claimantID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_checkPrinted]  DEFAULT (0) FOR [checkPrinted]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_isExpense]  DEFAULT (0) FOR [isExpense]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_recoveryType]  DEFAULT (0) FOR [recoveryType]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_vedndorID]  DEFAULT (1) FOR [vendorID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_deductableApplied]  DEFAULT (0) FOR [deductibleApplied]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_expenseType]  DEFAULT (0) FOR [expenseType]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_pmtApproved]  DEFAULT (0) FOR [pmtApproved]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_pmtApprovedUsersID]  DEFAULT (1) FOR [pmtApprovedUsersID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_payTo]  DEFAULT (0) FOR [payTo]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_bankAccountID]  DEFAULT (1) FOR [bankAccountID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_manualName]  DEFAULT (0) FOR [UseManualAddress]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_isDVPayment]  DEFAULT (0) FOR [isDVPayment]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_claimExpenseBatchID]  DEFAULT ((1)) FOR [claimExpenseBatchID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_interestOwed]  DEFAULT ((0)) FOR [interestOwed]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_interestPaid]  DEFAULT ((0)) FOR [interestPaid]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  CONSTRAINT [DF_ClaimExpense_interestRate]  DEFAULT ((0)) FOR [interestRate]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  DEFAULT ((0)) FOR [isTotalLoss]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  DEFAULT ((1)) FOR [voidClaimExpenseID]
GO
ALTER TABLE [dbo].[ClaimExpense] ADD  DEFAULT ((0)) FOR [isExported]
GO
