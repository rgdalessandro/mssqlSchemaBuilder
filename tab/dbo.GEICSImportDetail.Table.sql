USE [Windhaven]
GO
/****** Object:  Table [dbo].[GEICSImportDetail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEICSImportDetail](
	[GEICSImportDetailID] [int] IDENTITY(10,1) NOT NULL,
	[GEICSImportID] [int] NULL,
	[lineNum] [int] NULL,
	[lineContent] [varchar](400) NULL,
	[status] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[errorList] [varchar](30) NULL,
	[GEICSLog_DetailID] [int] NULL,
	[trackingNumber] [varchar](9) NULL,
	[secondaryVIN] [varchar](25) NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_GEICSImportDetail] PRIMARY KEY CLUSTERED 
(
	[GEICSImportDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_GEICSImportDetail_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_addDate] ON [dbo].[GEICSImportDetail]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSImportDetail_GEICSImportID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_GEICSImportID] ON [dbo].[GEICSImportDetail]
(
	[GEICSImportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSImportDetail_GEICSLog_DetailID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_GEICSLog_DetailID] ON [dbo].[GEICSImportDetail]
(
	[GEICSLog_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSImportDetail_lineNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_lineNum] ON [dbo].[GEICSImportDetail]
(
	[lineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSImportDetail_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_status] ON [dbo].[GEICSImportDetail]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSImportDetail_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSImportDetail_usersID] ON [dbo].[GEICSImportDetail]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_MVRImportID]  DEFAULT (1) FOR [GEICSImportID]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_lineNum]  DEFAULT (0) FOR [lineNum]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_GEICSLog_DetailID]  DEFAULT (0) FOR [GEICSLog_DetailID]
GO
ALTER TABLE [dbo].[GEICSImportDetail] ADD  CONSTRAINT [DF_GEICSImportDetail_usersID]  DEFAULT (2) FOR [usersID]
GO
