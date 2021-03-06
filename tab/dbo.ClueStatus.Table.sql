USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClueStatus]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClueStatus](
	[clueID] [int] IDENTITY(10,1) NOT NULL,
	[adddate] [datetime] NULL,
	[status] [varchar](50) NULL,
	[Step] [int] NULL,
	[records] [int] NULL,
	[filename] [varchar](250) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[reportType] [varchar](50) NULL,
 CONSTRAINT [PK_ClueStatus] PRIMARY KEY CLUSTERED 
(
	[clueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClueStatus_adddate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClueStatus_adddate] ON [dbo].[ClueStatus]
(
	[adddate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClueStatus] ADD  CONSTRAINT [DF_ClueStatus_adddate]  DEFAULT (getdate()) FOR [adddate]
GO
ALTER TABLE [dbo].[ClueStatus] ADD  CONSTRAINT [DF_ClueStatus_reportType]  DEFAULT ('Auto') FOR [reportType]
GO
