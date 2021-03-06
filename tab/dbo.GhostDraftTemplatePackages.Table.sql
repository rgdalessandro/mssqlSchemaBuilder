USE [Windhaven]
GO
/****** Object:  Table [dbo].[GhostDraftTemplatePackages]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhostDraftTemplatePackages](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[documentServiceName] [varchar](50) NULL,
	[packageName] [varchar](50) NULL,
	[packageVersion] [varchar](10) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_GhostDraftTemplatePackage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GhostDraftTemplatePackages] ADD  DEFAULT (getdate()) FOR [addDate]
GO
