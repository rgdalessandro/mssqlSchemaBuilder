USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEA_Detail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEA_Detail](
	[CLUEA_DetailID] [int] IDENTITY(10,1) NOT NULL,
	[CLUEA_RequestID] [int] NOT NULL,
	[lineNum] [int] NOT NULL,
	[unitNumber] [varchar](3) NOT NULL,
	[groupNumber] [varchar](3) NOT NULL,
	[sectionType] [varchar](10) NOT NULL,
	[recordCode] [varchar](4) NOT NULL,
	[lineContent] [varchar](300) NULL,
	[status] [tinyint] NOT NULL,
	[policyID] [int] NOT NULL,
	[driverID] [int] NOT NULL,
	[InsuredID] [int] NOT NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CLUEA_Detail] PRIMARY KEY CLUSTERED 
(
	[CLUEA_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CLUEA_Detail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEA_Detail_policyID] ON [dbo].[CLUEA_Detail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_CLUEA_RequestID]  DEFAULT ((1)) FOR [CLUEA_RequestID]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_lineNum]  DEFAULT ((0)) FOR [lineNum]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_unitNumber]  DEFAULT ((1)) FOR [unitNumber]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_groupNumber]  DEFAULT ((1)) FOR [groupNumber]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_sectionType]  DEFAULT ('') FOR [sectionType]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_recordCode]  DEFAULT ((1)) FOR [recordCode]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_driverID]  DEFAULT ((1)) FOR [driverID]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_InsuredID]  DEFAULT ((1)) FOR [InsuredID]
GO
ALTER TABLE [dbo].[CLUEA_Detail] ADD  CONSTRAINT [DF_CLUEA_Detail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
