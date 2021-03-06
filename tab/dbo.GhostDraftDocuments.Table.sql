USE [Windhaven]
GO
/****** Object:  Table [dbo].[GhostDraftDocuments]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhostDraftDocuments](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[templatePackageID] [int] NOT NULL,
	[templateID] [int] NULL,
	[templateName] [varchar](100) NOT NULL,
	[data] [text] NOT NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_GhostDraftDocuments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[GhostDraftDocuments] ADD  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[GhostDraftDocuments]  WITH CHECK ADD  CONSTRAINT [FK_GhostDraftDocuments_GhostDraftTemplatePackages] FOREIGN KEY([templatePackageID])
REFERENCES [dbo].[GhostDraftTemplatePackages] ([id])
GO
ALTER TABLE [dbo].[GhostDraftDocuments] CHECK CONSTRAINT [FK_GhostDraftDocuments_GhostDraftTemplatePackages]
GO
ALTER TABLE [dbo].[GhostDraftDocuments]  WITH CHECK ADD  CONSTRAINT [FK_GhostDraftDocuments_GhostDraftTemplates] FOREIGN KEY([templateID])
REFERENCES [dbo].[GhostDraftTemplates] ([id])
GO
ALTER TABLE [dbo].[GhostDraftDocuments] CHECK CONSTRAINT [FK_GhostDraftDocuments_GhostDraftTemplates]
GO
