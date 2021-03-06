USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountIncome]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountIncome](
	[accountIncomeID] [int] IDENTITY(10,1) NOT NULL,
	[accountType] [tinyint] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[companyID] [int] NULL,
	[financeCompanyID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isProcessed] [tinyint] NULL,
	[processDate] [smalldatetime] NULL,
	[amountTotal] [dbo].[CURRENCY] NULL,
	[amountPolicyPayments] [dbo].[CURRENCY] NULL,
	[amountCredit] [dbo].[CURRENCY] NULL,
	[actionType] [tinyint] NULL,
	[actionMethod] [tinyint] NULL,
	[checkNum] [varchar](25) NULL,
	[note] [varchar](232) NULL,
	[usersID] [int] NULL,
	[lienholderID] [int] NULL,
 CONSTRAINT [PK_AccountIncome] PRIMARY KEY CLUSTERED 
(
	[accountIncomeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountIncome_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncome_lienholderID] ON [dbo].[AccountIncome]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeAccountType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeAccountType] ON [dbo].[AccountIncome]
(
	[accountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeActionMethod]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeActionMethod] ON [dbo].[AccountIncome]
(
	[actionMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeActionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeActionType] ON [dbo].[AccountIncome]
(
	[actionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeAddDate] ON [dbo].[AccountIncome]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeAmountCredit]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeAmountCredit] ON [dbo].[AccountIncome]
(
	[amountCredit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeAmountPolicyPayments]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeAmountPolicyPayments] ON [dbo].[AccountIncome]
(
	[amountPolicyPayments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeAmountTotal]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeAmountTotal] ON [dbo].[AccountIncome]
(
	[amountTotal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeClaimIncidentID] ON [dbo].[AccountIncome]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeCompanyID] ON [dbo].[AccountIncome]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeFinanceCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeFinanceCompanyID] ON [dbo].[AccountIncome]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeInsuredID] ON [dbo].[AccountIncome]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeProcessDate] ON [dbo].[AccountIncome]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeProcessed]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeProcessed] ON [dbo].[AccountIncome]
(
	[isProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountIncomeProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountIncomeProducerID] ON [dbo].[AccountIncome]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_accountType]  DEFAULT (0) FOR [accountType]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_claimantID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_processed]  DEFAULT (0) FOR [isProcessed]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_processDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_amountTotal]  DEFAULT (0) FOR [amountTotal]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_amountPolicyPayments]  DEFAULT (0) FOR [amountPolicyPayments]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_amountCredit]  DEFAULT (0) FOR [amountCredit]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_actionMethod]  DEFAULT (0) FOR [actionMethod]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountIncome] ADD  CONSTRAINT [DF_AccountIncome_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
