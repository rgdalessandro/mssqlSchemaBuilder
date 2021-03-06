USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateCommissionRate]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateCommissionRate](
	[certificateCommissionRateID] [int] IDENTITY(1,1) NOT NULL,
	[producerID] [int] NULL,
	[commissionRate] [money] NULL,
	[certificateTypeID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[lastModifiedDate] [smalldatetime] NULL,
	[lastModifiedUsersID] [int] NULL,
 CONSTRAINT [PK_CertificateCommissionRate] PRIMARY KEY CLUSTERED 
(
	[certificateCommissionRateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_certificateTypeID]  DEFAULT (1) FOR [certificateTypeID]
GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_lastModifiedDate]  DEFAULT (getdate()) FOR [lastModifiedDate]
GO
ALTER TABLE [dbo].[CertificateCommissionRate] ADD  CONSTRAINT [DF_CertificateCommissionRate_lastModifiedUsersID]  DEFAULT (2) FOR [lastModifiedUsersID]
GO
