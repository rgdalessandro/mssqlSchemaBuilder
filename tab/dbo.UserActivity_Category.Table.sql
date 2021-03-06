USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserActivity_Category]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivity_Category](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[category] [tinyint] NOT NULL,
	[categoryDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserActivity_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
