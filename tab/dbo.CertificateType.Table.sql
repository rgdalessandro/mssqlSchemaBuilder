USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateType](
	[certificateTypeID] [int] IDENTITY(10,1) NOT NULL,
	[name] [varchar](50) NULL,
	[addDate] [smalldatetime] NOT NULL,
	[status] [tinyint] NULL,
	[certTerm] [tinyint] NULL,
	[chargeObjectType] [tinyint] NULL,
	[amount] [decimal](19, 2) NULL,
	[cancelType] [tinyint] NULL,
	[payType] [tinyint] NULL,
	[billType] [tinyint] NULL,
	[collectDeposit] [tinyint] NULL,
 CONSTRAINT [PK_CertificateType] PRIMARY KEY CLUSTERED 
(
	[certificateTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_status]  DEFAULT (1) FOR [status]
GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_cancelType]  DEFAULT (1) FOR [cancelType]
GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_payType]  DEFAULT (1) FOR [payType]
GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_billType]  DEFAULT (1) FOR [billType]
GO
ALTER TABLE [dbo].[CertificateType] ADD  CONSTRAINT [DF_CertificateType_collectDeposit]  DEFAULT (1) FOR [collectDeposit]
GO
