USE [Windhaven]
GO
/****** Object:  Table [dbo].[APlus_DebugData]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APlus_DebugData](
	[aplus_DebugDataID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [datetime] NULL,
	[value_int] [int] NULL,
	[value_vchar] [varchar](500) NULL,
	[policyID] [int] NULL,
	[aplus_RequestID] [int] NULL,
 CONSTRAINT [PK_APlus_DebugData] PRIMARY KEY CLUSTERED 
(
	[aplus_DebugDataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[APlus_DebugData] ADD  CONSTRAINT [DF_APlus_DebugData_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[APlus_DebugData] ADD  CONSTRAINT [DF_APlus_DebugData_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[APlus_DebugData] ADD  CONSTRAINT [DF_APlus_DebugData_aplus_RequestID]  DEFAULT ((1)) FOR [aplus_RequestID]
GO
