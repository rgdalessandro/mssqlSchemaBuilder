USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_Other]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_Other](
	[MVR_OtherID] [int] IDENTITY(10,1) NOT NULL,
	[MVR_RequestID] [int] NULL,
	[IssueDate] [varchar](15) NULL,
	[Description] [varchar](100) NULL,
	[SubType] [varchar](50) NULL,
	[Misce] [varchar](50) NULL,
	[FileDate] [varchar](15) NULL,
	[RS] [varchar](5) NULL,
	[ConvReistDate] [varchar](15) NULL,
 CONSTRAINT [PK_MVR_Other] PRIMARY KEY CLUSTERED 
(
	[MVR_OtherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MVR_Other]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Other] ON [dbo].[MVR_Other]
(
	[MVR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVR_Other] ADD  CONSTRAINT [DF_MVR_Other_MVR_ReqeustID]  DEFAULT (1) FOR [MVR_RequestID]
GO
