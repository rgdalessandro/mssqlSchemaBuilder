USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchProcess]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchProcess](
	[batchProcessID] [int] IDENTITY(10,1) NOT NULL,
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
	[systemBackupAppFileID] [int] NULL,
	[endorsementList] [varchar](3000) NULL,
	[additionalInsuredID] [int] NULL,
	[title] [varchar](255) NULL,
	[usersID] [int] NULL,
	[formNum] [varchar](50) NULL,
	[printOrder] [smallint] NULL,
	[effectiveDate] [smalldatetime] NULL,
	[invoiceID] [int] NULL,
	[claimID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[mailToAddress] [varchar](500) NULL,
	[POSIssuance] [tinyint] NULL,
	[PDFTemplateID] [int] NULL,
	[snapShotPath] [varchar](500) NULL,
	[parentID] [int] NULL,
	[mailTo] [varchar](1000) NULL,
	[driverID] [int] NULL,
	[vehicleID] [int] NULL,
	[revisionDate] [varchar](15) NULL,
	[pdfMemoTemplateID] [int] NULL,
	[ghostDraftTemplateID] [int] NULL,
	[batchDocumentGroupID] [varchar](35) NULL,
	[uuid] [varchar](35) NULL,
	[ghostDraftTemplatePackageID] [int] NULL,
	[ghostDraftTemplateName] [varchar](100) NULL,
	[ghostDraftDocumentID] [int] NULL,
 CONSTRAINT [PK_BatchProcess_batchProcessID] PRIMARY KEY CLUSTERED 
(
	[batchProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BatchProcess_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchProcess_policyID] ON [dbo].[BatchProcess]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchProcess_status_errorStatus_categoryType_objectType_recipientType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchProcess_status_errorStatus_categoryType_objectType_recipientType] ON [dbo].[BatchProcess]
(
	[status] ASC,
	[errorStatus] ASC,
	[categoryType] ASC,
	[objectType] ASC,
	[recipientType] ASC
)
INCLUDE ( 	[batchProcessID],
	[policyID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_batchPrintID]  DEFAULT (1) FOR [batchPrintID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_batchOrder]  DEFAULT (0) FOR [batchOrder]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_categoryType]  DEFAULT (0) FOR [categoryType]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_objectType]  DEFAULT (0) FOR [objectType]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_priority]  DEFAULT (1) FOR [priority]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_cleanupStatus]  DEFAULT (0) FOR [cleanupStatus]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_errorStatus]  DEFAULT (0) FOR [errorStatus]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_issuanceStatus]  DEFAULT (0) FOR [issuanceStatus]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_recipientType]  DEFAULT (0) FOR [recipientType]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_scheduleDate]  DEFAULT (getdate()) FOR [scheduleDate]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_systemBackupAppFileID]  DEFAULT (1) FOR [systemBackupAppFileID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_additionalInsuredID]  DEFAULT (1) FOR [additionalInsuredID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_printOrder]  DEFAULT (0) FOR [printOrder]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_BatchProcess_POSIssuance]  DEFAULT (0) FOR [POSIssuance]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  CONSTRAINT [DF_dbo_BatchProcess_PDFTemplateID]  DEFAULT ((1)) FOR [PDFTemplateID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  DEFAULT ((1)) FOR [parentID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  DEFAULT ((1)) FOR [driverID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  DEFAULT ((1)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[BatchProcess] ADD  DEFAULT ((1)) FOR [pdfMemoTemplateID]
GO
ALTER TABLE [dbo].[BatchProcess]  WITH CHECK ADD  CONSTRAINT [FK_BatchProcess_GhostDraftDocuments] FOREIGN KEY([ghostDraftDocumentID])
REFERENCES [dbo].[GhostDraftDocuments] ([id])
GO
ALTER TABLE [dbo].[BatchProcess] CHECK CONSTRAINT [FK_BatchProcess_GhostDraftDocuments]
GO
ALTER TABLE [dbo].[BatchProcess]  WITH CHECK ADD  CONSTRAINT [FK_BatchProcess_GhostDraftTemplates] FOREIGN KEY([ghostDraftTemplateID])
REFERENCES [dbo].[GhostDraftTemplates] ([id])
GO
ALTER TABLE [dbo].[BatchProcess] CHECK CONSTRAINT [FK_BatchProcess_GhostDraftTemplates]
GO
ALTER TABLE [dbo].[BatchProcess]  WITH CHECK ADD  CONSTRAINT [FK_GhostDraftTemplatePackage_BatchProcess] FOREIGN KEY([ghostDraftTemplatePackageID])
REFERENCES [dbo].[GhostDraftTemplatePackages] ([id])
GO
ALTER TABLE [dbo].[BatchProcess] CHECK CONSTRAINT [FK_GhostDraftTemplatePackage_BatchProcess]
GO
