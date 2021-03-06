USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDF_Template]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDF_Template](
	[pdfTemplateID] [int] IDENTITY(10,1) NOT NULL,
	[templateName] [varchar](50) NULL,
	[displayName] [varchar](255) NULL,
	[serverPath] [varchar](1000) NULL,
	[version] [decimal](18, 0) NULL,
	[addDate] [smalldatetime] NULL,
	[activeDate] [smalldatetime] NULL,
	[expireDate] [smalldatetime] NULL,
	[insuredCopy] [tinyint] NULL,
	[producerCopy] [tinyint] NULL,
	[companyCopy] [tinyint] NULL,
	[financeCompanyCopy] [tinyint] NULL,
	[additionalInsuredCopy] [tinyint] NULL,
	[claimaintCopy] [tinyint] NULL,
	[lawyerCopy] [tinyint] NULL,
	[vendorCopy] [tinyint] NULL,
	[listExcludeCompanyID] [tinyint] NULL,
	[lienholderCopy] [tinyint] NULL,
	[companyName] [varchar](100) NULL,
	[state] [varchar](2) NULL,
	[lineName] [varchar](25) NULL,
	[revisionDate] [varchar](16) NULL,
	[multipleCopy] [tinyint] NULL,
	[formNum] [varchar](50) NULL,
	[ratingVersionID] [int] NULL,
 CONSTRAINT [PK_PDF_Template] PRIMARY KEY CLUSTERED 
(
	[pdfTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF_PDF_Template_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__insur__11B27783]  DEFAULT ((0)) FOR [insuredCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__produ__12A69BBC]  DEFAULT ((0)) FOR [producerCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__compa__139ABFF5]  DEFAULT ((0)) FOR [companyCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__finan__148EE42E]  DEFAULT ((0)) FOR [financeCompanyCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__addit__15830867]  DEFAULT ((0)) FOR [additionalInsuredCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__claim__16772CA0]  DEFAULT ((0)) FOR [claimaintCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__lawye__176B50D9]  DEFAULT ((0)) FOR [lawyerCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__vendo__185F7512]  DEFAULT ((0)) FOR [vendorCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__listE__1953994B]  DEFAULT ((0)) FOR [listExcludeCompanyID]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  CONSTRAINT [DF__PDF_Templ__lienh__1E184E68]  DEFAULT ((0)) FOR [lienholderCopy]
GO
ALTER TABLE [dbo].[PDF_Template] ADD  DEFAULT ((0)) FOR [multipleCopy]
GO
