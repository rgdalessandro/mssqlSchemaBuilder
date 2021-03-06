USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserActivity]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivity](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[action] [int] NULL,
	[addDate] [smalldatetime] NOT NULL,
	[usersID] [int] NOT NULL,
	[objectID] [int] NULL,
	[objectType] [varchar](25) NULL,
 CONSTRAINT [PK_UserActivity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserActivity] ADD  CONSTRAINT [DF__UserActiv__addDa__0E6CC1DB]  DEFAULT (getdate()) FOR [addDate]
GO
