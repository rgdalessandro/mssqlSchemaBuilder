USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEA_Request]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEA_Request](
	[CLUEA_RequestID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NULL,
	[driverID] [int] NOT NULL,
	[fileName] [varchar](100) NULL,
	[orderedDate] [datetime] NOT NULL,
	[receivedDate] [datetime] NULL,
	[usersID] [int] NOT NULL,
	[documentType] [varchar](10) NULL,
	[status] [tinyint] NOT NULL,
	[message] [nvarchar](255) NULL,
	[rawReturn] [text] NULL,
	[cprequesthash] [varchar](48) NULL,
	[previousRequestID] [int] NULL,
	[processingStatus] [varchar](100) NULL,
 CONSTRAINT [PK_CLUEA_Request] PRIMARY KEY CLUSTERED 
(
	[CLUEA_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_CLUEA_Request_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEA_Request_policyID] ON [dbo].[CLUEA_Request]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_driverID1]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_driverID]  DEFAULT ((1)) FOR [driverID]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_orderedDate]  DEFAULT (getdate()) FOR [orderedDate]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_usersID]  DEFAULT ((2)) FOR [usersID]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[CLUEA_Request] ADD  CONSTRAINT [DF_CLUEA_Request_previousRequestID]  DEFAULT ((1)) FOR [previousRequestID]
GO
