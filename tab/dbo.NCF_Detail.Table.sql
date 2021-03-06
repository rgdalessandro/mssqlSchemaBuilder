USE [Windhaven]
GO
/****** Object:  Table [dbo].[NCF_Detail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCF_Detail](
	[NCF_DetailID] [int] IDENTITY(10,1) NOT NULL,
	[NCF_RequestID] [int] NOT NULL,
	[lineNum] [int] NOT NULL,
	[unitNumber] [varchar](3) NOT NULL,
	[groupNumber] [varchar](3) NOT NULL,
	[sectionType] [varchar](5) NOT NULL,
	[recordCode] [varchar](4) NOT NULL,
	[creditVendor] [varchar](1) NULL,
	[lineContent] [varchar](300) NULL,
	[status] [tinyint] NOT NULL,
	[processingStatus] [varchar](1) NULL,
	[policyID] [int] NOT NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_NCF_Detail] PRIMARY KEY CLUSTERED 
(
	[NCF_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_NCF_Detail_adddate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Detail_adddate] ON [dbo].[NCF_Detail]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Detail_NCFRequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Detail_NCFRequestID] ON [dbo].[NCF_Detail]
(
	[NCF_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Detail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Detail_policyID] ON [dbo].[NCF_Detail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_NCF_RequestID]  DEFAULT ((1)) FOR [NCF_RequestID]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_lineNum]  DEFAULT ((0)) FOR [lineNum]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_unitNumber]  DEFAULT ((1)) FOR [unitNumber]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_groupNumber]  DEFAULT ((1)) FOR [groupNumber]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_sectionType]  DEFAULT ('') FOR [sectionType]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_recordCode]  DEFAULT ((1)) FOR [recordCode]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[NCF_Detail] ADD  CONSTRAINT [DF_NCF_Detail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
