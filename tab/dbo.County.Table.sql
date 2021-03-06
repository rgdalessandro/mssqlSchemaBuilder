USE [Windhaven]
GO
/****** Object:  Table [dbo].[County]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County](
	[countyID] [int] IDENTITY(1,1) NOT NULL,
	[countyFIPS] [int] NOT NULL,
	[stateID] [tinyint] NULL,
	[stateShort] [varchar](3) NULL,
	[county] [varchar](100) NOT NULL,
	[countyDesc] [varchar](255) NULL,
	[countyDescLong] [varchar](1000) NULL,
	[isCoastal] [tinyint] NULL,
	[ISOTerritory] [varchar](3) NULL,
	[NAIITerritory] [varchar](3) NULL,
	[tier] [tinyint] NULL,
	[zone] [varchar](1) NULL,
	[countyCode] [varchar](15) NULL,
	[version] [tinyint] NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[countyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
