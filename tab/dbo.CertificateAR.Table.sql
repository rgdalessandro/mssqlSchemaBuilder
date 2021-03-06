USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateAR]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateAR](
	[certificateARID] [int] IDENTITY(10,1) NOT NULL,
	[certificateID] [int] NULL,
	[policyID] [int] NULL,
	[installmentNumber] [tinyint] NULL,
	[arDate] [smalldatetime] NULL,
	[amount] [money] NULL,
	[ARID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[certificateInvoiceID] [int] NULL,
 CONSTRAINT [PK_CertificateAR] PRIMARY KEY CLUSTERED 
(
	[certificateARID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CertificateAR_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CertificateAR_policyID] ON [dbo].[CertificateAR]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_certificateID]  DEFAULT (1) FOR [certificateID]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_arDate]  DEFAULT (getdate()) FOR [arDate]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_ARID]  DEFAULT (1) FOR [ARID]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[CertificateAR] ADD  CONSTRAINT [DF_CertificateAR_certificateInvoiceID]  DEFAULT (1) FOR [certificateInvoiceID]
GO
