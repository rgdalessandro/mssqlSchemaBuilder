USE [Windhaven]
GO
/****** Object:  Table [dbo].[AttributeType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeType](
	[ID] [int] IDENTITY(10,1) NOT NULL,
	[attributeType] [varchar](25) NULL,
	[attributeDesc] [varchar](50) NULL,
 CONSTRAINT [PK_AttributType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
