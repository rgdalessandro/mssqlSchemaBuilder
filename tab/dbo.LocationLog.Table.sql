USE [Windhaven]
GO
/****** Object:  Table [dbo].[LocationLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationLog](
	[locationLogID] [int] IDENTITY(10,1) NOT NULL,
	[locationID] [int] NULL,
	[workersCompID] [int] NULL,
	[locationName] [dbo].[NAME_Business] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[county] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[locationType] [tinyint] NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NOT NULL,
	[endorsementDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[insertState] [smallint] NULL,
 CONSTRAINT [PK_LocationLog] PRIMARY KEY CLUSTERED 
(
	[locationLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_LocationLogInsertState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationLogInsertState] ON [dbo].[LocationLog]
(
	[insertState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationLogLocationID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationLogLocationID] ON [dbo].[LocationLog]
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationLogPolicyState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationLogPolicyState] ON [dbo].[LocationLog]
(
	[policyState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationLogWorkersCompID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationLogWorkersCompID] ON [dbo].[LocationLog]
(
	[workersCompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_workersCompID]  DEFAULT (1) FOR [workersCompID]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_locationType]  DEFAULT (0) FOR [locationType]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_addDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_tempRecord]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_policyState1]  DEFAULT (0) FOR [policyState]
GO
ALTER TABLE [dbo].[LocationLog] ADD  CONSTRAINT [DF_LocationLog_insertState]  DEFAULT (0) FOR [insertState]
GO
