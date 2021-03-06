USE [Windhaven]
GO
/****** Object:  Table [dbo].[InfoRequestedDetail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfoRequestedDetail](
	[infoRequestedDetailID] [int] IDENTITY(10,1) NOT NULL,
	[infoRequestedID] [int] NOT NULL,
	[lineNum] [int] NOT NULL,
	[unitNumber] [varchar](3) NOT NULL,
	[groupNumber] [varchar](3) NOT NULL,
	[sectionType] [varchar](5) NOT NULL,
	[recordCode] [varchar](4) NOT NULL,
	[lineContent] [varchar](300) NULL,
	[status] [tinyint] NOT NULL,
	[policyID] [int] NOT NULL,
	[driverID] [int] NOT NULL,
	[InsuredID] [int] NOT NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_InfoRequestedDetail] PRIMARY KEY CLUSTERED 
(
	[infoRequestedDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_InfoRequestedDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequestedDetail_policyID] ON [dbo].[InfoRequestedDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_InfoRequestedID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InfoRequestedID] ON [dbo].[InfoRequestedDetail]
(
	[infoRequestedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_infoRequestedID]  DEFAULT (1) FOR [infoRequestedID]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_lineNum]  DEFAULT (0) FOR [lineNum]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_unitNumber]  DEFAULT (1) FOR [unitNumber]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_groupNumber]  DEFAULT (1) FOR [groupNumber]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_sectionType]  DEFAULT ('') FOR [sectionType]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_recordCode]  DEFAULT (1) FOR [recordCode]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_InsuredID]  DEFAULT (1) FOR [InsuredID]
GO
ALTER TABLE [dbo].[InfoRequestedDetail] ADD  CONSTRAINT [DF_InfoRequestedDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
