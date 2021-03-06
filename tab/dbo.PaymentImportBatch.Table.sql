USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentImportBatch]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentImportBatch](
	[paymentImportBatchID] [int] IDENTITY(10,1) NOT NULL,
	[usersID] [int] NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
	[fileName] [varchar](200) NULL,
	[batchDate] [smalldatetime] NULL,
	[paymentCount] [smallint] NOT NULL,
	[paymentTotal] [dbo].[CURRENCY] NOT NULL,
	[batchNumber] [int] NULL,
	[isProcessed] [tinyint] NOT NULL,
	[isError] [tinyint] NOT NULL,
	[errorDescription] [varchar](255) NULL,
 CONSTRAINT [PK_PaymentImportBatch] PRIMARY KEY CLUSTERED 
(
	[paymentImportBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentImportBatch_AddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_AddDate] ON [dbo].[PaymentImportBatch]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportBatch_BatchDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_BatchDate] ON [dbo].[PaymentImportBatch]
(
	[batchDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportBatch_batchNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_batchNumber] ON [dbo].[PaymentImportBatch]
(
	[batchNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportBatch_isError]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_isError] ON [dbo].[PaymentImportBatch]
(
	[isError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportBatch_isProcessed]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_isProcessed] ON [dbo].[PaymentImportBatch]
(
	[isProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentImportBatch_UsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentImportBatch_UsersID] ON [dbo].[PaymentImportBatch]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_recordCount]  DEFAULT ((0)) FOR [paymentCount]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_paymentTotal]  DEFAULT ((0)) FOR [paymentTotal]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_isCompleted]  DEFAULT ((0)) FOR [isProcessed]
GO
ALTER TABLE [dbo].[PaymentImportBatch] ADD  CONSTRAINT [DF_PaymentImportBatch_isError]  DEFAULT ((0)) FOR [isError]
GO
