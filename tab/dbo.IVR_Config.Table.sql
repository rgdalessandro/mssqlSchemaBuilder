USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Config]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Config](
	[IVR_ConfigID] [int] IDENTITY(10,1) NOT NULL,
	[serverInstance] [varchar](20) NOT NULL,
	[serverKey] [varchar](100) NOT NULL,
	[softwareVersion] [varchar](10) NOT NULL,
	[dataSource] [varchar](50) NOT NULL,
	[port] [smallint] NOT NULL,
	[mailServer] [varchar](50) NOT NULL,
	[mailPort] [smallint] NOT NULL,
	[mailList] [varchar](1000) NOT NULL,
	[errorReportMethod] [smallint] NOT NULL,
 CONSTRAINT [PK_IVR_Config] PRIMARY KEY CLUSTERED 
(
	[IVR_ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_dataSource]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_dataSource] ON [dbo].[IVR_Config]
(
	[dataSource] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_mailPort]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_mailPort] ON [dbo].[IVR_Config]
(
	[mailPort] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_mailServer]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_mailServer] ON [dbo].[IVR_Config]
(
	[mailServer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_port]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_port] ON [dbo].[IVR_Config]
(
	[port] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_serverInstance]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_serverInstance] ON [dbo].[IVR_Config]
(
	[serverInstance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_serverKey]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_serverKey] ON [dbo].[IVR_Config]
(
	[serverKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_softwareVersion]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_softwareVersion] ON [dbo].[IVR_Config]
(
	[softwareVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Confi__serve__3C5DA9BD]  DEFAULT ('dev') FOR [serverInstance]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Config__port__3D51CDF6]  DEFAULT ((80)) FOR [port]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Confi__mailS__3E45F22F]  DEFAULT ('mail2.idminc.com') FOR [mailServer]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Confi__mailP__3F3A1668]  DEFAULT ((25)) FOR [mailPort]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Confi__mailL__402E3AA1]  DEFAULT ('gene.nagle@idminc.com') FOR [mailList]
GO
ALTER TABLE [dbo].[IVR_Config] ADD  CONSTRAINT [DF__IVR_Confi__error__41225EDA]  DEFAULT ((3)) FOR [errorReportMethod]
GO
