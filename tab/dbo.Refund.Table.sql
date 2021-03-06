USE [Windhaven]
GO
/****** Object:  Table [dbo].[Refund]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refund](
	[refundID] [int] IDENTITY(10,1) NOT NULL,
	[financeCompanyID] [int] NULL,
	[policyID] [int] NULL,
	[refundPaid] [dbo].[CURRENCY] NULL,
	[paidDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
	[refundType] [tinyint] NULL,
	[usersID] [int] NULL,
	[note] [varchar](1000) NULL,
	[accountExpenseID] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[payToType] [tinyint] NULL,
	[lienholderID] [int] NULL,
	[accountExpenseOtherID] [int] NULL,
 CONSTRAINT [PK_Refund] PRIMARY KEY CLUSTERED 
(
	[refundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Refund_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Refund_lienholderID] ON [dbo].[Refund]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundAccountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundAccountExpenseID] ON [dbo].[Refund]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundFinanceCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundFinanceCompanyID] ON [dbo].[Refund]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundInsuredID] ON [dbo].[Refund]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundPaidDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundPaidDate] ON [dbo].[Refund]
(
	[paidDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundPayToType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundPayToType] ON [dbo].[Refund]
(
	[payToType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundPolicyID] ON [dbo].[Refund]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundProducerID] ON [dbo].[Refund]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundRefundPaid]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundRefundPaid] ON [dbo].[Refund]
(
	[refundPaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_RefundRefundType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RefundRefundType] ON [dbo].[Refund]
(
	[refundType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_producerID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_financeCompanyID1]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_commissionPaid]  DEFAULT (0) FOR [refundPaid]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_commissionType]  DEFAULT (0) FOR [refundType]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_insuredID_1]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_producerID_1]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_payToType]  DEFAULT (0) FOR [payToType]
GO
ALTER TABLE [dbo].[Refund] ADD  CONSTRAINT [DF_Refund_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
