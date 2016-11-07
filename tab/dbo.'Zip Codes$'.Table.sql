USE [Windhaven]
GO
/****** Object:  Table [dbo].['Zip Codes$']    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Zip Codes$'](
	[Zip] [float] NULL,
	[City] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[Territory] [float] NULL,
	[stateID] [nvarchar](255) NULL,
	[stateShort] [nvarchar](255) NULL
) ON [PRIMARY]

GO
