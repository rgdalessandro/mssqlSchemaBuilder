USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateInvoice]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateInvoice](
	[certificateInvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[policyID] [int] NULL,
	[invoiceID] [int] NULL,
	[certificateID] [int] NULL,
	[amount] [money] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CertificateInvoice] PRIMARY KEY CLUSTERED 
(
	[certificateInvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CertificateInvoice_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CertificateInvoice_policyID] ON [dbo].[CertificateInvoice]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CertificateInvoice] ADD  CONSTRAINT [DF_CertificateInvoice_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[CertificateInvoice] ADD  CONSTRAINT [DF_CertificateInvoice_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
ALTER TABLE [dbo].[CertificateInvoice] ADD  CONSTRAINT [DF_CertificateInvoice_certificateID]  DEFAULT (1) FOR [certificateID]
GO
ALTER TABLE [dbo].[CertificateInvoice] ADD  CONSTRAINT [DF_CertificateInvoice_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
