USE [Windhaven]
GO
/****** Object:  Table [dbo].[UsersPasswordLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPasswordLog](
	[userPasswordLogID] [int] IDENTITY(10,1) NOT NULL,
	[usersID] [int] NULL,
	[enPassword] [varchar](150) NULL,
	[logDate] [smalldatetime] NULL,
	[changeUsersID] [int] NULL,
	[logAction] [varchar](10) NULL,
 CONSTRAINT [PK_UsersPasswordLog] PRIMARY KEY CLUSTERED 
(
	[userPasswordLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UsersPasswordLog] ADD  CONSTRAINT [DF_UsersPasswordLog_logDate]  DEFAULT (getdate()) FOR [logDate]
GO
ALTER TABLE [dbo].[UsersPasswordLog] ADD  CONSTRAINT [DF_UsersPasswordLog_changeUsersID]  DEFAULT (2) FOR [changeUsersID]
GO
