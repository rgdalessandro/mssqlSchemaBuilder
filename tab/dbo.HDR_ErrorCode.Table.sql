USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_ErrorCode]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_ErrorCode](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[code] [int] NOT NULL,
	[codeDescription] [varchar](500) NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_HDR_ErrorCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[HDR_ErrorCode] ADD  CONSTRAINT [DF_HDR_ErrorCode_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
