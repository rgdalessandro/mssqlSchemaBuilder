USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountAdjustment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountAdjustment](
	[accountAdjustmentID] [int] IDENTITY(10,1) NOT NULL,
	[accountType] [tinyint] NULL,
	[producerID] [int] NULL,
	[insuredID] [int] NULL,
	[companyID] [int] NULL,
	[financeCompanyID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[policyID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[processDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[adjustmentType] [tinyint] NULL,
	[reason] [varchar](100) NULL,
	[note] [varchar](184) NULL,
	[usersID] [int] NULL,
	[accountExpenseID] [int] NULL,
	[payableTo] [varchar](100) NULL,
	[amountOther] [dbo].[CURRENCY] NULL,
	[lienholderID] [int] NULL,
 CONSTRAINT [PK_AccountAdj] PRIMARY KEY CLUSTERED 
(
	[accountAdjustmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountAdjustment_lienholderID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustment_lienholderID] ON [dbo].[AccountAdjustment]
(
	[lienholderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AccountAdjustment_payableTo]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustment_payableTo] ON [dbo].[AccountAdjustment]
(
	[payableTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustment_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustment_usersID] ON [dbo].[AccountAdjustment]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentAccountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentAccountExpenseID] ON [dbo].[AccountAdjustment]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentAccountType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentAccountType] ON [dbo].[AccountAdjustment]
(
	[accountType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentActionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentActionType] ON [dbo].[AccountAdjustment]
(
	[adjustmentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentAddDate] ON [dbo].[AccountAdjustment]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentAmount] ON [dbo].[AccountAdjustment]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentAmountOther]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentAmountOther] ON [dbo].[AccountAdjustment]
(
	[amountOther] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentClaimantID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentClaimantID] ON [dbo].[AccountAdjustment]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentCompanyID] ON [dbo].[AccountAdjustment]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentFinanceCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentFinanceCompanyID] ON [dbo].[AccountAdjustment]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentInsuredID] ON [dbo].[AccountAdjustment]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentPolicyID] ON [dbo].[AccountAdjustment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentProcessDate] ON [dbo].[AccountAdjustment]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountAdjustmentProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountAdjustmentProducerID] ON [dbo].[AccountAdjustment]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_accountType]  DEFAULT (0) FOR [accountType]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_claimID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdjustment_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_addDate1]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_expenseDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_expenseType]  DEFAULT (0) FOR [adjustmentType]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdj_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdjustment_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdjustment_amountPrevPending]  DEFAULT (0) FOR [amountOther]
GO
ALTER TABLE [dbo].[AccountAdjustment] ADD  CONSTRAINT [DF_AccountAdjustment_lienholderID]  DEFAULT (1) FOR [lienholderID]
GO
