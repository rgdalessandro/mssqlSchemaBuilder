USE [Windhaven]
GO
/****** Object:  Table [dbo].[NCFDebugData]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCFDebugData](
	[NCFDebugDataID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [datetime] NOT NULL,
	[value_int] [int] NULL,
	[value_vchar] [varchar](3000) NULL,
 CONSTRAINT [PK_NCFDebugData] PRIMARY KEY CLUSTERED 
(
	[NCFDebugDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_NCFDebugData_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCFDebugData_addDate] ON [dbo].[NCFDebugData]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCFDebugData] ADD  CONSTRAINT [DF_NCFDebugData_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
