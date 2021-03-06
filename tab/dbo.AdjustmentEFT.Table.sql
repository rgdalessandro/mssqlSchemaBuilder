USE [Windhaven]
GO
/****** Object:  Table [dbo].[AdjustmentEFT]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdjustmentEFT](
	[adjustmentEFTID] [int] IDENTITY(10,1) NOT NULL,
	[producerID] [int] NULL,
	[adjustmentAmount] [money] NULL,
	[adjustmentDate] [datetime] NULL,
	[adjustmentReason] [varchar](1000) NULL,
	[isExported] [tinyint] NULL,
	[exportedDate] [datetime] NULL,
	[usersID] [int] NULL,
	[companyID] [int] NOT NULL,
	[paymentExportBatchID] [int] NOT NULL,
 CONSTRAINT [PK_AdjustmentEFT] PRIMARY KEY CLUSTERED 
(
	[adjustmentEFTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AdjustmentEFT]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AdjustmentEFT] ON [dbo].[AdjustmentEFT]
(
	[producerID] ASC,
	[isExported] ASC,
	[companyID] ASC,
	[paymentExportBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdjustmentEFT] ADD  CONSTRAINT [DF_AdjustmentEFT_producerID]  DEFAULT (0) FOR [producerID]
GO
ALTER TABLE [dbo].[AdjustmentEFT] ADD  CONSTRAINT [DF_AdjustmentEFT_adjustmentAmount]  DEFAULT (0) FOR [adjustmentAmount]
GO
ALTER TABLE [dbo].[AdjustmentEFT] ADD  CONSTRAINT [DF_AdjustmentEFT_isExported]  DEFAULT (0) FOR [isExported]
GO
ALTER TABLE [dbo].[AdjustmentEFT] ADD  CONSTRAINT [DF_AdjustmentEFT_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AdjustmentEFT] ADD  CONSTRAINT [DF_AdjustmentEFT_paymentExportBatchID]  DEFAULT (1) FOR [paymentExportBatchID]
GO
