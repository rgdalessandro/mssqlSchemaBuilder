USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchPrintRule]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchPrintRule](
	[batchPrintRuleID] [int] IDENTITY(10,1) NOT NULL,
	[stateID] [int] NULL,
	[categoryType] [tinyint] NULL,
	[objectType] [tinyint] NULL,
	[formNum] [varchar](255) NULL,
	[insuredCopy] [tinyint] NULL,
	[producerCopy] [tinyint] NULL,
	[companyCopy] [tinyint] NULL,
	[financeCompanyCopy] [tinyint] NULL,
	[lienholderCopy] [tinyint] NULL,
	[additionalInsuredCopy] [tinyint] NULL,
	[listExcludeCompanyID] [varchar](255) NULL,
	[dirPath] [varchar](255) NULL,
	[filePrefix] [varchar](255) NULL,
	[docTitle] [varchar](255) NULL,
	[docFile] [varchar](255) NULL,
	[active] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[policyType] [tinyint] NULL,
 CONSTRAINT [PK_BatchPrintRule] PRIMARY KEY CLUSTERED 
(
	[batchPrintRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BatchPrintRule_active]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintRule_active] ON [dbo].[BatchPrintRule]
(
	[active] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchPrintRule_categoryType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintRule_categoryType] ON [dbo].[BatchPrintRule]
(
	[categoryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchPrintRule_objectType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintRule_objectType] ON [dbo].[BatchPrintRule]
(
	[objectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchPrintRule_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintRule_stateID] ON [dbo].[BatchPrintRule]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_stateID]  DEFAULT (1) FOR [stateID]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_categoryType]  DEFAULT (0) FOR [categoryType]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_objectType]  DEFAULT (0) FOR [objectType]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_insuredCopy]  DEFAULT (0) FOR [insuredCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_producerCopy]  DEFAULT (0) FOR [producerCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_companyCopy]  DEFAULT (0) FOR [companyCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_financeCompanyCopy]  DEFAULT (0) FOR [financeCompanyCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_lienholderCopy]  DEFAULT (0) FOR [lienholderCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_additionalInsuredCopy]  DEFAULT (0) FOR [additionalInsuredCopy]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_active]  DEFAULT (0) FOR [active]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[BatchPrintRule] ADD  CONSTRAINT [DF_BatchPrintRule_policyType]  DEFAULT ((0)) FOR [policyType]
GO
