USE [Windhaven]
GO
/****** Object:  Table [dbo].[TerminationReason]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminationReason](
	[terminationReasonID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](255) NULL,
	[doNotUse] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_TerminationReason] PRIMARY KEY CLUSTERED 
(
	[terminationReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[TerminationReason] ADD  CONSTRAINT [DF_TerminationReason_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
