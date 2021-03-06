USE [Windhaven]
GO
/****** Object:  Table [dbo].[CompanyNote]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyNote](
	[companyNoteID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[noteType] [tinyint] NULL,
	[body] [varchar](3000) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[noDelete] [bit] NOT NULL,
	[noteDate] [smalldatetime] NULL,
	[internalNote] [tinyint] NULL,
	[subject] [varchar](50) NULL,
	[manualEntry] [tinyint] NULL,
 CONSTRAINT [PK_CompanyNote] PRIMARY KEY CLUSTERED 
(
	[companyNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CompanyNoteCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyNoteCompanyID] ON [dbo].[CompanyNote]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyNoteNoteType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyNoteNoteType] ON [dbo].[CompanyNote]
(
	[noteType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_policyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_noteType]  DEFAULT (0) FOR [noteType]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_noDelete]  DEFAULT (0) FOR [noDelete]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_noteDate]  DEFAULT (getdate()) FOR [noteDate]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_internalNote]  DEFAULT (0) FOR [internalNote]
GO
ALTER TABLE [dbo].[CompanyNote] ADD  CONSTRAINT [DF_CompanyNote_manualEntry]  DEFAULT ((0)) FOR [manualEntry]
GO
