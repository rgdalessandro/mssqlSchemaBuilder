USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchRenewLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchRenewLog](
	[batchRenewLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[renewalPolicyID] [int] NULL,
	[startDate] [datetime] NULL,
	[createRenewal] [datetime] NULL,
	[endDate] [datetime] NULL,
	[timeToExec] [decimal](18, 6) NULL,
	[timeToCreateRenewal] [decimal](18, 6) NULL,
	[timeToRate] [decimal](18, 6) NULL,
 CONSTRAINT [PK_BatchRenewLog] PRIMARY KEY CLUSTERED 
(
	[batchRenewLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BatchRenewLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BatchRenewLog_policyID] ON [dbo].[BatchRenewLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BatchRenewLog] ADD  CONSTRAINT [DF__BatchRene__start__75562FF7]  DEFAULT (getdate()) FOR [startDate]
GO
