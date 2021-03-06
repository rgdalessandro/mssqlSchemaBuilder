USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyNoteType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyNoteType](
	[policyNoteTypeID] [int] IDENTITY(10,1) NOT NULL,
	[noteType] [varchar](50) NULL,
	[noteCategory] [tinyint] NULL,
	[noteTitle] [varchar](150) NULL,
	[noteBody] [varchar](5000) NULL,
	[clearSuspenseType] [tinyint] NULL,
	[sendSuspense] [bit] NULL,
	[suspenseDays] [smallint] NULL,
	[suspenseType] [tinyint] NULL,
	[suspenseRecipient] [tinyint] NULL,
	[suspenseUsersIDTo] [int] NULL,
	[suspenseTitle] [varchar](50) NULL,
	[suspenseBody] [varchar](3000) NULL,
	[allowViewUsers] [varchar](50) NULL,
	[allowEditUsers] [varchar](50) NULL,
	[sendMemo] [bit] NULL,
	[memoID] [int] NULL,
	[autoGenerateMemo] [bit] NULL,
	[redirectToNote] [bit] NULL,
	[bodyFiller] [varchar](3000) NULL,
	[thread] [tinyint] NULL,
	[active] [bit] NULL,
	[sortOrder] [smallint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_PolicyNoteType] PRIMARY KEY CLUSTERED 
(
	[policyNoteTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyNoteType_active]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNoteType_active] ON [dbo].[PolicyNoteType]
(
	[active] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyNoteType_autoGenerateMemo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNoteType_autoGenerateMemo] ON [dbo].[PolicyNoteType]
(
	[autoGenerateMemo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyNoteType_memoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNoteType_memoID] ON [dbo].[PolicyNoteType]
(
	[memoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyNoteType_sendMemo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNoteType_sendMemo] ON [dbo].[PolicyNoteType]
(
	[sendMemo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyNoteType_sendSuspense]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNoteType_sendSuspense] ON [dbo].[PolicyNoteType]
(
	[sendSuspense] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_noteCategory]  DEFAULT ((0)) FOR [noteCategory]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_clearSuspense]  DEFAULT ((0)) FOR [clearSuspenseType]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_sendSuspense]  DEFAULT ((0)) FOR [sendSuspense]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_suspenseDays]  DEFAULT ((0)) FOR [suspenseDays]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_suspenseType]  DEFAULT ((0)) FOR [suspenseType]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_suspenseUsersIDTo]  DEFAULT ((1)) FOR [suspenseUsersIDTo]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_sendMemo]  DEFAULT ((0)) FOR [sendMemo]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_memoID]  DEFAULT ((1)) FOR [memoID]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_autoGenerateMemo]  DEFAULT ((0)) FOR [autoGenerateMemo]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_redirectToNote]  DEFAULT ((0)) FOR [redirectToNote]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_thread]  DEFAULT ((0)) FOR [thread]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PolicyNoteType] ADD  CONSTRAINT [DF_PolicyNoteType_usersID]  DEFAULT ((1)) FOR [usersID]
GO
