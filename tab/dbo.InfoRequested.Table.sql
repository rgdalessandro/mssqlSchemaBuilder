USE [Windhaven]
GO
/****** Object:  Table [dbo].[InfoRequested]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoRequested](
	[infoRequestedID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
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
 CONSTRAINT [PK_InfoRequested] PRIMARY KEY CLUSTERED 
(
	[infoRequestedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CPRequestHash]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CPRequestHash] ON [dbo].[InfoRequested]
(
	[cprequesthash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_driverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_driverID] ON [dbo].[InfoRequested]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_orderedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_orderedDate] ON [dbo].[InfoRequested]
(
	[orderedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_policyID] ON [dbo].[InfoRequested]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_receivedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_receivedDate] ON [dbo].[InfoRequested]
(
	[receivedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_status] ON [dbo].[InfoRequested]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequested_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequested_usersID] ON [dbo].[InfoRequested]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfoRequested] ADD  CONSTRAINT [DF_infoRequested_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[InfoRequested] ADD  CONSTRAINT [DF_infoRequested_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[InfoRequested] ADD  CONSTRAINT [DF_infoRequested_orderedDate]  DEFAULT (getdate()) FOR [orderedDate]
GO
ALTER TABLE [dbo].[InfoRequested] ADD  CONSTRAINT [DF_infoRequested_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[InfoRequested] ADD  CONSTRAINT [DF_infoRequested_status]  DEFAULT (0) FOR [status]
GO
