USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceAccountExpense]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceAccountExpense](
	[financeAccountExpenseID] [int] IDENTITY(10,1) NOT NULL,
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
 CONSTRAINT [PK_FinanceAccountExpense] PRIMARY KEY CLUSTERED 
(
	[financeAccountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amountBalance]  DEFAULT (0) FOR [amountBalance]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amount3]  DEFAULT (0) FOR [amountCommission]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amount2]  DEFAULT (0) FOR [amountRefund]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amount1]  DEFAULT (0) FOR [amountAdjustment]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amountAR]  DEFAULT (0) FOR [amountPolicyAR]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amountPayment]  DEFAULT (0) FOR [amountPolicyPayment]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_amountBalanceCredit]  DEFAULT (0) FOR [amountBalanceCredit]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_accountType]  DEFAULT (0) FOR [accountType]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_claimantID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_processed]  DEFAULT (0) FOR [isProcessed]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_processDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_processed1]  DEFAULT (0) FOR [isExported]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_processDate1]  DEFAULT (getdate()) FOR [exportDate]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_actionMethod]  DEFAULT (0) FOR [actionMethod]
GO
ALTER TABLE [dbo].[FinanceAccountExpense] ADD  CONSTRAINT [DF_FinanceAccountExpense_usersID]  DEFAULT (1) FOR [usersID]
GO
