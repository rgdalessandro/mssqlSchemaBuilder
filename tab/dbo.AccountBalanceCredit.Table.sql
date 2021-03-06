USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountBalanceCredit]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountBalanceCredit](
	[accountBalanceCreditID] [int] IDENTITY(10,1) NOT NULL,
	[accountType] [tinyint] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[companyID] [int] NULL,
	[financeCompanyID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[policyID] [int] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[processDate] [smalldatetime] NULL,
	[adjustmentType] [tinyint] NULL,
	[usersID] [int] NULL,
	[accountExpenseID] [int] NULL,
	[lienholderID] [int] NULL,
 CONSTRAINT [PK_AccountBalanceCredit] PRIMARY KEY CLUSTERED 
(
	[accountBalanceCreditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountBalanceCredit_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCredit_lienholderID] ON [dbo].[AccountBalanceCredit]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditAccountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditAccountExpenseID] ON [dbo].[AccountBalanceCredit]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditAccountType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditAccountType] ON [dbo].[AccountBalanceCredit]
(
	[accountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditActionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditActionType] ON [dbo].[AccountBalanceCredit]
(
	[adjustmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditAddDate] ON [dbo].[AccountBalanceCredit]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditAmount] ON [dbo].[AccountBalanceCredit]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditClaimantID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditClaimantID] ON [dbo].[AccountBalanceCredit]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditCompanyID] ON [dbo].[AccountBalanceCredit]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditFinanceCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditFinanceCompanyID] ON [dbo].[AccountBalanceCredit]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditInsuredID] ON [dbo].[AccountBalanceCredit]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditPolicyID] ON [dbo].[AccountBalanceCredit]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditProcessDate] ON [dbo].[AccountBalanceCredit]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountBalanceCreditProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountBalanceCreditProducerID] ON [dbo].[AccountBalanceCredit]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_accountType]  DEFAULT (0) FOR [accountType]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_claimID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_expenseDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_expenseType]  DEFAULT (0) FOR [adjustmentType]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[AccountBalanceCredit] ADD  CONSTRAINT [DF_AccountBalanceCredit_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
