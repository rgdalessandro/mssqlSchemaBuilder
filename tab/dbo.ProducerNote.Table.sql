USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerNote]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerNote](
	[producerNoteID] [int] IDENTITY(10,1) NOT NULL,
	[producerID] [int] NULL,
	[noteType] [tinyint] NULL,
	[body] [varchar](3000) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[noDelete] [bit] NOT NULL,
	[noteDate] [smalldatetime] NULL,
	[internalNote] [tinyint] NULL,
	[subject] [varchar](50) NULL,
	[manualEntry] [tinyint] NULL,
 CONSTRAINT [PK_ProducerNote] PRIMARY KEY CLUSTERED 
(
	[producerNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ProducerNoteNoteType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerNoteNoteType] ON [dbo].[ProducerNote]
(
	[noteType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerNoteProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerNoteProducerID] ON [dbo].[ProducerNote]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_policyID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_noteType]  DEFAULT (0) FOR [noteType]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_noteDate]  DEFAULT (getdate()) FOR [noteDate]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  CONSTRAINT [DF_ProducerNote_internalNote]  DEFAULT (0) FOR [internalNote]
GO
ALTER TABLE [dbo].[ProducerNote] ADD  DEFAULT ((0)) FOR [manualEntry]
GO
