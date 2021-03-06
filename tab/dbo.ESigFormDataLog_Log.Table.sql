USE [Windhaven]
GO
/****** Object:  Table [dbo].[ESigFormDataLog_Log]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESigFormDataLog_Log](
	[EsigFormDataLog_LogID] [int] IDENTITY(10,1) NOT NULL,
	[EsigFormDataLogID] [int] NULL,
	[policyID] [int] NULL,
	[templateName] [varchar](25) NULL,
	[EsigName] [varchar](60) NULL,
	[EsigInitials] [varchar](3) NULL,
	[EsigDateTime] [datetime] NULL,
	[usersID] [int] NULL,
	[EsigUserType] [tinyint] NULL,
	[masterSessionData] [varchar](255) NULL,
	[sessionData] [varchar](255) NULL,
	[changeDate] [datetime] NULL,
	[changeUsersID] [int] NULL,
	[actionType] [varchar](1) NULL,
 CONSTRAINT [PK_ESigFormDataLog_Log] PRIMARY KEY CLUSTERED 
(
	[EsigFormDataLog_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ESigFormDataLog_Log_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ESigFormDataLog_Log_policyID] ON [dbo].[ESigFormDataLog_Log]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ESigFormDataLog_Log] ADD  CONSTRAINT [DF_ESigFormDataLog_Log_changeDate]  DEFAULT (getdate()) FOR [changeDate]
GO
