USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDF_MemoTemplate]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDF_MemoTemplate](
	[pdf_memoTemplateID] [int] IDENTITY(10,1) NOT NULL,
	[templateName] [varchar](100) NULL,
	[displayName] [varchar](100) NULL,
	[serverPath] [varchar](250) NULL,
	[headerPath] [varchar](250) NULL,
	[footerPath] [varchar](250) NULL,
	[includeHeader] [tinyint] NULL,
	[includeFooter] [tinyint] NULL,
	[version] [decimal](18, 0) NULL,
	[addDate] [smalldatetime] NULL,
	[activeDate] [smalldatetime] NULL,
	[expireDate] [smalldatetime] NULL,
	[companyName] [varchar](100) NULL,
	[state] [varchar](2) NULL,
	[lineName] [varchar](50) NULL,
	[topMargin] [decimal](15, 5) NULL,
	[headerAlign] [varchar](50) NULL,
	[bottomMargin] [decimal](15, 5) NULL,
	[footerAlign] [varchar](50) NULL,
	[headerRightMargin] [decimal](15, 5) NULL,
	[headerLeftMargin] [decimal](15, 5) NULL,
	[footerRightMargin] [decimal](15, 5) NULL,
	[footerLeftMargin] [decimal](15, 5) NULL,
	[flattenPDf] [tinyint] NULL,
	[formNum] [varchar](50) NULL,
 CONSTRAINT [PK_PDF_MemoTemplate] PRIMARY KEY CLUSTERED 
(
	[pdf_memoTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDF_MemoTemplate] ADD  CONSTRAINT [DF_PDF_MemoTemplate_includeHeader]  DEFAULT ((1)) FOR [includeHeader]
GO
ALTER TABLE [dbo].[PDF_MemoTemplate] ADD  CONSTRAINT [DF_PDF_MemoTemplate_includeFooter]  DEFAULT ((1)) FOR [includeFooter]
GO
ALTER TABLE [dbo].[PDF_MemoTemplate] ADD  CONSTRAINT [DF_PDF_MemoTemplate_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PDF_MemoTemplate] ADD  DEFAULT ((0)) FOR [flattenPDf]
GO
