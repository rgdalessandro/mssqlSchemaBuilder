USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_PIN_Request]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_PIN_Request](
	[IVR_PIN_RequestID] [int] IDENTITY(10,1) NOT NULL,
	[insuredID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[IVR_pinID] [int] NOT NULL,
	[remoteIP] [varchar](15) NULL,
	[result] [varchar](200) NULL,
	[addDate] [smalldatetime] NULL,
	[email] [varchar](50) NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_IVR_PIN_Request] PRIMARY KEY CLUSTERED 
(
	[IVR_PIN_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_IVR_PIN_Request_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PIN_Request_insuredID] ON [dbo].[IVR_PIN_Request]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_PIN_Request_IVR_pinID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PIN_Request_IVR_pinID] ON [dbo].[IVR_PIN_Request]
(
	[IVR_pinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_PIN_Request_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PIN_Request_policyID] ON [dbo].[IVR_PIN_Request]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_PIN_Request] ADD  CONSTRAINT [DF_IVR_PIN_Request_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[IVR_PIN_Request] ADD  CONSTRAINT [DF_IVR_PIN_Request_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[IVR_PIN_Request] ADD  CONSTRAINT [DF_IVR_PIN_Request_IVR_pinID]  DEFAULT (1) FOR [IVR_pinID]
GO
ALTER TABLE [dbo].[IVR_PIN_Request] ADD  CONSTRAINT [DF_IVR_PIN_Request_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
