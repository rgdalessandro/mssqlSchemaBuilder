USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDFDocumentTypeDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFDocumentTypeDetail](
	[pdfDocumentTypeDetailID] [int] IDENTITY(10,1) NOT NULL,
	[pdfDocumentTypeID] [int] NOT NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyType] [int] NULL,
	[policyProgram] [int] NULL,
	[formNum] [varchar](50) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PDFDocumentTypeDetail] PRIMARY KEY CLUSTERED 
(
	[pdfDocumentTypeDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDFDocumentTypeDetail] ADD  CONSTRAINT [DF_PDFDocumentTypeDetail_companyID]  DEFAULT ((0)) FOR [companyID]
GO
ALTER TABLE [dbo].[PDFDocumentTypeDetail] ADD  CONSTRAINT [DF_PDFDocumentTypeDetail_stateID]  DEFAULT ((0)) FOR [stateID]
GO
ALTER TABLE [dbo].[PDFDocumentTypeDetail] ADD  CONSTRAINT [DF_PDFDocumentTypeDetail_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[PDFDocumentTypeDetail] ADD  CONSTRAINT [DF_PDFDocumentTypeDetail_policyProgram]  DEFAULT ((0)) FOR [policyProgram]
GO
ALTER TABLE [dbo].[PDFDocumentTypeDetail] ADD  CONSTRAINT [DF_PDFDocumentTypeDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
