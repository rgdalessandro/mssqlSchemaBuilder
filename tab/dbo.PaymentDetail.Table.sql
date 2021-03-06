USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetail](
	[paymentDetailID] [int] IDENTITY(10,1) NOT NULL,
	[paymentInfoID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[paymentName] [varchar](100) NULL,
	[method] [tinyint] NOT NULL,
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
	[paymentID] [int] NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
	[usersID] [int] NOT NULL,
	[isExported] [tinyint] NOT NULL,
	[exportDate] [smalldatetime] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[paymentExportBatchID] [int] NOT NULL,
	[declined] [tinyint] NOT NULL,
	[declinedReason] [varchar](100) NULL,
	[declinedDate] [smalldatetime] NULL,
	[producerID] [int] NULL,
 CONSTRAINT [PK_PaymentDetail] PRIMARY KEY CLUSTERED 
(
	[paymentDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentDetail_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_addDate] ON [dbo].[PaymentDetail]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_ccExpDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_ccExpDate] ON [dbo].[PaymentDetail]
(
	[ccExpDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_declinedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_declinedDate] ON [dbo].[PaymentDetail]
(
	[declinedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_exportDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_exportDate] ON [dbo].[PaymentDetail]
(
	[exportDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_insuredID] ON [dbo].[PaymentDetail]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_paymentExportBatchID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_paymentExportBatchID] ON [dbo].[PaymentDetail]
(
	[paymentExportBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_paymentID] ON [dbo].[PaymentDetail]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_paymentInfoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_paymentInfoID] ON [dbo].[PaymentDetail]
(
	[paymentInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_policyID] ON [dbo].[PaymentDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_producerID] ON [dbo].[PaymentDetail]
(
	[producerID] ASC,
	[policyID] ASC,
	[insuredID] ASC,
	[paymentInfoID] ASC,
	[paymentID] ASC,
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentDetail_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentDetail_usersID] ON [dbo].[PaymentDetail]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_paymentInfoID]  DEFAULT (1) FOR [paymentInfoID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_method]  DEFAULT (0) FOR [method]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_ccType]  DEFAULT (0) FOR [ccType]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_ccCountry]  DEFAULT (0) FOR [ccCountry]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_ccProcessingCenter]  DEFAULT (0) FOR [ccProcessingCenter]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_paymentID]  DEFAULT (1) FOR [paymentID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_isExported]  DEFAULT (0) FOR [isExported]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_paymentExportBatchID]  DEFAULT (1) FOR [paymentExportBatchID]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_declined]  DEFAULT (0) FOR [declined]
GO
ALTER TABLE [dbo].[PaymentDetail] ADD  CONSTRAINT [DF_PaymentDetail_producerID]  DEFAULT (1) FOR [producerID]
GO
