USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDFPackageDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFPackageDetail](
	[pdfPackageDetailID] [int] IDENTITY(10,1) NOT NULL,
	[pdfPackageID] [int] NULL,
	[pdfDocumentTypeID] [int] NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PDFPackageDetailID] PRIMARY KEY CLUSTERED 
(
	[pdfPackageDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDFPackageDetail] ADD  CONSTRAINT [DF_PDFPackageDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
