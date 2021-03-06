USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentExportBatch]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentExportBatch](
	[paymentExportBatchID] [int] IDENTITY(10,1) NOT NULL,
	[paymentExportBatchNum] [int] NULL,
	[exportDate] [smalldatetime] NULL,
	[method] [tinyint] NOT NULL,
	[batchCount] [int] NULL,
	[sweepDate] [smalldatetime] NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentExportBatch] PRIMARY KEY CLUSTERED 
(
	[paymentExportBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PaymentExportBatch] ADD  CONSTRAINT [DF_PaymentExportBatch_method]  DEFAULT (0) FOR [method]
GO
ALTER TABLE [dbo].[PaymentExportBatch] ADD  CONSTRAINT [DF_PaymentExportBatch_numPayments]  DEFAULT (0) FOR [batchCount]
GO
ALTER TABLE [dbo].[PaymentExportBatch] ADD  CONSTRAINT [DF_PaymentExportBatch_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
