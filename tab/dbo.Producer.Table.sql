USE [Windhaven]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[producerID] [int] IDENTITY(10,1) NOT NULL,
	[code] [varchar](15) NULL,
	[subcode] [varchar](15) NULL,
	[producerName] [varchar](65) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[taxID] [varchar](11) NULL,
	[taxType] [tinyint] NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[subProducer] [tinyint] NULL,
	[usersID] [int] NULL,
	[mainProducerID] [int] NULL,
	[mainProducerName] [varchar](65) NULL,
	[branchID] [int] NULL,
	[branchName] [varchar](65) NULL,
	[commissionRate] [smallmoney] NULL,
	[renewalCommissionRate] [smallmoney] NULL,
	[territory] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[commissionCheckMethod] [tinyint] NULL,
	[monitorProducer] [tinyint] NULL,
	[stateLicensing] [varchar](2500) NULL,
	[contactFName] [varchar](35) NULL,
	[contactMiddle] [varchar](35) NULL,
	[contactLName] [varchar](35) NULL,
	[contactTitle] [varchar](65) NULL,
	[addDate] [datetime] NULL,
	[importProducerCode] [varchar](15) NULL,
	[physicalAddress1] [varchar](50) NULL,
	[physicalAddress2] [varchar](50) NULL,
	[physicalCity] [varchar](35) NULL,
	[physicalState] [char](2) NULL,
	[physicalZip] [varchar](10) NULL,
	[county] [varchar](50) NULL,
	[assignedSalesRep] [varchar](50) NULL,
	[assignedSalesRepID] [int] NULL,
	[SSN] [varchar](11) NULL,
	[suspenseEndorsement] [tinyint] NULL,
	[producerGroupID] [int] NULL,
	[endorsementReview] [tinyint] NULL,
	[renewalProducerID] [int] NULL,
	[underwriterID] [int] NULL,
	[emailBatch] [tinyint] NULL,
	[ccEmail1] [dbo].[EMAIL] NULL,
	[ccEmail2] [dbo].[EMAIL] NULL,
	[batchPrintMethod] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[noLogEntry] [tinyint] NULL,
	[commissionCheckEFT] [tinyint] NULL,
	[printByBranch] [tinyint] NULL,
	[captive] [tinyint] NULL,
	[choicepointCode] [varchar](3) NULL,
	[allowTerminatedPay] [tinyint] NULL,
	[eSignatureAccess] [tinyint] NULL,
	[isDirectEsigAccess] [tinyint] NULL,
	[directOnlineAccess] [tinyint] NULL,
	[suspenseNewBusiness] [tinyint] NULL,
	[POSPrint] [tinyint] NULL,
	[isInternal] [tinyint] NULL,
	[allowAgentSweep] [bit] NULL,
	[commissionPayableAddressID] [int] NULL,
	[hasIVANS] [tinyint] NULL,
 CONSTRAINT [PK_Producer_producerID] PRIMARY KEY CLUSTERED 
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Producer_assignedSalesRepID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_assignedSalesRepID] ON [dbo].[Producer]
(
	[assignedSalesRepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_branchID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_branchID] ON [dbo].[Producer]
(
	[branchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_mainProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_mainProducerID] ON [dbo].[Producer]
(
	[mainProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_monitorProducer]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_monitorProducer] ON [dbo].[Producer]
(
	[monitorProducer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_producerGroupID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_producerGroupID] ON [dbo].[Producer]
(
	[producerGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Producer_producerName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_producerName] ON [dbo].[Producer]
(
	[producerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_renewalProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_renewalProducerID] ON [dbo].[Producer]
(
	[renewalProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_status_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_status_Includes] ON [dbo].[Producer]
(
	[status] ASC
)
INCLUDE ( 	[cancelledDate],
	[producerID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_underwriterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_underwriterID] ON [dbo].[Producer]
(
	[underwriterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Producer_usersID] ON [dbo].[Producer]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_taxType]  DEFAULT (0) FOR [taxType]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_status]  DEFAULT (1) FOR [status]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_subProducer]  DEFAULT (0) FOR [subProducer]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_mainProducerID]  DEFAULT (1) FOR [mainProducerID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_branchID]  DEFAULT (1) FOR [branchID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_commissionRate]  DEFAULT (0) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_renewalCommissionRate]  DEFAULT (0) FOR [renewalCommissionRate]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_territory]  DEFAULT (0) FOR [territory]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_commissionCheckMethod]  DEFAULT (0) FOR [commissionCheckMethod]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_monitorProducer]  DEFAULT (0) FOR [monitorProducer]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_dbo_Producer_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_assignedSalesRepID]  DEFAULT (1) FOR [assignedSalesRepID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_suspenseEndorsement]  DEFAULT (0) FOR [suspenseEndorsement]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_producerGroupID]  DEFAULT (1) FOR [producerGroupID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_endorsementReview]  DEFAULT (0) FOR [endorsementReview]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_renewalProducerID]  DEFAULT (1) FOR [renewalProducerID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_underwriterID]  DEFAULT (1) FOR [underwriterID]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_emailBatch]  DEFAULT (0) FOR [emailBatch]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_batchPrintMethod]  DEFAULT (0) FOR [batchPrintMethod]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_commissionCheckEFT]  DEFAULT (0) FOR [commissionCheckEFT]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_dbo_Producer_printByBranch]  DEFAULT ((0)) FOR [printByBranch]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_captive]  DEFAULT (0) FOR [captive]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_dbo_Producer_allowTerminatedPay]  DEFAULT ((0)) FOR [allowTerminatedPay]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [eSignatureAccess]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [isDirectEsigAccess]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [directOnlineAccess]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [suspenseNewBusiness]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_Producer_POSPrint]  DEFAULT ((0)) FOR [POSPrint]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [isInternal]
GO
ALTER TABLE [dbo].[Producer] ADD  CONSTRAINT [DF_dbo_Producer_allowAgentSweep]  DEFAULT ((1)) FOR [allowAgentSweep]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [hasIVANS]
GO
