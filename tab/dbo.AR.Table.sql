USE [Windhaven]
GO
/****** Object:  Table [dbo].[AR]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AR](
	[arID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[arDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[arType] [tinyint] NULL,
	[isDeposit] [bit] NOT NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[amountCleared] [dbo].[CURRENCY] NULL,
	[invoiced] [tinyint] NULL,
	[invoiceDate] [smalldatetime] NULL,
	[invoiceEndDate] [smalldatetime] NULL,
	[invoiceID] [int] NULL,
	[arSubType] [tinyint] NULL,
	[policyPremiumID] [int] NULL,
	[accountExpenseID] [int] NULL,
	[installmentNumber] [tinyint] NULL,
	[isFinance] [tinyint] NULL,
	[ARGroupType] [tinyint] NULL,
	[debugNote] [varchar](50) NULL,
	[isAdjustment] [tinyint] NULL,
	[note] [varchar](1000) NULL,
 CONSTRAINT [PK_AR] PRIMARY KEY CLUSTERED 
(
	[arID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AR_ARGroupType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AR_ARGroupType] ON [dbo].[AR]
(
	[ARGroupType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AR_arType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AR_arType] ON [dbo].[AR]
(
	[arType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AR_arType_invoiced_amount_42a398cab1e6ace438d0b9f99c8381c8]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AR_arType_invoiced_amount_42a398cab1e6ace438d0b9f99c8381c8] ON [dbo].[AR]
(
	[arType] ASC,
	[invoiced] ASC,
	[amount] ASC
)
INCLUDE ( 	[policyID],
	[arDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AR_installmentNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AR_installmentNumber] ON [dbo].[AR]
(
	[installmentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AR_isFinance]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AR_isFinance] ON [dbo].[AR]
(
	[isFinance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARAccountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARAccountExpenseID] ON [dbo].[AR]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARAddDate] ON [dbo].[AR]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARAmount] ON [dbo].[AR]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARarDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARarDate] ON [dbo].[AR]
(
	[arDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARArSubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARArSubType] ON [dbo].[AR]
(
	[arSubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARInvoiced]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARInvoiced] ON [dbo].[AR]
(
	[invoiced] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARInvoiceEndDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARInvoiceEndDate] ON [dbo].[AR]
(
	[invoiceEndDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARPolicyID] ON [dbo].[AR]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ARPolicyPremiumID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARPolicyPremiumID] ON [dbo].[AR]
(
	[policyPremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_arDate]  DEFAULT (getdate()) FOR [arDate]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_arType]  DEFAULT (1) FOR [arType]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_isDeposit]  DEFAULT (0) FOR [isDeposit]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_amountCleared]  DEFAULT (0) FOR [amountCleared]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_invoice]  DEFAULT (0) FOR [invoiced]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_arSubType]  DEFAULT (0) FOR [arSubType]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_policyPremiumID]  DEFAULT (1) FOR [policyPremiumID]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_installmentNumber]  DEFAULT (0) FOR [installmentNumber]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_isFinance]  DEFAULT (0) FOR [isFinance]
GO
ALTER TABLE [dbo].[AR] ADD  CONSTRAINT [DF_AR_ARGroupType]  DEFAULT (0) FOR [ARGroupType]
GO
ALTER TABLE [dbo].[AR] ADD  DEFAULT ((0)) FOR [isAdjustment]
GO
