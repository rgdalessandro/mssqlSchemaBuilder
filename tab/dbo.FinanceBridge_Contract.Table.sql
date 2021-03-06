USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceBridge_Contract]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceBridge_Contract](
	[financeBridge_ContractID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[financeContractID] [int] NULL,
	[actionType] [tinyint] NULL,
	[actionSubType] [tinyint] NULL,
	[changeReason] [tinyint] NULL,
	[changeAmount1] [dbo].[CURRENCY] NULL,
	[changeAmount2] [dbo].[CURRENCY] NULL,
	[changeAmount3] [dbo].[CURRENCY] NULL,
	[changeDate1] [smalldatetime] NULL,
	[changeDate2] [smalldatetime] NULL,
	[changeDate3] [smalldatetime] NULL,
	[moneyType] [tinyint] NULL,
	[moneySubType] [tinyint] NULL,
	[status] [tinyint] NULL,
	[usersID] [int] NULL,
	[noLogEntry] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[processType] [tinyint] NULL,
	[processDate] [smalldatetime] NULL,
	[errorCode] [tinyint] NULL,
	[errorReason] [varchar](232) NULL,
	[errorDate] [smalldatetime] NULL,
	[notes] [varchar](244) NULL,
 CONSTRAINT [PK_FinanceBridge_Contract] PRIMARY KEY CLUSTERED 
(
	[financeBridge_ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceBridge_ContractActionSubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractActionSubType] ON [dbo].[FinanceBridge_Contract]
(
	[actionSubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractActionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractActionType] ON [dbo].[FinanceBridge_Contract]
(
	[actionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractAddDate] ON [dbo].[FinanceBridge_Contract]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeAmount1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeAmount1] ON [dbo].[FinanceBridge_Contract]
(
	[changeAmount1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeAmount2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeAmount2] ON [dbo].[FinanceBridge_Contract]
(
	[changeAmount2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeAmount3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeAmount3] ON [dbo].[FinanceBridge_Contract]
(
	[changeAmount3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeDate1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeDate1] ON [dbo].[FinanceBridge_Contract]
(
	[changeDate1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeDate2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeDate2] ON [dbo].[FinanceBridge_Contract]
(
	[changeDate2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeDate3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeDate3] ON [dbo].[FinanceBridge_Contract]
(
	[changeDate3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractChangeReason]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractChangeReason] ON [dbo].[FinanceBridge_Contract]
(
	[changeReason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractErrorCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractErrorCode] ON [dbo].[FinanceBridge_Contract]
(
	[errorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractErrorDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractErrorDate] ON [dbo].[FinanceBridge_Contract]
(
	[errorDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractFinanceContractID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractFinanceContractID] ON [dbo].[FinanceBridge_Contract]
(
	[financeContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractMoneySubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractMoneySubType] ON [dbo].[FinanceBridge_Contract]
(
	[moneySubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractMoneyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractMoneyType] ON [dbo].[FinanceBridge_Contract]
(
	[moneyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractPolicyID] ON [dbo].[FinanceBridge_Contract]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractProcessDate] ON [dbo].[FinanceBridge_Contract]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractProcessType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractProcessType] ON [dbo].[FinanceBridge_Contract]
(
	[processType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractStatus] ON [dbo].[FinanceBridge_Contract]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractUsersID] ON [dbo].[FinanceBridge_Contract]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_actionSubType]  DEFAULT (0) FOR [actionSubType]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_changeReason]  DEFAULT (0) FOR [changeReason]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_changeAmount1]  DEFAULT (0) FOR [changeAmount1]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_changeAmount2]  DEFAULT (0) FOR [changeAmount2]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_changeAmount3]  DEFAULT (0) FOR [changeAmount3]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_moneyType]  DEFAULT (0) FOR [moneyType]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_moneySubType]  DEFAULT (0) FOR [moneySubType]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_processType]  DEFAULT (0) FOR [processType]
GO
ALTER TABLE [dbo].[FinanceBridge_Contract] ADD  CONSTRAINT [DF_FinanceBridge_Contract_errorCode]  DEFAULT (0) FOR [errorCode]
GO
