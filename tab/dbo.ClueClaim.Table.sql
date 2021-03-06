USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClueClaim]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClueClaim](
	[ClueClaimID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[discoveryType] [varchar](25) NULL,
	[atFault] [varchar](25) NULL,
	[claimDate] [smalldatetime] NULL,
	[damageAmount] [int] NULL,
	[CLUEA_RequestID] [int] NULL,
	[CLUEA_DetailID] [int] NULL,
	[drivernumber] [int] NULL,
 CONSTRAINT [PK_ClueClaim] PRIMARY KEY CLUSTERED 
(
	[ClueClaimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClueClaim_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClueClaim_policyID] ON [dbo].[ClueClaim]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_atFault]  DEFAULT (0) FOR [atFault]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_damageAmount]  DEFAULT (0) FOR [damageAmount]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_infoRequestID]  DEFAULT (1) FOR [CLUEA_RequestID]
GO
ALTER TABLE [dbo].[ClueClaim] ADD  CONSTRAINT [DF_ClueClaim_infoRequestDetailID]  DEFAULT (1) FOR [CLUEA_DetailID]
GO
