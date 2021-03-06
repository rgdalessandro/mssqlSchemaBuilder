USE [Windhaven]
GO
/****** Object:  Table [dbo].[ImagingFolders]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagingFolders](
	[folderID] [int] IDENTITY(1,1) NOT NULL,
	[folderName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ImagingFolders] PRIMARY KEY CLUSTERED 
(
	[folderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
