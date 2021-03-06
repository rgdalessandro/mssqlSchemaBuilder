USE [Windhaven]
GO
/****** Object:  Table [dbo].[ImagingPref]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagingPref](
	[indexingUserID] [int] IDENTITY(1,1) NOT NULL,
	[indexingUser] [nvarchar](50) NULL,
	[thumbViewIndex] [nvarchar](50) NULL,
	[thumbViewPolicy] [nvarchar](50) NULL,
	[ptsWinPosX] [int] NULL,
	[ptsWinPosY] [int] NULL,
	[ptsWinSizeX] [int] NULL,
	[ptsWinSizeY] [int] NULL,
	[imgWinPosX] [int] NULL,
	[imgWinPosY] [int] NULL,
	[imgWinSizeX] [int] NULL,
	[imgWinSizeY] [int] NULL,
	[resolutionIndex] [nvarchar](50) NULL,
	[resolutionPolicy] [nvarchar](50) NULL,
	[newSubLayout] [nvarchar](50) NULL,
	[policyImgWinPosX] [int] NULL,
	[policyImgWinPosY] [int] NULL,
	[policyImgWinSizeX] [int] NULL,
	[policyImgWinSizeY] [int] NULL,
	[policyLayout] [nvarchar](50) NULL,
 CONSTRAINT [PK_ImagingPref] PRIMARY KEY CLUSTERED 
(
	[indexingUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
