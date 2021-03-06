USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDFDocumentType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFDocumentType](
	[pdfDocumentTypeID] [int] IDENTITY(10,1) NOT NULL,
	[pdfUniqueName] [varchar](25) NULL,
	[pdfDocumentTypeDescription] [varchar](50) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PDFDocumentType] PRIMARY KEY CLUSTERED 
(
	[pdfDocumentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY],
 CONSTRAINT [UC_pdfUniqueName] UNIQUE NONCLUSTERED 
(
	[pdfUniqueName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDFDocumentType] ADD  CONSTRAINT [DF_PDFDocumentType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
