USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Recurring]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Recurring](
	[IVR_RecurringID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[paymentInfoID] [int] NOT NULL,
	[invoiceID] [int] NOT NULL,
	[paymentAmount] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NOT NULL,
	[isProcessed] [tinyint] NOT NULL,
	[processedDate] [smalldatetime] NOT NULL,
	[isSuccess] [tinyint] NOT NULL,
	[paymentID] [int] NOT NULL,
	[IVR_PaymentID] [int] NOT NULL,
	[cardAuth] [varchar](20) NULL,
	[result] [varchar](100) NULL,
	[resultCode] [varchar](1) NULL,
	[retryNum] [tinyint] NOT NULL,
 CONSTRAINT [PK_IVR_Recurring] PRIMARY KEY CLUSTERED 
(
	[IVR_RecurringID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_IVR_Recurring_invoiceID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_invoiceID] ON [dbo].[IVR_Recurring]
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Recurring_IVR_PaymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_IVR_PaymentID] ON [dbo].[IVR_Recurring]
(
	[IVR_PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Recurring_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_paymentID] ON [dbo].[IVR_Recurring]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Recurring_paymentInfoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_paymentInfoID] ON [dbo].[IVR_Recurring]
(
	[paymentInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Recurring_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_policyID] ON [dbo].[IVR_Recurring]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Recurring_processedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Recurring_processedDate] ON [dbo].[IVR_Recurring]
(
	[processedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_paymentInfoID]  DEFAULT ((1)) FOR [paymentInfoID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_invoiceID]  DEFAULT ((1)) FOR [invoiceID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_isProcessed]  DEFAULT ((0)) FOR [isProcessed]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_processedDate]  DEFAULT (getdate()) FOR [processedDate]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_isSuccess]  DEFAULT ((0)) FOR [isSuccess]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_paymentID]  DEFAULT ((1)) FOR [paymentID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_IVR_PaymentID]  DEFAULT ((1)) FOR [IVR_PaymentID]
GO
ALTER TABLE [dbo].[IVR_Recurring] ADD  CONSTRAINT [DF_IVR_Recurring_retryNum]  DEFAULT ((0)) FOR [retryNum]
GO
