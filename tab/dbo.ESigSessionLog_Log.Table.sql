USE [Windhaven]
GO
/****** Object:  Table [dbo].[ESigSessionLog_Log]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESigSessionLog_Log](
	[ESigSessionLog_LogID] [int] IDENTITY(10,1) NOT NULL,
	[ESigSessionLogID] [int] NULL,
	[policyID] [int] NULL,
	[SessionDataStart] [varchar](255) NULL,
	[SessionDataEnd] [varchar](255) NULL,
	[usersId] [int] NULL,
	[docName] [varchar](70) NULL,
	[dateCreated] [smalldatetime] NULL,
	[isSigned] [tinyint] NULL,
	[actionUser] [int] NULL,
	[remoteSig] [tinyint] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[ipStart] [varchar](16) NULL,
	[ipEnd] [varchar](16) NULL,
	[filePath] [varchar](55) NULL,
	[isArchived] [tinyint] NULL,
	[archivedDate] [smalldatetime] NULL,
	[archiveID] [int] NULL,
	[primorisFileHash] [varchar](16) NULL,
	[changeDate] [datetime] NULL,
	[changeUsersID] [int] NULL,
	[actionType] [varchar](1) NULL,
	[activeUUID] [varchar](255) NULL,
	[lastTimeActive] [smalldatetime] NULL,
	[isSigning] [tinyint] NULL,
 CONSTRAINT [PK_ESigSessionLog_Log] PRIMARY KEY CLUSTERED 
(
	[ESigSessionLog_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ESigSessionLog_Log_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ESigSessionLog_Log_policyID] ON [dbo].[ESigSessionLog_Log]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
