USE [Windhaven]
GO
/****** Object:  Table [dbo].[DebugPageLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebugPageLog](
	[debugPageLogID] [int] IDENTITY(10,1) NOT NULL,
	[pageName] [varchar](500) NULL,
	[userID] [int] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[URLParam] [varchar](3000) NULL,
	[processingTime] [int] NULL,
	[IP] [varchar](16) NULL,
	[policyID] [int] NULL,
 CONSTRAINT [PK_DebugPageLog] PRIMARY KEY CLUSTERED 
(
	[debugPageLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DebugPageLog_endTime]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugPageLog_endTime] ON [dbo].[DebugPageLog]
(
	[endTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DebugPageLog_policyID_8efe9ea94e14554b6cb18b6186692b3a]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugPageLog_policyID_8efe9ea94e14554b6cb18b6186692b3a] ON [dbo].[DebugPageLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DebugPageLog_ProcessingTime]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugPageLog_ProcessingTime] ON [dbo].[DebugPageLog]
(
	[processingTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DebugPageLog_startTime]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugPageLog_startTime] ON [dbo].[DebugPageLog]
(
	[startTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DebugPageLog_userID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugPageLog_userID] ON [dbo].[DebugPageLog]
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DebugPageLog] ADD  CONSTRAINT [DF_DebugPageLog_startTime]  DEFAULT (getdate()) FOR [startTime]
GO
ALTER TABLE [dbo].[DebugPageLog] ADD  CONSTRAINT [DF_DebugPageLog_policyID]  DEFAULT (1) FOR [policyID]
GO
