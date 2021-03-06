USE [Windhaven]
GO
/****** Object:  Table [dbo].[State_Reporting_Import]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_Reporting_Import](
	[state_Reporting_ImportID] [int] IDENTITY(10,1) NOT NULL,
	[fileName] [varchar](500) NULL,
	[lineCount] [int] NULL,
	[status] [tinyint] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[controlNumber] [int] NULL,
 CONSTRAINT [PK_State_Reporting_Import] PRIMARY KEY CLUSTERED 
(
	[state_Reporting_ImportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_State_Reporting_Import_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_Import_status] ON [dbo].[State_Reporting_Import]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_State_Reporting_Import_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_Import_usersID] ON [dbo].[State_Reporting_Import]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[State_Reporting_Import] ADD  CONSTRAINT [DF_State_Reporting_Import_lineCount]  DEFAULT (0) FOR [lineCount]
GO
ALTER TABLE [dbo].[State_Reporting_Import] ADD  CONSTRAINT [DF_State_Reporting_Import_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[State_Reporting_Import] ADD  CONSTRAINT [DF_State_Reporting_Import_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[State_Reporting_Import] ADD  CONSTRAINT [DF_State_Reporting_Import_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
