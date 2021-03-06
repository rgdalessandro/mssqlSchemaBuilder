USE [Windhaven]
GO
/****** Object:  Table [dbo].[EmailNotification]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailNotification](
	[emailNotificationID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[typeDescription] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[dateSent] [smalldatetime] NULL,
	[addressTo] [varchar](254) NULL,
	[addressCC] [varchar](254) NULL,
	[addressCC2] [varchar](254) NULL,
	[subject] [varchar](254) NULL,
	[body] [varchar](254) NULL,
	[categoryType] [tinyint] NULL,
	[url] [varchar](1000) NULL,
	[urlParam] [varchar](1000) NULL,
	[fileOutput] [varchar](255) NULL,
	[policyID] [int] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[usersID] [int] NULL,
	[addressFrom] [varchar](254) NULL,
 CONSTRAINT [PK_EmailNotification] PRIMARY KEY CLUSTERED 
(
	[emailNotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_EmailNotification_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_addDate] ON [dbo].[EmailNotification]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailNotification_categoryType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_categoryType] ON [dbo].[EmailNotification]
(
	[categoryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailNotification_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_insuredID] ON [dbo].[EmailNotification]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailNotification_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_policyID] ON [dbo].[EmailNotification]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailNotification_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_producerID] ON [dbo].[EmailNotification]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailNotification_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EmailNotification_status] ON [dbo].[EmailNotification]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_categoryType]  DEFAULT (0) FOR [categoryType]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[EmailNotification] ADD  CONSTRAINT [DF_EmailNotification_uid]  DEFAULT (1) FOR [usersID]
GO
