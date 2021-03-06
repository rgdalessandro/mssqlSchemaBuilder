USE [Windhaven]
GO
/****** Object:  Table [dbo].[AppAttachment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppAttachment](
	[appAttachmentID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[description] [varchar](250) NULL,
	[attachmentType] [tinyint] NULL,
	[filePath] [varchar](255) NULL,
	[usersID] [int] NULL,
	[notes] [varchar](1000) NULL,
	[addDate] [smalldatetime] NULL,
	[claimIncidentID] [int] NULL,
	[claimsID] [int] NULL,
	[fileName] [varchar](50) NULL,
	[vehicleID] [int] NULL,
	[VINScanned] [tinyint] NULL,
	[linkOrQR] [varchar](25) NULL,
	[vehicleVIN] [varchar](25) NULL,
	[appAttachmentTypeID] [int] NULL,
	[autoID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[driverID] [int] NULL,
 CONSTRAINT [PK_AppAttachmentID] PRIMARY KEY CLUSTERED 
(
	[appAttachmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AppAttachment_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppAttachment_policyID] ON [dbo].[AppAttachment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachment_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachment_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachments_attachmentType]  DEFAULT ((0)) FOR [attachmentType]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachments_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachment_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_dbo_AppAttachment_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_dbo_AppAttachment_claimsID]  DEFAULT ((1)) FOR [claimsID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  CONSTRAINT [DF_AppAttachment_vehicleID]  DEFAULT ((1)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  DEFAULT ((1)) FOR [appAttachmentTypeID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  DEFAULT ((1)) FOR [autoID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  DEFAULT ((1)) FOR [homeownerDwellingID]
GO
ALTER TABLE [dbo].[AppAttachment] ADD  DEFAULT ((1)) FOR [driverID]
GO
