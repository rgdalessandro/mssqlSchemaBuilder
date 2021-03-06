USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchPrint]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchPrint](
	[batchPrintID] [int] IDENTITY(10,1) NOT NULL,
	[batchNum] [varchar](50) NULL,
	[processDate] [smalldatetime] NULL,
	[batchCount] [int] NULL,
	[printSuccess] [tinyint] NULL,
	[batchDesc] [varchar](100) NULL,
	[mailCoversheetPath] [varchar](150) NULL,
	[duplex] [tinyint] NULL,
 CONSTRAINT [PK_BatchPrint] PRIMARY KEY CLUSTERED 
(
	[batchPrintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BatchPrintBatchCount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintBatchCount] ON [dbo].[BatchPrint]
(
	[batchCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BatchPrintBatchNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintBatchNum] ON [dbo].[BatchPrint]
(
	[batchNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchPrintPrintSuccess]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintPrintSuccess] ON [dbo].[BatchPrint]
(
	[printSuccess] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_BatchPrintProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchPrintProcessDate] ON [dbo].[BatchPrint]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchPrint] ADD  CONSTRAINT [DF_BatchPrint_processDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[BatchPrint] ADD  CONSTRAINT [DF_BatchPrint_batchCount]  DEFAULT (0) FOR [batchCount]
GO
ALTER TABLE [dbo].[BatchPrint] ADD  CONSTRAINT [DF_BatchPrint_printSuccess]  DEFAULT (0) FOR [printSuccess]
GO
