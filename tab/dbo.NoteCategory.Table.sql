USE [Windhaven]
GO
/****** Object:  Table [dbo].[NoteCategory]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteCategory](
	[noteCategoryID] [int] IDENTITY(10,1) NOT NULL,
	[noteValue] [int] NULL,
	[description] [varchar](50) NULL,
	[noteType] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_NoteCategory] PRIMARY KEY CLUSTERED 
(
	[noteCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[NoteCategory] ADD  CONSTRAINT [DF_NoteCategory_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[NoteCategory] ADD  CONSTRAINT [DF_NoteCategory_active]  DEFAULT ((1)) FOR [active]
GO
