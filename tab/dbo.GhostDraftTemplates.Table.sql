USE [Windhaven]
GO
/****** Object:  Table [dbo].[GhostDraftTemplates]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhostDraftTemplates](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[ghostDraftTemplatePackageID] [int] NOT NULL,
	[templateName] [varchar](100) NULL,
	[categoryType] [tinyint] NULL,
	[objectType] [tinyint] NULL,
	[addDate] [datetime] NULL,
	[insuredCopy] [bit] NOT NULL,
	[producerCopy] [bit] NOT NULL,
	[companyCopy] [bit] NOT NULL,
	[financeCompanyCopy] [bit] NOT NULL,
	[lienholderCopy] [bit] NOT NULL,
	[additionalInsuredCopy] [bit] NOT NULL,
 CONSTRAINT [PK_GhostDraftTemplates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GhostDraftTemplates] ADD  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[GhostDraftTemplates]  WITH CHECK ADD  CONSTRAINT [FK_GhostDraftTemplatePackage_GhostDraftTemplates] FOREIGN KEY([ghostDraftTemplatePackageID])
REFERENCES [dbo].[GhostDraftTemplatePackages] ([id])
GO
ALTER TABLE [dbo].[GhostDraftTemplates] CHECK CONSTRAINT [FK_GhostDraftTemplatePackage_GhostDraftTemplates]
GO
