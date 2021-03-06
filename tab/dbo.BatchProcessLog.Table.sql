USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchProcessLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchProcessLog](
	[batchProcessLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [tinyint] NULL,
	[status] [tinyint] NULL,
	[batchPrintID] [int] NULL,
	[batchOrder] [int] NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[financeCompanyID] [int] NULL,
	[categoryType] [tinyint] NULL,
	[objectType] [tinyint] NULL,
	[url] [varchar](1000) NULL,
	[urlParam] [varchar](1000) NULL,
	[fileInput] [varchar](255) NULL,
	[fileOutput] [varchar](255) NULL,
	[priority] [tinyint] NULL,
	[cleanupStatus] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[noLogEntry] [tinyint] NULL,
	[errorStatus] [tinyint] NULL,
	[issuanceStatus] [tinyint] NULL,
	[recipientType] [tinyint] NULL,
	[lienholderID] [int] NULL,
	[scheduleDate] [smalldatetime] NULL,
	[title] [varchar](255) NULL,
	[usersID] [int] NULL,
	[systemBackupAppFileID] [int] NULL,
	[endorsementList] [varchar](3000) NULL,
	[additionalInsuredID] [int] NULL,
	[effectiveDate] [smalldatetime] NULL,
	[formNum] [varchar](50) NULL,
	[invoiceID] [int] NULL,
	[claimID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[mailSortOrder] [int] NULL,
	[mailToAddress] [varchar](500) NULL,
	[trayNum] [int] NULL,
	[mailToBarcode] [varchar](25) NULL,
	[sortStatus] [tinyint] NULL,
	[eliosStatus] [tinyint] NULL,
	[PDFTemplateID] [int] NULL,
	[snapShotPath] [varchar](500) NULL,
	[parentID] [int] NULL,
	[mailTo] [varchar](1000) NULL,
	[vehicleID] [int] NULL,
	[DriverID] [int] NULL,
	[revisionDate] [varchar](15) NULL,
	[pdfMemoTemplateID] [int] NULL,
	[originalBatchProcessID] [int] NULL,
	[insuredRead] [tinyint] NOT NULL,
	[insuredReadDate] [smalldatetime] NULL,
	[ghostDraftTemplateID] [int] NULL,
	[batchDocumentGroupID] [varchar](35) NULL,
	[uuid] [varchar](35) NULL,
	[ghostDraftTemplatePackageID] [int] NULL,
	[ghostDraftTemplateName] [varchar](100) NULL,
	[ghostDraftDocumentID] [int] NULL,
 CONSTRAINT [PK_BatchProcessLog] PRIMARY KEY CLUSTERED 
(
	[batchProcessLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BatchProcessLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchProcessLog_policyID] ON [dbo].[BatchProcessLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_batchPrintID]  DEFAULT (1) FOR [batchPrintID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_batchOrder]  DEFAULT (0) FOR [batchOrder]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_categoryType]  DEFAULT (0) FOR [categoryType]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_objectType]  DEFAULT (0) FOR [objectType]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_priority]  DEFAULT (0) FOR [priority]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_cleanupStatus]  DEFAULT (0) FOR [cleanupStatus]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_errorStatus]  DEFAULT (0) FOR [errorStatus]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_issuanceStatus]  DEFAULT (0) FOR [issuanceStatus]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_recipientType]  DEFAULT (0) FOR [recipientType]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_scheduleDate]  DEFAULT (getdate()) FOR [scheduleDate]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_systemBackupAppFileID]  DEFAULT (1) FOR [systemBackupAppFileID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_additionalInsuredID]  DEFAULT (1) FOR [additionalInsuredID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_mailSortOrder]  DEFAULT (0) FOR [mailSortOrder]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_trayNum]  DEFAULT (0) FOR [trayNum]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_sortStatus]  DEFAULT (0) FOR [sortStatus]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF_BatchProcessLog_eliosStatus]  DEFAULT (0) FOR [eliosStatus]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  DEFAULT ((1)) FOR [parentID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  DEFAULT ((1)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  DEFAULT ((1)) FOR [DriverID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  DEFAULT ((1)) FOR [pdfMemoTemplateID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  CONSTRAINT [DF__BatchProc__origi__56679483]  DEFAULT ((1)) FOR [originalBatchProcessID]
GO
ALTER TABLE [dbo].[BatchProcessLog] ADD  DEFAULT ((0)) FOR [insuredRead]
GO
ALTER TABLE [dbo].[BatchProcessLog]  WITH CHECK ADD  CONSTRAINT [FK_BatchProcessLog_GhostDraftDocuments] FOREIGN KEY([ghostDraftDocumentID])
REFERENCES [dbo].[GhostDraftDocuments] ([id])
GO
ALTER TABLE [dbo].[BatchProcessLog] CHECK CONSTRAINT [FK_BatchProcessLog_GhostDraftDocuments]
GO
ALTER TABLE [dbo].[BatchProcessLog]  WITH CHECK ADD  CONSTRAINT [FK_BatchProcessLog_GhostDraftTemplates] FOREIGN KEY([ghostDraftTemplateID])
REFERENCES [dbo].[GhostDraftTemplates] ([id])
GO
ALTER TABLE [dbo].[BatchProcessLog] CHECK CONSTRAINT [FK_BatchProcessLog_GhostDraftTemplates]
GO
ALTER TABLE [dbo].[BatchProcessLog]  WITH CHECK ADD  CONSTRAINT [FK_GhostDraftTemplatePackage_BatchProcessLog] FOREIGN KEY([ghostDraftTemplatePackageID])
REFERENCES [dbo].[GhostDraftTemplatePackages] ([id])
GO
ALTER TABLE [dbo].[BatchProcessLog] CHECK CONSTRAINT [FK_GhostDraftTemplatePackage_BatchProcessLog]
GO
