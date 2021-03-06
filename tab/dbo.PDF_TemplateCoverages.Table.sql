USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDF_TemplateCoverages]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDF_TemplateCoverages](
	[pdf_templateCoveragesID] [int] IDENTITY(10,1) NOT NULL,
	[policyCoveragesID] [int] NULL,
	[pdftemplateID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PDF_TemplateCoverages] PRIMARY KEY CLUSTERED 
(
	[pdf_templateCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDF_TemplateCoverages] ADD  CONSTRAINT [DF_PDF_TemplateCoverages_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
