USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDFPackage]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDFPackage](
	[pdfPackageID] [int] IDENTITY(10,1) NOT NULL,
	[pdfPackageName] [varchar](25) NULL,
	[pdfPackageDescription] [varchar](225) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PDFPackage] PRIMARY KEY CLUSTERED 
(
	[pdfPackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDFPackage] ADD  CONSTRAINT [DF_PDFPackage_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
