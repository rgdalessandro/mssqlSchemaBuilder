USE [Windhaven]
GO
/****** Object:  Table [dbo].[FloridaCountyCodes]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloridaCountyCodes](
	[countyID] [int] NULL,
	[county] [varchar](255) NULL,
	[florida_code] [varchar](5) NULL,
	[zipCode] [dbo].[ZIP_Formatted] NULL,
	[ratingRegion] [varchar](5) NULL
) ON [PRIMARY]

GO
