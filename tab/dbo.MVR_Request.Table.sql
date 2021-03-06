USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_Request]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_Request](
	[MVR_RequestID] [int] IDENTITY(10,1) NOT NULL,
	[userID] [int] NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[licNum] [varchar](25) NULL,
	[licState] [dbo].[STATE_Abbrev] NULL,
	[dob] [varchar](16) NULL,
	[driverName] [varchar](100) NULL,
	[PTSlicenseStatus] [tinyint] NULL,
	[strLicenseStatus] [varchar](20) NULL,
	[orderStatus] [tinyint] NULL,
	[batchKey] [varchar](10) NULL,
	[rawReturn] [text] NULL,
	[strError] [varchar](1000) NULL,
	[submitDate] [smalldatetime] NULL,
	[responseDate] [smalldatetime] NULL,
	[addDate] [datetime] NULL,
	[strRequest] [text] NULL,
	[URLString] [varchar](500) NULL,
	[vendorName] [dbo].[NAME_Business] NULL,
	[returnFormat] [varchar](50) NULL,
	[manualOrder] [tinyint] NULL,
	[processed] [tinyint] NULL,
	[status] [tinyint] NULL,
 CONSTRAINT [PK_MVR_Request] PRIMARY KEY CLUSTERED 
(
	[MVR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MVR_Request]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Request] ON [dbo].[MVR_Request]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MVR_Request_1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Request_1] ON [dbo].[MVR_Request]
(
	[licNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MVR_Request_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Request_policyID] ON [dbo].[MVR_Request]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_userID]  DEFAULT (1) FOR [userID]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_insuredID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_licNum]  DEFAULT (1) FOR [licNum]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_licenseStatus]  DEFAULT (0) FOR [PTSlicenseStatus]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_status]  DEFAULT (0) FOR [orderStatus]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_batchKey]  DEFAULT (1) FOR [batchKey]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_submitDate]  DEFAULT (getdate()) FOR [submitDate]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_manualOrder]  DEFAULT (0) FOR [manualOrder]
GO
ALTER TABLE [dbo].[MVR_Request] ADD  CONSTRAINT [DF_MVR_Request_processed]  DEFAULT (0) FOR [processed]
GO
