USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimExpenseLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimExpenseLog](
	[claimExpenseLogID] [int] IDENTITY(10,1) NOT NULL,
	[logDate] [datetime] NULL,
	[logAction] [varchar](10) NULL,
	[actionUsersID] [int] NULL,
	[claimExpenseID] [int] NULL,
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
	[useManualAddress] [tinyint] NULL,
	[isDVPayment] [tinyint] NULL,
	[treatyID] [int] NULL,
	[checkPrintedUser] [int] NULL,
	[claimExpenseBatchID] [int] NULL,
	[voidClaimExpenseID] [int] NULL,
	[claimBenefitTypeID] [tinyint] NULL,
	[interestOwed] [tinyint] NULL,
	[interestPaid] [dbo].[CURRENCY] NULL,
	[interestRate] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ClaimExpenseLog] PRIMARY KEY CLUSTERED 
(
	[claimExpenseLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimExpenseLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpenseLog_policyID] ON [dbo].[ClaimExpenseLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimExpenseLog] ADD  CONSTRAINT [DF_ClaimExpenseLog_logDate]  DEFAULT (getdate()) FOR [logDate]
GO
ALTER TABLE [dbo].[ClaimExpenseLog] ADD  CONSTRAINT [DF_ClaimExpenseLog_interestOwed]  DEFAULT ((0)) FOR [interestOwed]
GO
ALTER TABLE [dbo].[ClaimExpenseLog] ADD  CONSTRAINT [DF_ClaimExpenseLog_interestPaid]  DEFAULT ((0)) FOR [interestPaid]
GO
ALTER TABLE [dbo].[ClaimExpenseLog] ADD  CONSTRAINT [DF_ClaimExpenseLog_interestRate]  DEFAULT ((0)) FOR [interestRate]
GO
