USE [Windhaven]
GO
/****** Object:  Table [dbo].[InsuredNote]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuredNote](
	[insuredNoteID] [int] IDENTITY(10,1) NOT NULL,
	[insuredID] [int] NULL,
	[noteType] [tinyint] NULL,
	[body] [varchar](3000) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[noDelete] [bit] NOT NULL,
	[noteDate] [smalldatetime] NULL,
	[internalNote] [tinyint] NULL,
	[manualEntry] [tinyint] NULL,
 CONSTRAINT [PK_InsuredNote] PRIMARY KEY CLUSTERED 
(
	[insuredNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_InsuredNote]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InsuredNote] ON [dbo].[InsuredNote]
(
	[insuredID] ASC,
	[noteType] ASC,
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsuredNoteInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InsuredNoteInsuredID] ON [dbo].[InsuredNote]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InsuredNoteNoteType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InsuredNoteNoteType] ON [dbo].[InsuredNote]
(
	[noteType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_policyID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_noteType]  DEFAULT (0) FOR [noteType]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_noteDate]  DEFAULT (getdate()) FOR [noteDate]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_internalNote]  DEFAULT (0) FOR [internalNote]
GO
ALTER TABLE [dbo].[InsuredNote] ADD  CONSTRAINT [DF_InsuredNote_manualEntry]  DEFAULT ((0)) FOR [manualEntry]
GO
