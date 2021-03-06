USE [Windhaven]
GO
/****** Object:  Table [dbo].[Expense]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expense](
	[expenseID] [int] IDENTITY(10,1) NOT NULL,
	[expenseDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[expenseType] [tinyint] NULL,
	[method] [tinyint] NULL,
	[checkNum] [varchar](10) NULL,
	[accountName] [varchar](75) NULL,
	[accountNum] [varchar](35) NULL,
	[note] [varchar](1000) NULL,
	[processed] [bit] NOT NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[claimID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Expense] PRIMARY KEY CLUSTERED 
(
	[expenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ExpenseAccountName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseAccountName] ON [dbo].[Expense]
(
	[accountName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseClaimID] ON [dbo].[Expense]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseCompanyID] ON [dbo].[Expense]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseExpenseDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseExpenseDate] ON [dbo].[Expense]
(
	[expenseDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseExpenseType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseExpenseType] ON [dbo].[Expense]
(
	[expenseType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseInsuredID] ON [dbo].[Expense]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpensePolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpensePolicyID] ON [dbo].[Expense]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExpenseProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExpenseProducerID] ON [dbo].[Expense]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_paymentDate]  DEFAULT (getdate()) FOR [expenseDate]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_paymentType]  DEFAULT (1) FOR [expenseType]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_method]  DEFAULT (1) FOR [method]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_processed]  DEFAULT (0) FOR [processed]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_insuredID1]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[Expense] ADD  CONSTRAINT [DF_Expense_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
