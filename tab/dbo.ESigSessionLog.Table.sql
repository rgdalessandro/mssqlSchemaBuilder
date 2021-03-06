USE [Windhaven]
GO
/****** Object:  Table [dbo].[ESigSessionLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESigSessionLog](
	[EsigSessionLogID] [int] IDENTITY(10,1) NOT NULL,
	[PolicyID] [int] NULL,
	[SessionDataStart] [varchar](255) NULL,
	[SessionDataEnd] [varchar](255) NULL,
	[UsersID] [int] NULL,
	[docName] [varchar](70) NULL,
	[dateCreated] [smalldatetime] NULL,
	[isSigned] [tinyint] NULL,
	[remoteSig] [tinyint] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[ipStart] [varchar](16) NULL,
	[ipEnd] [varchar](16) NULL,
	[filePath] [varchar](55) NULL,
	[activeUUID] [varchar](255) NULL,
	[lastTimeActive] [smalldatetime] NULL,
	[isSigning] [tinyint] NULL,
	[isArchived] [tinyint] NULL,
	[archivedDate] [smalldatetime] NULL,
	[archiveID] [int] NULL,
	[primorisFileHash] [varchar](16) NULL,
 CONSTRAINT [PK_ESigSessionLog] PRIMARY KEY CLUSTERED 
(
	[EsigSessionLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ESigSessionLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ESigSessionLog_policyID] ON [dbo].[ESigSessionLog]
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_UsersID]  DEFAULT ((1)) FOR [UsersID]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_isSigned]  DEFAULT ((0)) FOR [isSigned]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_remoteSig]  DEFAULT ((0)) FOR [remoteSig]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_lastTimeActive]  DEFAULT (getdate()) FOR [lastTimeActive]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_isSigning]  DEFAULT ((0)) FOR [isSigning]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_isArchived]  DEFAULT ((0)) FOR [isArchived]
GO
ALTER TABLE [dbo].[ESigSessionLog] ADD  CONSTRAINT [DF_ESigSessionLog_archiveID]  DEFAULT ((0)) FOR [archiveID]
GO
