USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceTrans]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceTrans](
	[financeTransID] [int] IDENTITY(10,1) NOT NULL,
	[financePaymentID] [int] NULL,
	[transDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[transType] [tinyint] NULL,
	[expenseAccountName] [varchar](75) NULL,
	[expenseAccountNum] [varchar](35) NULL,
	[incomeAccountName] [varchar](75) NULL,
	[incomeAccountNum] [varchar](35) NULL,
	[depositNum] [int] NULL,
	[financeContractID] [int] NULL,
	[isRenewal] [bit] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[commissionID] [int] NULL,
	[commissionRate] [smallmoney] NULL,
	[transSubType] [tinyint] NULL,
 CONSTRAINT [PK_FinanceTrans] PRIMARY KEY CLUSTERED 
(
	[financeTransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_FinancePaymentID]  DEFAULT (1) FOR [financePaymentID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_transDate]  DEFAULT (getdate()) FOR [transDate]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_transType]  DEFAULT (1) FOR [transType]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_policyID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_isRenewal]  DEFAULT (0) FOR [isRenewal]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_commissionID]  DEFAULT (1) FOR [commissionID]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_commissionRate]  DEFAULT (0) FOR [commissionRate]
GO
ALTER TABLE [dbo].[FinanceTrans] ADD  CONSTRAINT [DF_FinanceTrans_transSubType]  DEFAULT (0) FOR [transSubType]
GO
