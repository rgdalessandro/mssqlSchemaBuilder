USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserAccess]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccess](
	[userAccessID] [int] IDENTITY(10,1) NOT NULL,
	[userTypeID] [int] NULL,
	[usersID] [int] NULL,
	[userAccessOptionID] [int] NULL,
	[accessType] [tinyint] NULL,
 CONSTRAINT [PK_UserAccess] PRIMARY KEY CLUSTERED 
(
	[userAccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserAccess] ADD  CONSTRAINT [DF_UserAccess_userTypeID]  DEFAULT ((1)) FOR [userTypeID]
GO
ALTER TABLE [dbo].[UserAccess] ADD  CONSTRAINT [DF_UserAccess_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[UserAccess] ADD  CONSTRAINT [DF_UserAccess_userAccessOptionID]  DEFAULT ((1)) FOR [userAccessOptionID]
GO
ALTER TABLE [dbo].[UserAccess] ADD  CONSTRAINT [DF_UserAccess_accessType_1]  DEFAULT ((0)) FOR [accessType]
GO
