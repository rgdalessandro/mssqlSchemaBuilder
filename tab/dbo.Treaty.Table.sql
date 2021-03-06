USE [Windhaven]
GO
/****** Object:  Table [dbo].[Treaty]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treaty](
	[treatyID] [int] IDENTITY(10,1) NOT NULL,
	[treatyType] [tinyint] NULL,
	[status] [tinyint] NULL,
	[contractMethod] [tinyint] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[companyID] [int] NULL,
	[productType] [tinyint] NULL,
	[stateID] [int] NULL,
	[name] [varchar](100) NULL,
	[description] [varchar](255) NULL,
	[commissionRate] [money] NULL,
	[addDate] [smalldatetime] NULL,
	[notes] [varchar](3000) NULL,
	[policyProgram] [tinyint] NULL,
 CONSTRAINT [PK_Treaty] PRIMARY KEY CLUSTERED 
(
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Treaty_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_companyID] ON [dbo].[Treaty]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_contractMethod]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_contractMethod] ON [dbo].[Treaty]
(
	[contractMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_endDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_endDate] ON [dbo].[Treaty]
(
	[endDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_productType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_productType] ON [dbo].[Treaty]
(
	[productType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_startDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_startDate] ON [dbo].[Treaty]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_stateID] ON [dbo].[Treaty]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_status] ON [dbo].[Treaty]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Treaty_treatyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Treaty_treatyType] ON [dbo].[Treaty]
(
	[treatyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_treatyType]  DEFAULT (0) FOR [treatyType]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_status]  DEFAULT (1) FOR [status]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_contractMethod]  DEFAULT (0) FOR [contractMethod]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_productType]  DEFAULT (4) FOR [productType]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_stateID]  DEFAULT (1) FOR [stateID]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_commissionRate]  DEFAULT (0) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Treaty] ADD  CONSTRAINT [DF_Treaty_policyProgram]  DEFAULT (0) FOR [policyProgram]
GO
