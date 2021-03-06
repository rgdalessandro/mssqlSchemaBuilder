USE [Windhaven]
GO
/****** Object:  Table [dbo].[Scanned]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scanned](
	[scanFileID] [int] IDENTITY(1,1) NOT NULL,
	[scanFileName] [varchar](50) NULL,
	[complete] [int] NULL,
	[fileOpen] [int] NULL,
	[scanDate] [nvarchar](50) NULL,
	[scanTime] [nvarchar](50) NULL,
	[hiddenSys] [int] NULL,
	[indexingUser] [varchar](50) NULL,
 CONSTRAINT [PK_Scanned] PRIMARY KEY CLUSTERED 
(
	[scanFileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
