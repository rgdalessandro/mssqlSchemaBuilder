USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountExpense]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountExpense](
	[accountExpenseID] [int] IDENTITY(10,1) NOT NULL,
	[amountBalance] [dbo].[CURRENCY] NULL,
	[amountCommission] [dbo].[CURRENCY] NULL,
	[amountRefund] [dbo].[CURRENCY] NULL,
	[amountAdjustment] [dbo].[CURRENCY] NULL,
	[amountPolicyAR] [dbo].[CURRENCY] NULL,
	[amountPolicyPayment] [dbo].[CURRENCY] NULL,
	[amountBalanceCredit] [dbo].[CURRENCY] NULL,
	[accountType] [tinyint] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[companyID] [int] NULL,
	[financeCompanyID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isProcessed] [tinyint] NULL,
	[processDate] [smalldatetime] NULL,
	[isExported] [tinyint] NULL,
	[exportDate] [smalldatetime] NULL,
	[actionType] [tinyint] NULL,
	[actionMethod] [tinyint] NULL,
	[payableTo] [varchar](100) NULL,
	[expenseAccountName] [varchar](75) NULL,
	[expenseAccountNum] [varchar](35) NULL,
	[checkNum] [varchar](25) NULL,
	[note] [varchar](232) NULL,
	[usersID] [int] NULL,
	[billMethod] [tinyint] NULL,
	[lienholderID] [int] NULL,
	[checkPrinted] [tinyint] NULL,
	[bankAccountID] [int] NULL,
	[paymentExportBatchID] [int] NULL,
	[accountExpenseBatchID] [int] NULL,
	[accountExpenseOtherID] [int] NULL,
	[checkPrintedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AccountExpense] PRIMARY KEY CLUSTERED 
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountExpense_isProcessed]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpense_isProcessed] ON [dbo].[AccountExpense]
(
	[isProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpense_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpense_lienholderID] ON [dbo].[AccountExpense]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAccountType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAccountType] ON [dbo].[AccountExpense]
(
	[accountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseActionMethod]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseActionMethod] ON [dbo].[AccountExpense]
(
	[actionMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseActionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseActionType] ON [dbo].[AccountExpense]
(
	[actionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAddDate] ON [dbo].[AccountExpense]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountAdjustment]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountAdjustment] ON [dbo].[AccountExpense]
(
	[amountAdjustment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountBalance]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountBalance] ON [dbo].[AccountExpense]
(
	[amountBalance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountBalanceCredit]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountBalanceCredit] ON [dbo].[AccountExpense]
(
	[amountBalanceCredit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountCommission]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountCommission] ON [dbo].[AccountExpense]
(
	[amountCommission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountPolicyAR]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountPolicyAR] ON [dbo].[AccountExpense]
(
	[amountPolicyAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountPolicyPayment]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountPolicyPayment] ON [dbo].[AccountExpense]
(
	[amountPolicyPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseAmountRefund]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseAmountRefund] ON [dbo].[AccountExpense]
(
	[amountRefund] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseClaimIncidentID] ON [dbo].[AccountExpense]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseCompanyID] ON [dbo].[AccountExpense]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AccountExpenseExpenseAccountName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseExpenseAccountName] ON [dbo].[AccountExpense]
(
	[expenseAccountName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AccountExpenseExpenseAccountNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseExpenseAccountNum] ON [dbo].[AccountExpense]
(
	[expenseAccountNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseFinanceCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseFinanceCompanyID] ON [dbo].[AccountExpense]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseInsuredID] ON [dbo].[AccountExpense]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AccountExpensePayableTo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpensePayableTo] ON [dbo].[AccountExpense]
(
	[payableTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseProcessDate] ON [dbo].[AccountExpense]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseProducerID] ON [dbo].[AccountExpense]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amountBalance]  DEFAULT (0) FOR [amountBalance]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amount3]  DEFAULT (0) FOR [amountCommission]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amount2]  DEFAULT (0) FOR [amountRefund]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amount1]  DEFAULT (0) FOR [amountAdjustment]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amountAR]  DEFAULT (0) FOR [amountPolicyAR]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amountPayment]  DEFAULT (0) FOR [amountPolicyPayment]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_amountBalanceCredit]  DEFAULT (0) FOR [amountBalanceCredit]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_accountType]  DEFAULT (0) FOR [accountType]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_claimantID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_processed]  DEFAULT (0) FOR [isProcessed]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_processDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_processed1]  DEFAULT (0) FOR [isExported]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_processDate1]  DEFAULT (getdate()) FOR [exportDate]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_actionMethod]  DEFAULT (0) FOR [actionMethod]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_checkPrinted]  DEFAULT (0) FOR [checkPrinted]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_bankAccountID]  DEFAULT (1) FOR [bankAccountID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_paymentExportBatchID]  DEFAULT (1) FOR [paymentExportBatchID]
GO
ALTER TABLE [dbo].[AccountExpense] ADD  CONSTRAINT [DF_AccountExpense_accountExpenseBatchID]  DEFAULT ((1)) FOR [accountExpenseBatchID]
GO
