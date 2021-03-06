USE [Windhaven]
GO
/****** Object:  Table [dbo].[LockoutLocation]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LockoutLocation](
	[lockoutLocationID] [int] IDENTITY(10,1) NOT NULL,
	[lockoutID] [int] NULL,
	[zip] [int] NULL,
	[county] [varchar](255) NULL,
	[territory] [int] NULL,
 CONSTRAINT [PK_LockoutLocation] PRIMARY KEY CLUSTERED 
(
	[lockoutLocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
