USE [Windhaven]
GO
/****** Object:  Table [dbo].[Suspense]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suspense](
	[suspenseID] [int] IDENTITY(10,1) NOT NULL,
	[suspenseType] [tinyint] NULL,
	[issued] [smalldatetime] NULL,
	[expires] [smalldatetime] NULL,
	[title] [varchar](200) NULL,
	[body] [varchar](3000) NULL,
	[policyID] [int] NULL,
	[usersIDto] [int] NULL,
	[usersIDfrom] [int] NULL,
	[completed] [bit] NOT NULL,
	[completedID] [int] NULL,
	[completedDate] [smalldatetime] NULL,
	[notes] [varchar](3000) NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[insuredID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[usersIDSupervisor] [int] NULL,
	[terminationDetailID] [int] NULL,
	[suspenseCategoryID] [int] NULL,
	[modifydate] [smalldatetime] NULL,
	[sendRFI] [tinyint] NULL,
	[listOther] [varchar](150) NULL,
 CONSTRAINT [PK_17_Task] PRIMARY KEY CLUSTERED 
(
	[suspenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IN_16_TaskuserIDfrom]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_16_TaskuserIDfrom] ON [dbo].[Suspense]
(
	[usersIDfrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SuspenseClaimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SuspenseClaimIncidentID] ON [dbo].[Suspense]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SuspenseExpires]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SuspenseExpires] ON [dbo].[Suspense]
(
	[expires] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SuspensePolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SuspensePolicyID] ON [dbo].[Suspense]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_SuspenseUsersIDTo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SuspenseUsersIDTo] ON [dbo].[Suspense]
(
	[usersIDto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_6_Tasktype]  DEFAULT (0) FOR [suspenseType]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_7_Taskissued]  DEFAULT (getdate()) FOR [issued]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_expires]  DEFAULT (getdate()) FOR [expires]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Task_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_12_TaskuserIDto]  DEFAULT (1) FOR [usersIDto]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_16_TaskuserIDfrom]  DEFAULT (1) FOR [usersIDfrom]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Task_completed]  DEFAULT (0) FOR [completed]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Task_completedID]  DEFAULT (1) FOR [completedID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_usersIDSuperviser]  DEFAULT (1) FOR [usersIDSupervisor]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_terminationDetailID]  DEFAULT (1) FOR [terminationDetailID]
GO
ALTER TABLE [dbo].[Suspense] ADD  CONSTRAINT [DF_Suspense_sendRFI]  DEFAULT ((0)) FOR [sendRFI]
GO
