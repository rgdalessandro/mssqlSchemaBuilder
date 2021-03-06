USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_Action]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_Action](
	[MVR_ActionID] [int] IDENTITY(1,1) NOT NULL,
	[MVR_RequestID] [int] NULL,
	[IssueDate] [varchar](12) NULL,
	[Description] [varchar](50) NULL,
	[OrderNumber] [varchar](15) NULL,
	[EventType] [varchar](25) NULL,
	[RestoreDate] [varchar](12) NULL,
	[ActionTaken] [varchar](15) NULL,
 CONSTRAINT [PK_MVR_Action] PRIMARY KEY CLUSTERED 
(
	[MVR_ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MVR_Action]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Action] ON [dbo].[MVR_Action]
(
	[MVR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVR_Action] ADD  CONSTRAINT [DF_MVR_Action_MVR_RequestID]  DEFAULT (1) FOR [MVR_RequestID]
GO
