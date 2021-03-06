USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_ErrorLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_ErrorLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyID] [int] NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[errorType] [int] NULL,
	[errorDetail] [varchar](500) NULL,
	[description] [varchar](max) NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[HDR_ErrorLog] ADD  DEFAULT ((0)) FOR [errorType]
GO
ALTER TABLE [dbo].[HDR_ErrorLog] ADD  CONSTRAINT [DF_HDR_ErrorLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
