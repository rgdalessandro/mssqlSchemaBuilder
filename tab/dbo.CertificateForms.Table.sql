USE [Windhaven]
GO
/****** Object:  Table [dbo].[CertificateForms]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificateForms](
	[certificateFormsID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](200) NULL,
	[certificateTypeID] [int] NULL,
	[documentType] [tinyint] NULL,
	[attachToDec] [tinyint] NULL,
	[formNum] [varchar](10) NULL,
	[formName] [varchar](100) NULL,
 CONSTRAINT [PK_CertificateForms] PRIMARY KEY CLUSTERED 
(
	[certificateFormsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CertificateForms] ADD  CONSTRAINT [DF_CertificateForms_certificateTypeID]  DEFAULT (1) FOR [certificateTypeID]
GO
ALTER TABLE [dbo].[CertificateForms] ADD  CONSTRAINT [DF_CertificateForms_documentType]  DEFAULT (1) FOR [documentType]
GO
ALTER TABLE [dbo].[CertificateForms] ADD  CONSTRAINT [DF_CertificateForms_attachToDec]  DEFAULT (1) FOR [attachToDec]
GO
