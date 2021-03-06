USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentInfo]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentInfo](
	[paymentInfoID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[paymentName] [varchar](100) NULL,
	[paymentInfoType] [tinyint] NOT NULL,
	[bankRoutingNum] [varchar](9) NULL,
	[bankName] [varchar](50) NULL,
	[bankAddress1] [dbo].[ADDRESS] NULL,
	[bankAddress2] [dbo].[ADDRESS] NULL,
	[bankCity] [dbo].[CITYCOUNTY] NULL,
	[bankState] [dbo].[STATE_Abbrev] NULL,
	[bankZip] [dbo].[ZIP_Formatted] NULL,
	[bankAcctNum] [varchar](25) NULL,
	[ccType] [tinyint] NULL,
	[ccNumber] [varchar](32) NULL,
	[ccExpDate] [smalldatetime] NULL,
	[ccSecurity1] [varchar](32) NULL,
	[ccSecurity2] [varchar](50) NULL,
	[ccCountry] [tinyint] NOT NULL,
	[ccProcessingCenter] [tinyint] NOT NULL,
	[lastPaymentDate] [smalldatetime] NULL,
	[recurringPayment] [tinyint] NOT NULL,
	[lastPaymentDetailID] [int] NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
	[usersID] [int] NOT NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[status] [tinyint] NOT NULL,
	[producerID] [int] NULL,
	[cardID] [varchar](32) NULL,
	[responseText] [varchar](200) NULL,
	[account_token] [varchar](25) NULL,
 CONSTRAINT [PK_PaymentInfo] PRIMARY KEY CLUSTERED 
(
	[paymentInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentInfo_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_addDate] ON [dbo].[PaymentInfo]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_ccExpDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_ccExpDate] ON [dbo].[PaymentInfo]
(
	[ccExpDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_insuredID] ON [dbo].[PaymentInfo]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_lastPaymentDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_lastPaymentDate] ON [dbo].[PaymentInfo]
(
	[lastPaymentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_lastPaymentDetailID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_lastPaymentDetailID] ON [dbo].[PaymentInfo]
(
	[lastPaymentDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_policyID] ON [dbo].[PaymentInfo]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_producerID] ON [dbo].[PaymentInfo]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_status] ON [dbo].[PaymentInfo]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentInfo_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfo_usersID] ON [dbo].[PaymentInfo]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_paymentInfoType]  DEFAULT (0) FOR [paymentInfoType]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_ccType]  DEFAULT (0) FOR [ccType]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_ccCountry]  DEFAULT (0) FOR [ccCountry]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_ccProcessingCenter]  DEFAULT (0) FOR [ccProcessingCenter]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_recurringPayment]  DEFAULT (0) FOR [recurringPayment]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_lastPaymentDetailID]  DEFAULT (1) FOR [lastPaymentDetailID]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[PaymentInfo] ADD  CONSTRAINT [DF_PaymentInfo_producerID]  DEFAULT (1) FOR [producerID]
GO
