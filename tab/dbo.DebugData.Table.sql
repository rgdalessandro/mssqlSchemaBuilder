USE [Windhaven]
GO
/****** Object:  Table [dbo].[DebugData]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebugData](
	[debugDataID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [datetime] NULL,
	[value_int] [int] NULL,
	[value_vchar] [varchar](500) NULL,
	[policyID] [int] NULL,
	[notes] [varchar](500) NULL,
 CONSTRAINT [PK_DebugData] PRIMARY KEY CLUSTERED 
(
	[debugDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DebugData_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DebugData_policyID] ON [dbo].[DebugData]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DebugData] ADD  CONSTRAINT [DF_DebugData_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[DebugData] ADD  CONSTRAINT [DF_DebugData_policyID]  DEFAULT (1) FOR [policyID]
GO
