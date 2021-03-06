USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDFDocumentRevision]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFDocumentRevision](
	[pdfDocumentRevisionID] [int] IDENTITY(10,1) NOT NULL,
	[pdfDocumentTypeDetailID] [int] NULL,
	[pdfServerPath] [varchar](150) NULL,
	[revisionNumber] [varchar](50) NULL,
	[revisionCount] [int] NULL,
	[revisionStartDate] [datetime] NULL,
	[revisionEndDate] [datetime] NULL,
	[revisionNote] [varchar](500) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PDFDocumentRevision] PRIMARY KEY CLUSTERED 
(
	[pdfDocumentRevisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDFDocumentRevision] ADD  CONSTRAINT [DF_PDFDocumentRevision_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
