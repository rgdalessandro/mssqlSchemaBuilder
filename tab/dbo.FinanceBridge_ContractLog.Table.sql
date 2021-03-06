USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceBridge_ContractLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceBridge_ContractLog](
	[financeBridge_ContractLogID] [int] IDENTITY(10,1) NOT NULL,
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
	[addDate] [smalldatetime] NULL,
	[processType] [tinyint] NULL,
	[processDate] [smalldatetime] NULL,
	[errorCode] [tinyint] NULL,
	[errorReason] [varchar](232) NULL,
	[errorDate] [smalldatetime] NULL,
	[notes] [varchar](244) NULL,
 CONSTRAINT [PK_FinanceBridge_ContractLog] PRIMARY KEY CLUSTERED 
(
	[financeBridge_ContractLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceBridge_ContractLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLog_policyID] ON [dbo].[FinanceBridge_ContractLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogAddDate] ON [dbo].[FinanceBridge_ContractLog]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeAmount1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeAmount1] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeAmount1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeAmount2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeAmount2] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeAmount2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeAmount3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeAmount3] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeAmount3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeDate1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeDate1] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeDate1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeDate2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeDate2] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeDate2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogChangeDate3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogChangeDate3] ON [dbo].[FinanceBridge_ContractLog]
(
	[changeDate3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogErrorCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogErrorCode] ON [dbo].[FinanceBridge_ContractLog]
(
	[errorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogErrorDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogErrorDate] ON [dbo].[FinanceBridge_ContractLog]
(
	[errorDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogMoneySubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogMoneySubType] ON [dbo].[FinanceBridge_ContractLog]
(
	[moneySubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogMoneyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogMoneyType] ON [dbo].[FinanceBridge_ContractLog]
(
	[moneyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogProcessDate] ON [dbo].[FinanceBridge_ContractLog]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogProcessType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogProcessType] ON [dbo].[FinanceBridge_ContractLog]
(
	[processType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_ContractLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_ContractLogUsersID] ON [dbo].[FinanceBridge_ContractLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_actionSubType]  DEFAULT (0) FOR [actionSubType]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_changeReason]  DEFAULT (0) FOR [changeReason]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_changeAmount1]  DEFAULT (0) FOR [changeAmount1]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_changeAmount2]  DEFAULT (0) FOR [changeAmount2]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_changeAmount3]  DEFAULT (0) FOR [changeAmount3]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_moneyType]  DEFAULT (0) FOR [moneyType]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_moneySubType]  DEFAULT (0) FOR [moneySubType]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_processType]  DEFAULT (0) FOR [processType]
GO
ALTER TABLE [dbo].[FinanceBridge_ContractLog] ADD  CONSTRAINT [DF_FinanceBridge_ContractLog_errorCode]  DEFAULT (0) FOR [errorCode]
GO
