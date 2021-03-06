USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Response]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Response](
	[IVR_ResponseID] [int] IDENTITY(10,1) NOT NULL,
	[callID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[sent_policyNum] [varchar](32) NULL,
	[sent_pin] [varchar](32) NULL,
	[requestStatus] [tinyint] NOT NULL,
	[policyStatus] [tinyint] NULL,
	[balance] [dbo].[CURRENCY] NULL,
	[nextPayment] [dbo].[CURRENCY] NULL,
	[nextPaymentDue] [smalldatetime] NULL,
	[renewalAmount] [dbo].[CURRENCY] NULL,
	[isRenewal] [tinyint] NULL,
	[effective] [smalldatetime] NULL,
	[expiration] [smalldatetime] NULL,
	[allowRenew] [tinyint] NULL,
	[allowPayment] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[cancelledReason] [tinyint] NULL,
	[lastPaymentDate] [smalldatetime] NULL,
	[lastPaymentAmount] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NOT NULL,
	[errorMessage] [varchar](50) NULL,
	[remoteIP] [varchar](15) NULL,
	[uri] [varchar](255) NULL,
 CONSTRAINT [PK_IVR_Response] PRIMARY KEY CLUSTERED 
(
	[IVR_ResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_IVR_Response_AddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Response_AddDate] ON [dbo].[IVR_Response]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Response_CallID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Response_CallID] ON [dbo].[IVR_Response]
(
	[callID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Response_InsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Response_InsuredID] ON [dbo].[IVR_Response]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Response_PolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Response_PolicyID] ON [dbo].[IVR_Response]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_Response] ADD  CONSTRAINT [DF_IVR_Response_callID]  DEFAULT ((0)) FOR [callID]
GO
ALTER TABLE [dbo].[IVR_Response] ADD  CONSTRAINT [DF_IVR_Response_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[IVR_Response] ADD  CONSTRAINT [DF_IVR_Response_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[IVR_Response] ADD  CONSTRAINT [DF_IVR_Response_requestStatus]  DEFAULT ((0)) FOR [requestStatus]
GO
ALTER TABLE [dbo].[IVR_Response] ADD  CONSTRAINT [DF_IVR_Response_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
