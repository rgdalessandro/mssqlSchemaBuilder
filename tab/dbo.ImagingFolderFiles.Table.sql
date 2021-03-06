USE [Windhaven]
GO
/****** Object:  Table [dbo].[ImagingFolderFiles]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagingFolderFiles](
	[fileID] [int] IDENTITY(1,1) NOT NULL,
	[fileName] [nvarchar](500) NULL,
	[complete] [int] NULL,
	[fileOpen] [int] NULL,
	[fileDate] [nvarchar](50) NULL,
	[fileTime] [nvarchar](50) NULL,
	[hiddenSys] [int] NULL,
	[indexingUser] [nvarchar](50) NULL,
	[folderID] [int] NULL,
 CONSTRAINT [PK_ImagingFolderFiles] PRIMARY KEY CLUSTERED 
(
	[fileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ImagingFolderFiles_folderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ImagingFolderFiles_folderID] ON [dbo].[ImagingFolderFiles]
(
	[folderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
