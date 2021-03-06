USE [Windhaven]
GO
/****** Object:  Table [dbo].[CreditScore]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditScore](
	[creditScoreID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[creditStatus] [int] NULL,
	[creditStatus2] [int] NULL,
	[creditScore] [int] NULL,
	[creditScore2] [int] NULL,
	[creditTier] [int] NULL,
	[creditTier2] [int] NULL,
	[creditDate] [datetime] NULL,
	[creditDate2] [datetime] NULL,
	[requestID] [int] NULL,
	[requestID2] [int] NULL,
 CONSTRAINT [PK_creditScore] PRIMARY KEY CLUSTERED 
(
	[creditScoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CreditScore_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreditScore_policyID] ON [dbo].[CreditScore]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditStatus]  DEFAULT ((0)) FOR [creditStatus]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditStatus2]  DEFAULT ((0)) FOR [creditStatus2]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditScore]  DEFAULT ((0)) FOR [creditScore]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditScore2]  DEFAULT ((0)) FOR [creditScore2]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditTier]  DEFAULT ((0)) FOR [creditTier]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_creditScore_creditTier2]  DEFAULT ((0)) FOR [creditTier2]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_CreditScore_requestID]  DEFAULT ((1)) FOR [requestID]
GO
ALTER TABLE [dbo].[CreditScore] ADD  CONSTRAINT [DF_CreditScore_requestID2]  DEFAULT ((1)) FOR [requestID2]
GO
