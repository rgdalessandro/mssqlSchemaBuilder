USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemProcessLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemProcessLog](
	[systemProcessLogID] [int] IDENTITY(10,1) NOT NULL,
	[logType] [tinyint] NULL,
	[processName] [varchar](100) NULL,
	[processCall] [varchar](1000) NULL,
	[status] [tinyint] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[notes] [varchar](1000) NULL,
 CONSTRAINT [PK_SystemProcessLog] PRIMARY KEY CLUSTERED 
(
	[systemProcessLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_SystemProcessLog_logType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemProcessLog_logType] ON [dbo].[SystemProcessLog]
(
	[logType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SystemProcessLog_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemProcessLog_status] ON [dbo].[SystemProcessLog]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemProcessLog] ADD  CONSTRAINT [DF_SystemProcessLog_logType]  DEFAULT (0) FOR [logType]
GO
ALTER TABLE [dbo].[SystemProcessLog] ADD  CONSTRAINT [DF_SystemProcessLog_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[SystemProcessLog] ADD  CONSTRAINT [DF_SystemProcessLog_startDate]  DEFAULT (getdate()) FOR [startDate]
GO
