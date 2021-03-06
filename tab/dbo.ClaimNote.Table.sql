USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimNote]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNote](
	[claimNoteID] [int] IDENTITY(10,1) NOT NULL,
	[claimIncidentID] [int] NULL,
	[claimID] [int] NULL,
	[claimantID] [int] NULL,
	[noteTitle] [varchar](50) NULL,
	[body] [varchar](8000) NULL,
	[adjusterID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isLitigation] [tinyint] NULL,
	[noteType] [varchar](50) NULL,
	[manualEntry] [tinyint] NULL,
 CONSTRAINT [PK_ClaimNote] PRIMARY KEY CLUSTERED 
(
	[claimNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimNoteAdjusterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNoteAdjusterID] ON [dbo].[ClaimNote]
(
	[adjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimNoteClaimantID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNoteClaimantID] ON [dbo].[ClaimNote]
(
	[claimantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimNoteClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNoteClaimID] ON [dbo].[ClaimNote]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimNoteClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNoteClaimIncidentID] ON [dbo].[ClaimNote]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimNoteUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNoteUsersID] ON [dbo].[ClaimNote]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_claimNoteIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_claimantID]  DEFAULT (1) FOR [claimantID]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_adjusterID]  DEFAULT (0) FOR [adjusterID]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_usersID]  DEFAULT (0) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_isLitigation]  DEFAULT (0) FOR [isLitigation]
GO
ALTER TABLE [dbo].[ClaimNote] ADD  CONSTRAINT [DF_ClaimNote_manualEntry]  DEFAULT ((0)) FOR [manualEntry]
GO
