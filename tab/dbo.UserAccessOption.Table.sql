USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserAccessOption]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccessOption](
	[userAccessOptionID] [int] IDENTITY(10,1) NOT NULL,
	[strVariable] [varchar](50) NULL,
	[displaySection] [varchar](50) NULL,
	[name] [varchar](100) NULL,
	[description] [varchar](500) NULL,
	[notes] [varchar](500) NULL,
	[listNoOption] [varchar](50) NULL,
	[useType] [tinyint] NULL,
	[useRole] [tinyint] NULL,
 CONSTRAINT [PK_UserAccessOption] PRIMARY KEY CLUSTERED 
(
	[userAccessOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UserAccessOption] ADD  CONSTRAINT [DF_UserAccessOption_useType]  DEFAULT ((0)) FOR [useType]
GO
ALTER TABLE [dbo].[UserAccessOption] ADD  CONSTRAINT [DF_UserAccessOption_isRole]  DEFAULT ((0)) FOR [useRole]
GO
