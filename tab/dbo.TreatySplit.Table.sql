USE [Windhaven]
GO
/****** Object:  Table [dbo].[TreatySplit]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatySplit](
	[treatySplitID] [int] IDENTITY(10,1) NOT NULL,
	[treatyID] [int] NULL,
	[splitType] [tinyint] NULL,
	[treatyCompanyID] [int] NULL,
	[rate] [money] NULL,
 CONSTRAINT [PK_TreatySplit_treatySplitID] PRIMARY KEY CLUSTERED 
(
	[treatySplitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_TreatySplit_splitType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatySplit_splitType] ON [dbo].[TreatySplit]
(
	[splitType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatySplit_treatyCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatySplit_treatyCompanyID] ON [dbo].[TreatySplit]
(
	[treatyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatySplit_treatyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatySplit_treatyID] ON [dbo].[TreatySplit]
(
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TreatySplit] ADD  CONSTRAINT [DF_TreatySplit_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[TreatySplit] ADD  CONSTRAINT [DF_TreatySplit_splitType]  DEFAULT (1) FOR [splitType]
GO
ALTER TABLE [dbo].[TreatySplit] ADD  CONSTRAINT [DF_TreatySplit_treatyCompanyID]  DEFAULT (1) FOR [treatyCompanyID]
GO
ALTER TABLE [dbo].[TreatySplit] ADD  CONSTRAINT [DF_TreatySplit_rate]  DEFAULT (0) FOR [rate]
GO
