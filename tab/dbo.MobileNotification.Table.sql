USE [Windhaven]
GO
/****** Object:  Table [dbo].[MobileNotification]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileNotification](
	[mobileNotificationID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[typeDescription] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[dateSent] [smalldatetime] NULL,
	[addressTo] [varchar](254) NULL,
	[addressCC] [varchar](254) NULL,
	[subject] [varchar](254) NULL,
	[body] [varchar](2000) NULL,
	[categoryType] [tinyint] NULL,
	[policyID] [int] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[usersID] [int] NULL,
	[notificationOptionID] [tinyint] NULL,
 CONSTRAINT [PK_MobileNotification] PRIMARY KEY CLUSTERED 
(
	[mobileNotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MobileNotification_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MobileNotification_policyID] ON [dbo].[MobileNotification]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_categoryType]  DEFAULT ((0)) FOR [categoryType]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_producerID]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_MobileNotification_uid]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[MobileNotification] ADD  CONSTRAINT [DF_dbo_MobileNotification_notificationOptionID]  DEFAULT ((1)) FOR [notificationOptionID]
GO
