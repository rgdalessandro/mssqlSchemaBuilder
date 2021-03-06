USE [Windhaven]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[paymentID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[paymentDate] [datetime] NULL,
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
	[addDate] [datetime] NULL,
	[invoiced] [tinyint] NULL,
	[invoiceDate] [smalldatetime] NULL,
	[invoiceEndDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[financeCompanyID] [int] NULL,
	[refundDate] [smalldatetime] NULL,
	[refundID] [int] NULL,
	[accountExpenseID] [int] NULL,
	[invoiceID] [int] NULL,
	[postMarkedDate] [smalldatetime] NULL,
	[noTrans] [tinyint] NULL,
	[voidPaymentID] [int] NULL,
	[allowAdjustment] [tinyint] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Payment_noTrans_b692a060a50e8c7f5de7a38db3e780a0]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payment_noTrans_b692a060a50e8c7f5de7a38db3e780a0] ON [dbo].[Payment]
(
	[noTrans] ASC
)
INCLUDE ( 	[policyID],
	[amount]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payment_paymentType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payment_paymentType] ON [dbo].[Payment]
(
	[paymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Payment_voidPaymentID_61ecd6d1a68774369cde389d775f5cfb]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Payment_voidPaymentID_61ecd6d1a68774369cde389d775f5cfb] ON [dbo].[Payment]
(
	[voidPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentAddDate] ON [dbo].[Payment]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentAmount] ON [dbo].[Payment]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDepositNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDepositNum] ON [dbo].[Payment]
(
	[depositNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPaymentDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPaymentDate] ON [dbo].[Payment]
(
	[paymentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPolicyID] ON [dbo].[Payment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentProducerID] ON [dbo].[Payment]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentRefundID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentRefundID] ON [dbo].[Payment]
(
	[refundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_paymentDate]  DEFAULT (getdate()) FOR [paymentDate]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_paymentType]  DEFAULT (1) FOR [paymentType]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_method]  DEFAULT (1) FOR [method]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_isDeposit]  DEFAULT (0) FOR [isDeposit]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_paymentDate1]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_invoiced]  DEFAULT (0) FOR [invoiced]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_nsf]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_refundID1]  DEFAULT (1) FOR [refundID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_postMarkedDate]  DEFAULT (getdate()) FOR [postMarkedDate]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_noTrans]  DEFAULT (0) FOR [noTrans]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_voidPaymentID]  DEFAULT ((1)) FOR [voidPaymentID]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT ((1)) FOR [allowAdjustment]
GO
