USE [Windhaven]
GO
/****** Object:  Table [dbo].[StickyNoteLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StickyNoteLog](
	[stickyNoteLogID] [int] IDENTITY(10,1) NOT NULL,
	[stickyNoteID] [int] NULL,
	[usersID] [int] NULL,
	[policyID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[subject] [varchar](25) NULL,
	[body] [varchar](350) NULL,
	[top] [varchar](15) NULL,
	[left] [varchar](15) NULL,
	[stickyNoteType] [tinyint] NULL,
	[zIndex] [int] NULL,
	[hidden] [tinyint] NULL,
	[actionType] [varchar](1) NULL,
	[deleted] [tinyint] NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [smalldatetime] NULL,
 CONSTRAINT [PK_StickyNoteLog] PRIMARY KEY CLUSTERED 
(
	[stickyNoteLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_StickyNoteLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_StickyNoteLog_policyID] ON [dbo].[StickyNoteLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StickyNoteLog] ADD  CONSTRAINT [DF_OLD_StickyNot__hidde__31EB0842]  DEFAULT ((0)) FOR [hidden]
GO
