USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinancePayment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancePayment](
	[financePaymentID] [int] IDENTITY(10,1) NOT NULL,
	[financeContractID] [int] NULL,
	[paymentDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[paymentType] [tinyint] NULL,
	[method] [tinyint] NULL,
	[checkNum] [varchar](25) NULL,
	[note] [varchar](1000) NULL,
	[depositNum] [int] NULL,
	[isDeposit] [bit] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[invoiced] [tinyint] NULL,
	[invoiceDate] [smalldatetime] NULL,
	[invoiceEndDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[financeCompanyID] [int] NULL,
	[refundDate] [smalldatetime] NULL,
	[refundID] [int] NULL,
	[splitPayment] [tinyint] NULL,
	[invoiceID] [int] NULL,
	[postMarkedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_FinancePayments] PRIMARY KEY CLUSTERED 
(
	[financePaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_policyID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_paymentDate]  DEFAULT (getdate()) FOR [paymentDate]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_paymentType]  DEFAULT (1) FOR [paymentType]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_method]  DEFAULT (1) FOR [method]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_isDeposit]  DEFAULT (0) FOR [isDeposit]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_paymentDate1]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_invoiced]  DEFAULT (0) FOR [invoiced]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_nsf]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_refundID1]  DEFAULT (1) FOR [refundID]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_splitPayment]  DEFAULT (0) FOR [splitPayment]
GO
ALTER TABLE [dbo].[FinancePayment] ADD  CONSTRAINT [DF_FinancePayment_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
