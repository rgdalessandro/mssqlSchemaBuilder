USE [Windhaven]
GO
/****** Object:  Table [dbo].[LienholderDocs]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienholderDocs](
	[lienholderDocsID] [int] IDENTITY(10,1) NOT NULL,
	[lienholderID] [int] NULL,
	[policyID] [int] NULL,
	[vehicleID] [int] NULL,
	[vehicleYear] [smallint] NULL,
	[make] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[vin] [varchar](17) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[categoryType] [tinyint] NULL,
	[objectType] [tinyint] NULL,
	[title] [varchar](232) NULL,
	[url] [varchar](1000) NULL,
	[urlParam] [varchar](1000) NULL,
	[recipientType] [tinyint] NULL,
	[note] [varchar](1000) NULL,
	[status] [tinyint] NULL,
	[eliosStatus] [tinyint] NULL,
 CONSTRAINT [PK_lienholderDocsID] PRIMARY KEY CLUSTERED 
(
	[lienholderDocsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_LienholderDocs_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienholderDocs_lienholderID] ON [dbo].[LienholderDocs]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LienholderDocs_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienholderDocs_policyID] ON [dbo].[LienholderDocs]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LienholderDocs_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienholderDocs_usersID] ON [dbo].[LienholderDocs]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[LienholderDocs] ADD  CONSTRAINT [DF_LienholderDocs_eliosStatus]  DEFAULT (0) FOR [eliosStatus]
GO
