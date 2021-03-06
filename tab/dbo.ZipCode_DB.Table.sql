USE [Windhaven]
GO
/****** Object:  Table [dbo].[ZipCode_DB]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode_DB](
	[ZIPCODE] [nvarchar](5) NULL,
	[LATITUDE] [float] NULL,
	[LONGITUDE] [float] NULL,
	[CITY] [nvarchar](28) NULL,
	[STATE] [nvarchar](50) NULL,
	[ABBR] [nvarchar](50) NULL
) ON [PRIMARY]

GO
