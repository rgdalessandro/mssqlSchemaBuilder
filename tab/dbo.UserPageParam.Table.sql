USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserPageParam]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPageParam](
	[userPageParamID] [int] IDENTITY(10,1) NOT NULL,
	[usersID] [int] NULL,
	[strModule] [varchar](255) NULL,
	[strPageParam] [varchar](3000) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_UserPageParam] PRIMARY KEY CLUSTERED 
(
	[userPageParamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserPageParam] ADD  CONSTRAINT [DF_UserPageParam_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[UserPageParam] ADD  CONSTRAINT [DF_UserPageParam_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
