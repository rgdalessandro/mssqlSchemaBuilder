USE [Windhaven]
GO
/****** Object:  Table [dbo].[Faxed]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faxed](
	[faxFileName] [varchar](50) NOT NULL,
	[complete] [int] NULL,
	[fileOpen] [int] NULL,
	[faxFileID] [int] IDENTITY(1,1) NOT NULL,
	[faxDate] [nvarchar](50) NULL,
	[faxTime] [nvarchar](50) NULL,
	[hiddenSys] [int] NULL,
	[indexingUser] [varchar](50) NULL,
 CONSTRAINT [PK_Faxed] PRIMARY KEY CLUSTERED 
(
	[faxFileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
