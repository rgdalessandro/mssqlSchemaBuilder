USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateCommissions]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateCommissions](
	[certificateCommissionsID] [int] IDENTITY(1,1) NOT NULL,
	[producerID] [int] NULL,
	[certificateAmount] [decimal](19, 2) NULL,
	[datePaid] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[certificateID] [int] NULL,
	[commissionRate] [money] NULL,
	[commissionAmount] [decimal](19, 2) NULL,
	[transType] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[remoteCommissionsID] [int] NULL,
	[accountExpenseID] [int] NULL,
 CONSTRAINT [PK_CertificateCommissions] PRIMARY KEY CLUSTERED 
(
	[certificateCommissionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_certificateID]  DEFAULT (1) FOR [certificateID]
GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_remoteCommissionsID]  DEFAULT (1) FOR [remoteCommissionsID]
GO
ALTER TABLE [dbo].[CertificateCommissions] ADD  CONSTRAINT [DF_CertificateCommissions_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
