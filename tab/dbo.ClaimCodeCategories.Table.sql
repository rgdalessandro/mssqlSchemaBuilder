USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimCodeCategories]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCodeCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentID] [int] NULL,
	[description] [varchar](100) NOT NULL,
	[logo] [varchar](150) NULL,
	[sortOrder] [smallint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_ClaimCodeCategories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimCodeCategories] ADD  CONSTRAINT [DF__ClaimCode__sortO__55E87196]  DEFAULT ((1)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[ClaimCodeCategories] ADD  CONSTRAINT [DF__ClaimCode__isAct__56DC95CF]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[ClaimCodeCategories] ADD  CONSTRAINT [DF__ClaimCode__addDa__57D0BA08]  DEFAULT (getdate()) FOR [addDate]
GO
