USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireZipCountyTerritory]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireZipCountyTerritory](
	[DwellingFireZipCountyTerritoryID] [int] IDENTITY(10,1) NOT NULL,
	[ZipCode] [dbo].[ZIP_Formatted] NULL,
	[City] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[Property_Territory] [nvarchar](50) NULL,
	[State] [dbo].[STATE_Abbrev] NULL,
	[AreaCode] [int] NULL,
	[FIPS] [int] NULL,
	[LAT] [float] NULL,
	[LONG] [float] NULL,
 CONSTRAINT [PK_DwellingFireZipCountyTerritory] PRIMARY KEY CLUSTERED 
(
	[DwellingFireZipCountyTerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
