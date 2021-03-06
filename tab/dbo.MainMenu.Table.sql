USE [Windhaven]
GO
/****** Object:  Table [dbo].[MainMenu]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainMenu](
	[mainMenuID] [int] IDENTITY(10,1) NOT NULL,
	[linkDisplay] [varchar](50) NULL,
	[linkSummary] [varchar](50) NULL,
	[linkDescription] [varchar](255) NULL,
	[parentMainMenuID] [int] NULL,
	[hasSearch] [tinyint] NULL,
	[searchAction] [varchar](50) NULL,
	[searchFieldName] [varchar](50) NULL,
	[titleText] [varchar](100) NULL,
	[URL] [varchar](100) NULL,
	[URLParam] [varchar](200) NULL,
	[displayOrder] [tinyint] NULL,
	[permissionRestrict] [varchar](500) NULL,
 CONSTRAINT [PK_MainMenu] PRIMARY KEY CLUSTERED 
(
	[mainMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[MainMenu] ADD  CONSTRAINT [DF_MainMenu_parentMainMenuID]  DEFAULT ((1)) FOR [parentMainMenuID]
GO
ALTER TABLE [dbo].[MainMenu] ADD  CONSTRAINT [DF_MainMenu_hasSearch]  DEFAULT ((0)) FOR [hasSearch]
GO
ALTER TABLE [dbo].[MainMenu] ADD  CONSTRAINT [DF_MainMenu_displayOrder]  DEFAULT ((0)) FOR [displayOrder]
GO
