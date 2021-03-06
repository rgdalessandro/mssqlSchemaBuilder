USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemISOAccount]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemISOAccount](
	[systemISOAccountID] [int] IDENTITY(10,1) NOT NULL,
	[account] [varchar](50) NOT NULL,
	[subaccount] [varchar](50) NOT NULL,
	[cvsub] [varchar](50) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[passWord] [varchar](50) NOT NULL,
	[inUse] [varchar](50) NULL,
	[note] [varchar](500) NULL,
	[dateInUse] [smalldatetime] NULL,
	[liveAcct] [varchar](50) NULL,
	[note1] [text] NULL,
	[note2] [text] NULL,
	[note3] [text] NULL,
 CONSTRAINT [PK_SystemISOAccount] PRIMARY KEY CLUSTERED 
(
	[systemISOAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
