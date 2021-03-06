USE [Windhaven]
GO
/****** Object:  Table [dbo].[SuspenseCategory]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuspenseCategory](
	[suspenseCategoryID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](500) NULL,
	[active] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_SuspenseCategory] PRIMARY KEY CLUSTERED 
(
	[suspenseCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SuspenseCategory] ADD  CONSTRAINT [DF_SuspenseCategory_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[SuspenseCategory] ADD  CONSTRAINT [DF_SuspenseCategory_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[SuspenseCategory] ADD  CONSTRAINT [DF_SuspenseCategory_usersID]  DEFAULT ((2)) FOR [usersID]
GO
