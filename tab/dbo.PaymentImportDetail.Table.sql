USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentImportDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentImportDetail](
	[paymentImportDetailID] [int] IDENTITY(10,1) NOT NULL,
	[paymentImportBatchID] [int] NOT NULL,
	[isCancellation] [tinyint] NOT NULL,
	[invoiceID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[paymentAmount] [dbo].[CURRENCY] NOT NULL,
	[checkNum] [varchar](50) NULL,
	[paymentID] [int] NOT NULL,
	[isError] [tinyint] NOT NULL,
	[errorDescription] [varchar](250) NULL,
	[policyNumber] [varchar](11) NULL,
	[postMarkDate] [smalldatetime] NULL,
	[remitterName] [varchar](30) NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PaymentImportDetail] PRIMARY KEY CLUSTERED 
(
	[paymentImportDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PaymentImportDetail_checkNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_checkNum] ON [dbo].[PaymentImportDetail]
(
	[checkNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_invoiceID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_invoiceID] ON [dbo].[PaymentImportDetail]
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_isCancellation]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_isCancellation] ON [dbo].[PaymentImportDetail]
(
	[isCancellation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_isError]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_isError] ON [dbo].[PaymentImportDetail]
(
	[isError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_paymentID] ON [dbo].[PaymentImportDetail]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_PaymentImportBatchID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_PaymentImportBatchID] ON [dbo].[PaymentImportDetail]
(
	[paymentImportBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportDetail_policyID] ON [dbo].[PaymentImportDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_paymentImportBatchID]  DEFAULT ((1)) FOR [paymentImportBatchID]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_isCancellation]  DEFAULT ((0)) FOR [isCancellation]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_invoiceID]  DEFAULT ((1)) FOR [invoiceID]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_paymentAmount]  DEFAULT ((0)) FOR [paymentAmount]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_checkNum]  DEFAULT ('000') FOR [checkNum]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_paymentID]  DEFAULT ((1)) FOR [paymentID]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_isError]  DEFAULT ((0)) FOR [isError]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_policyNumber]  DEFAULT ('000') FOR [policyNumber]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_remitterName]  DEFAULT ('None') FOR [remitterName]
GO
ALTER TABLE [dbo].[PaymentImportDetail] ADD  CONSTRAINT [DF_PaymentImportDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
