USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireZipTerritory]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireZipTerritory](
	[DwellingFireZipTerritoryID] [int] IDENTITY(10,1) NOT NULL,
	[zip] [varchar](10) NULL,
	[county] [varchar](50) NULL,
	[territory] [varchar](5) NULL,
	[countyID] [int] NOT NULL,
 CONSTRAINT [PK_DwellingFireZipTerritory] PRIMARY KEY CLUSTERED 
(
	[DwellingFireZipTerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
