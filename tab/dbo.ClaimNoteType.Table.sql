USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimNoteType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNoteType](
	[claimNoteTypeID] [int] IDENTITY(10,1) NOT NULL,
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
	[claimSuspenseTypeID] [int] NULL,
	[initPayment] [tinyint] NULL,
 CONSTRAINT [PK_ClaimNoteType] PRIMARY KEY CLUSTERED 
(
	[claimNoteTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_noteCategory]  DEFAULT ((0)) FOR [noteCategory]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_clearSuspense]  DEFAULT ((0)) FOR [clearSuspenseType]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_sendSuspense]  DEFAULT ((0)) FOR [sendSuspense]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_suspenseDays]  DEFAULT ((0)) FOR [suspenseDays]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_suspenseType]  DEFAULT ((0)) FOR [suspenseType]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_suspenseUsersIDTo]  DEFAULT ((1)) FOR [suspenseUsersIDTo]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_sendMemo]  DEFAULT ((0)) FOR [sendMemo]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_memoID]  DEFAULT ((1)) FOR [memoID]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_autoGenerateMemo]  DEFAULT ((0)) FOR [autoGenerateMemo]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_redirectToNote]  DEFAULT ((0)) FOR [redirectToNote]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_thread]  DEFAULT ((0)) FOR [thread]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimNoteType] ADD  CONSTRAINT [DF_ClaimNoteType_initPayment]  DEFAULT ((0)) FOR [initPayment]
GO
