USE [Windhaven]
GO
/****** Object:  Table [dbo].[Memo]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memo](
	[memoID] [int] IDENTITY(10,1) NOT NULL,
	[memoCategoryID] [int] NULL,
	[memoModuleID] [int] NULL,
	[memoRuleID] [int] NULL,
	[rptName] [varchar](100) NOT NULL,
	[rptURL] [varchar](50) NOT NULL,
	[memoNum] [varchar](20) NULL,
	[rptOther] [bit] NULL,
	[rptAttn] [bit] NULL,
	[rptNumPages] [bit] NULL,
	[rptTitle] [varchar](100) NULL,
	[rptDelivery] [bit] NULL,
	[rptSendTo] [varchar](10) NULL,
	[rptHeader] [bit] NULL,
	[common] [bit] NULL,
	[rptBanner] [bit] NULL,
	[rptSignature] [bit] NULL,
	[rptBatchSendTo] [varchar](15) NULL,
	[batchObject] [tinyint] NULL,
	[urlParam] [varchar](100) NULL,
	[variable] [varchar](50) NULL,
	[sortOrder] [smallint] NULL,
	[active] [bit] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_Memo] PRIMARY KEY CLUSTERED 
(
	[memoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Memo_active]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Memo_active] ON [dbo].[Memo]
(
	[active] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Memo_memoCategoryID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Memo_memoCategoryID] ON [dbo].[Memo]
(
	[memoCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Memo_memoModuleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Memo_memoModuleID] ON [dbo].[Memo]
(
	[memoModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Memo_memoRuleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Memo_memoRuleID] ON [dbo].[Memo]
(
	[memoRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_memoCategoryID]  DEFAULT (1) FOR [memoCategoryID]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_memoModuleID]  DEFAULT (1) FOR [memoModuleID]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_memoRuleID]  DEFAULT (1) FOR [memoRuleID]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptOther]  DEFAULT (1) FOR [rptOther]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptAttn]  DEFAULT (1) FOR [rptAttn]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptNumPages]  DEFAULT (0) FOR [rptNumPages]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptDelivery]  DEFAULT (0) FOR [rptDelivery]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptHeader]  DEFAULT (1) FOR [rptHeader]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_common]  DEFAULT (0) FOR [common]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptBanner]  DEFAULT (1) FOR [rptBanner]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_rptSignature]  DEFAULT (0) FOR [rptSignature]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_batchObject]  DEFAULT (99) FOR [batchObject]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_sortOrder]  DEFAULT (0) FOR [sortOrder]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_active]  DEFAULT (1) FOR [active]
GO
ALTER TABLE [dbo].[Memo] ADD  CONSTRAINT [DF_Memo_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
