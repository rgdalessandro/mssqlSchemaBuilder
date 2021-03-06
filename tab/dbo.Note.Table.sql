USE [Windhaven]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[noteID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[noteType] [tinyint] NULL,
	[body] [varchar](3100) NULL,
	[addDate] [smalldatetime] NULL,
	[claimIncidentID] [int] NULL,
	[usersID] [int] NULL,
	[noDelete] [bit] NOT NULL,
	[nonProductionReason] [varchar](100) NULL,
	[noteDate] [smalldatetime] NULL,
	[internalNote] [tinyint] NULL,
	[subject] [varchar](50) NULL,
	[manualEntry] [tinyint] NULL,
 CONSTRAINT [PK_11_Notes] PRIMARY KEY CLUSTERED 
(
	[noteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_NotePolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NotePolicyID] ON [dbo].[Note]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_OLD_PolicyNotes_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_7_PolicyNotestype]  DEFAULT (0) FOR [noteType]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_9_PolicyNotesdate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_claimID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_10_PolicyNotesuserID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_OLD_PolicyNotes_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_addDate1]  DEFAULT (getdate()) FOR [noteDate]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_internalNote]  DEFAULT (0) FOR [internalNote]
GO
ALTER TABLE [dbo].[Note] ADD  CONSTRAINT [DF_Note_IDUsers]  DEFAULT ((0)) FOR [manualEntry]
GO
