USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLog](
	[systemLogID] [int] IDENTITY(10,1) NOT NULL,
	[logType] [smallint] NULL,
	[code] [smallint] NULL,
	[dateCreated] [smalldatetime] NULL,
	[title] [varchar](50) NULL,
	[body] [varchar](4000) NULL,
	[extra] [varchar](3000) NULL,
	[noDelete] [bit] NOT NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[usersID] [int] NULL,
	[enteredID] [int] NULL,
 CONSTRAINT [PK_25_SystemLog] PRIMARY KEY CLUSTERED 
(
	[systemLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_SystemLogCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogCode] ON [dbo].[SystemLog]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogCompanyID] ON [dbo].[SystemLog]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogDateCreated]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogDateCreated] ON [dbo].[SystemLog]
(
	[dateCreated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogEnteredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogEnteredID] ON [dbo].[SystemLog]
(
	[enteredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogInsuredID] ON [dbo].[SystemLog]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogPolicyID] ON [dbo].[SystemLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogProducerID] ON [dbo].[SystemLog]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogType] ON [dbo].[SystemLog]
(
	[logType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemLogUsersID] ON [dbo].[SystemLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_type]  DEFAULT (0) FOR [logType]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_code]  DEFAULT (0) FOR [code]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[SystemLog] ADD  CONSTRAINT [DF_SystemLog_enteredID]  DEFAULT (1) FOR [enteredID]
GO
