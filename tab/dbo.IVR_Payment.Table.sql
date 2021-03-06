USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Payment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Payment](
	[IVR_PaymentID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[callID] [int] NOT NULL,
	[type] [tinyint] NULL,
	[paymentMethod] [tinyint] NULL,
	[cardType] [varchar](6) NULL,
	[cardNumber] [varchar](32) NULL,
	[cardAuth] [varchar](20) NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[primorisFee] [dbo].[CURRENCY] NULL,
	[paymentDate] [smalldatetime] NULL,
	[paymentID] [int] NOT NULL,
	[PTSIdentifier] [varchar](3) NULL,
	[addDate] [smalldatetime] NOT NULL,
	[errorMessage] [varchar](60) NULL,
	[remoteIP] [varchar](15) NULL,
	[isPosted] [tinyint] NOT NULL,
	[isExported] [tinyint] NOT NULL,
	[cardholder] [varchar](60) NULL,
	[transactionID] [varchar](32) NULL,
	[settlementID] [int] NULL,
 CONSTRAINT [PK_IVR_Payment] PRIMARY KEY CLUSTERED 
(
	[IVR_PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_IVR_Payment_amount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_amount] ON [dbo].[IVR_Payment]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Payment_callID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_callID] ON [dbo].[IVR_Payment]
(
	[callID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Payment_paymentDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_paymentDate] ON [dbo].[IVR_Payment]
(
	[paymentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Payment_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_paymentID] ON [dbo].[IVR_Payment]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Payment_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_policyID] ON [dbo].[IVR_Payment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Payment_transactionID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Payment_transactionID] ON [dbo].[IVR_Payment]
(
	[transactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_callID]  DEFAULT ((0)) FOR [callID]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_paymentID]  DEFAULT ((1)) FOR [paymentID]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_isPosted]  DEFAULT ((0)) FOR [isPosted]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_isExported]  DEFAULT ((0)) FOR [isExported]
GO
ALTER TABLE [dbo].[IVR_Payment] ADD  CONSTRAINT [DF_IVR_Payment_settlementID]  DEFAULT ((0)) FOR [settlementID]
GO
