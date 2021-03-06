USE [Windhaven]
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[attachmentID] [int] IDENTITY(10,1) NOT NULL,
	[taskID] [int] NULL,
	[description] [varchar](150) NULL,
	[attachmentType] [tinyint] NULL,
	[filePath] [varchar](255) NULL,
	[usersID] [int] NULL,
	[notes] [varchar](1000) NULL,
	[addDate] [smalldatetime] NULL,
	[claimIncidentID] [int] NULL,
	[claimID] [int] NULL,
	[fileName] [varchar](1000) NULL,
	[policyID] [int] NULL,
	[mainProducerID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[vendorID] [int] NULL,
	[size] [int] NULL,
	[importID] [int] NULL,
	[saveAsName] [varchar](150) NULL,
	[extension] [varchar](10) NULL,
	[isViewableByInsured] [bit] NULL,
 CONSTRAINT [PK_AttachmentAattachmentID] PRIMARY KEY CLUSTERED 
(
	[attachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Attachment_PolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attachment_PolicyID] ON [dbo].[Attachment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AttachmentsTaskID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AttachmentsTaskID] ON [dbo].[Attachment]
(
	[taskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AttachmentsUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AttachmentsUsersID] ON [dbo].[Attachment]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachments_taskID]  DEFAULT ((1)) FOR [taskID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachments_attachmentType]  DEFAULT ((0)) FOR [attachmentType]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachments_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_dbo_Attachment_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_dbo_Attachment_claimsID]  DEFAULT ((1)) FOR [claimID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF_Attachment_mainProducerID]  DEFAULT ((1)) FOR [mainProducerID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF__Attachmen__produ__68A6404F]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[Attachment] ADD  CONSTRAINT [DF__Attachment__size__0E17BC20]  DEFAULT ((0)) FOR [size]
GO
ALTER TABLE [dbo].[Attachment] ADD  DEFAULT ((0)) FOR [isViewableByInsured]
GO
