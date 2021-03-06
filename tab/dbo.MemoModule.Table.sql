USE [Windhaven]
GO
/****** Object:  Table [dbo].[MemoModule]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoModule](
	[memoModuleID] [int] IDENTITY(10,1) NOT NULL,
	[module] [varchar](50) NULL,
 CONSTRAINT [PK_MemoModule] PRIMARY KEY CLUSTERED 
(
	[memoModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
