USE [Windhaven]
GO
/****** Object:  Table [dbo].[Workflow]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workflow](
	[workflowID] [int] IDENTITY(1,1) NOT NULL,
	[docType] [nvarchar](50) NULL,
	[suspenseType] [int] NULL,
	[expires] [int] NULL,
	[title] [varchar](200) NULL,
	[body] [varchar](5000) NULL,
	[notes] [varchar](3000) NULL,
	[status] [int] NULL,
	[priority] [int] NULL,
	[usersIDto] [varchar](2000) NULL,
	[usersIDfrom] [int] NULL,
	[policyID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[insuredID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[usersIDSupervisor] [int] NULL,
	[suspenseCategoryID] [int] NULL,
	[internal] [bit] NULL,
	[active] [int] NULL,
	[assignType] [nvarchar](50) NULL,
	[assignTypeAugment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Workflow] PRIMARY KEY CLUSTERED 
(
	[workflowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Workflow_claimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_claimIncidentID] ON [dbo].[Workflow]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_companyID] ON [dbo].[Workflow]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_insuredID] ON [dbo].[Workflow]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_policyID] ON [dbo].[Workflow]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_producerID] ON [dbo].[Workflow]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_status] ON [dbo].[Workflow]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Workflow_suspenseCategoryID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Workflow_suspenseCategoryID] ON [dbo].[Workflow]
(
	[suspenseCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
