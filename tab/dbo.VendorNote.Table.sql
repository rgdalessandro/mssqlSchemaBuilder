USE [Windhaven]
GO
/****** Object:  Table [dbo].[VendorNote]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorNote](
	[vendorNoteID] [int] IDENTITY(10,1) NOT NULL,
	[vendorID] [int] NULL,
	[noteType] [tinyint] NULL,
	[body] [varchar](3000) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[noDelete] [bit] NOT NULL,
	[noteDate] [smalldatetime] NULL,
	[internalNote] [tinyint] NULL,
	[subject] [varchar](50) NULL,
 CONSTRAINT [PK_VendorNote] PRIMARY KEY CLUSTERED 
(
	[vendorNoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VendorNote_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorNote_usersID] ON [dbo].[VendorNote]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorNoteNoteType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorNoteNoteType] ON [dbo].[VendorNote]
(
	[noteType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorNoteVendorID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorNoteVendorID] ON [dbo].[VendorNote]
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_policyID]  DEFAULT ((1)) FOR [vendorID]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_noteType]  DEFAULT ((0)) FOR [noteType]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_noDelete]  DEFAULT ((0)) FOR [noDelete]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_noteDate]  DEFAULT (getdate()) FOR [noteDate]
GO
ALTER TABLE [dbo].[VendorNote] ADD  CONSTRAINT [DF_VendorNote_internalNote]  DEFAULT ((0)) FOR [internalNote]
GO
