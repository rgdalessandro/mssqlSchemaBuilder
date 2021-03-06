USE [Windhaven]
GO
/****** Object:  Table [dbo].[MemoCategory]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoCategory](
	[memoCategoryID] [int] IDENTITY(10,1) NOT NULL,
	[memoModuleID] [int] NULL,
	[categoryName] [varchar](50) NULL,
	[listName] [varchar](50) NULL,
	[displayOrder] [tinyint] NULL,
 CONSTRAINT [PK_MemoCategory] PRIMARY KEY CLUSTERED 
(
	[memoCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MemoCategory_memoModuleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoCategory_memoModuleID] ON [dbo].[MemoCategory]
(
	[memoModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MemoCategory] ADD  CONSTRAINT [DF_MemoCategory_memoModuleID]  DEFAULT (1) FOR [memoModuleID]
GO
ALTER TABLE [dbo].[MemoCategory] ADD  CONSTRAINT [DF_MemoCategory_displayOrder]  DEFAULT (1) FOR [displayOrder]
GO
