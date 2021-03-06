USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyImportLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyImportLog](
	[PolicyImportLogID] [int] IDENTITY(10,1) NOT NULL,
	[startDate] [datetime] NOT NULL,
	[endDate] [datetime] NULL,
	[importDays] [int] NULL,
	[importDuplicates] [varchar](5) NULL,
	[remoteIP] [varchar](15) NULL,
	[emailList] [varchar](1000) NULL,
	[requestedImportCount] [varchar](10) NULL,
	[isRunning] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PolicyImportLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PolicyImportLog] ADD  DEFAULT (getdate()) FOR [startDate]
GO
ALTER TABLE [dbo].[PolicyImportLog] ADD  DEFAULT ((1)) FOR [isRunning]
GO
