USE [Windhaven]
GO
/****** Object:  Table [dbo].[UsersLoginLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLoginLog](
	[ID] [int] IDENTITY(10,1) NOT NULL,
	[usersID] [int] NOT NULL,
	[loginDate] [smalldatetime] NULL,
 CONSTRAINT [PK_UsersLoginLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
