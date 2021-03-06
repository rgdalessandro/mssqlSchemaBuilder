USE [Windhaven]
GO
/****** Object:  Table [dbo].[GhostDraft_Templates]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhostDraft_Templates](
	[ghostDraftTemplateID] [int] IDENTITY(1,1) NOT NULL,
	[documentServiceID] [int] NULL,
	[documentServiceName] [varchar](100) NULL,
	[packageID] [int] NULL,
	[packageName] [varchar](100) NULL,
	[packageVersion] [varchar](25) NULL,
	[ghostDraftTemplateName] [varchar](100) NULL,
	[pdfTemplateID] [int] NULL,
	[effectiveDate] [smalldatetime] NULL,
	[XMLComponent] [varchar](100) NULL,
 CONSTRAINT [GDPK] PRIMARY KEY CLUSTERED 
(
	[ghostDraftTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
