USE [Windhaven]
GO
/****** Object:  Table [dbo].[StickyNote]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StickyNote](
	[stickyNoteID] [int] IDENTITY(10,1) NOT NULL,
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
 CONSTRAINT [PK_StickyNote] PRIMARY KEY CLUSTERED 
(
	[stickyNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_StickyNote_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_StickyNote_policyID] ON [dbo].[StickyNote]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StickyNote] ADD  CONSTRAINT [DF__StickyNot__hidde__31EB0842]  DEFAULT ((0)) FOR [hidden]
GO
