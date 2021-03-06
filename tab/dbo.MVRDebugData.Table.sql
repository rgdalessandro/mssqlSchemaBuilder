USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVRDebugData]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVRDebugData](
	[MVRDebugDataID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [datetime] NOT NULL,
	[value_int] [int] NULL,
	[value_vchar] [varchar](3000) NULL,
 CONSTRAINT [PK_MVRDebugData] PRIMARY KEY CLUSTERED 
(
	[MVRDebugDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MVRDebugData_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVRDebugData_addDate] ON [dbo].[MVRDebugData]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVRDebugData] ADD  CONSTRAINT [DF_MVRDebugData_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
