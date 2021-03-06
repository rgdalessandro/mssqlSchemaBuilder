USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemShutDownLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemShutDownLog](
	[systemShutDownLogID] [int] IDENTITY(10,1) NOT NULL,
	[shutDownStart] [datetime] NULL,
	[shutDownEnd] [datetime] NULL,
	[usersID] [int] NOT NULL,
	[shutDownReason] [varchar](200) NULL,
	[shutDownScheduleName] [varchar](30) NULL,
	[restartScheduleName] [varchar](30) NULL,
 CONSTRAINT [PK_SystemShutDownLog] PRIMARY KEY CLUSTERED 
(
	[systemShutDownLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[SystemShutDownLog] ADD  CONSTRAINT [DF_SystemShutDownLog_usersID]  DEFAULT (1) FOR [usersID]
GO
