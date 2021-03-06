USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireTerritory]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireTerritory](
	[dwellingFireTerritoryID] [int] IDENTITY(10,1) NOT NULL,
	[territory] [varchar](5) NULL,
	[countyID] [int] NULL,
	[hailExposure] [tinyint] NULL,
	[companyID] [int] NULL,
	[ratingVersion] [money] NULL,
	[ratingVersionID] [int] NULL,
 CONSTRAINT [PK_DwellingFireTerritory] PRIMARY KEY CLUSTERED 
(
	[dwellingFireTerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
