USE [Windhaven]
GO
/****** Object:  Table [dbo].[APIUser]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APIUser](
	[apiUserID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[ipAddress] [varchar](15) NOT NULL,
	[secretKey] [varchar](128) NOT NULL,
	[salt] [varchar](25) NULL,
	[active] [tinyint] NOT NULL,
	[addDate] [datetime] NOT NULL,
 CONSTRAINT [PK_APIUser] PRIMARY KEY CLUSTERED 
(
	[apiUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[APIUser] ADD  CONSTRAINT [DF__ApiUser__active__5DBE9D88]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[APIUser] ADD  CONSTRAINT [DF__ApiUser__addDate__5EB2C1C1]  DEFAULT (getdate()) FOR [addDate]
GO
