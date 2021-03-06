USE [Windhaven]
GO
/****** Object:  Table [dbo].[MemoLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoLog](
	[memoLogID] [int] IDENTITY(10,1) NOT NULL,
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
	[claimIncidentID] [int] NULL,
 CONSTRAINT [PK_25_MemoLog] PRIMARY KEY CLUSTERED 
(
	[memoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MemoLogClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogClaimIncidentID] ON [dbo].[MemoLog]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogCode] ON [dbo].[MemoLog]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogCompanyID] ON [dbo].[MemoLog]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogDateCreated]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogDateCreated] ON [dbo].[MemoLog]
(
	[dateCreated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogEnteredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogEnteredID] ON [dbo].[MemoLog]
(
	[enteredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogInsuredID] ON [dbo].[MemoLog]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogPolicyID] ON [dbo].[MemoLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogProducerID] ON [dbo].[MemoLog]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogType] ON [dbo].[MemoLog]
(
	[logType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoLogUsersID] ON [dbo].[MemoLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_logType]  DEFAULT (0) FOR [logType]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_code]  DEFAULT (0) FOR [code]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_enteredID]  DEFAULT (1) FOR [enteredID]
GO
ALTER TABLE [dbo].[MemoLog] ADD  CONSTRAINT [DF_MemoLog_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
