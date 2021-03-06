USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceRefund]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceRefund](
	[financeRefundID] [int] IDENTITY(10,1) NOT NULL,
	[financeCompanyID] [int] NULL,
	[financeContractID] [int] NULL,
	[refundPaid] [dbo].[CURRENCY] NULL,
	[paidDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
	[refundType] [tinyint] NULL,
	[usersID] [int] NULL,
	[note] [varchar](1000) NULL,
	[accountExpenseID] [int] NULL,
	[producerID] [int] NULL,
	[payToType] [tinyint] NULL,
	[insuredID] [int] NULL,
 CONSTRAINT [PK_FinanceRefund] PRIMARY KEY CLUSTERED 
(
	[financeRefundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_policyID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_refundPaid]  DEFAULT (0) FOR [refundPaid]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_refundType]  DEFAULT (0) FOR [refundType]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_producerID_1]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_payToType]  DEFAULT (0) FOR [payToType]
GO
ALTER TABLE [dbo].[FinanceRefund] ADD  CONSTRAINT [DF_FinanceRefund_insuredID_1]  DEFAULT (1) FOR [insuredID]
GO
