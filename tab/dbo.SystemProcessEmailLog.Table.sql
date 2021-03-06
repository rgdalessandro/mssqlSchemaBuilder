USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemProcessEmailLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemProcessEmailLog](
	[SystemProcessEmailLogID] [int] IDENTITY(10,1) NOT NULL,
	[fromAddress] [varchar](150) NULL,
	[toAddress] [varchar](500) NULL,
	[subject] [text] NULL,
	[emailBody] [text] NULL,
	[type] [int] NULL,
	[typeDescription] [varchar](25) NULL,
	[addDate] [smalldatetime] NULL,
	[UID] [int] NULL,
 CONSTRAINT [PK_SystemProcessEmailLog] PRIMARY KEY CLUSTERED 
(
	[SystemProcessEmailLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[SystemProcessEmailLog] ADD  CONSTRAINT [DF_SystemProcessEmailLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
