USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceBridge_PolicyLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceBridge_PolicyLog](
	[financeBridge_PolicyLogID] [int] IDENTITY(10,1) NOT NULL,
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
 CONSTRAINT [PK_FinanceBridge_PolicyLog] PRIMARY KEY CLUSTERED 
(
	[financeBridge_PolicyLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceBridge_PolicyLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLog_policyID] ON [dbo].[FinanceBridge_PolicyLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogAddDate] ON [dbo].[FinanceBridge_PolicyLog]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeAmount1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeAmount1] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeAmount1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeAmount2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeAmount2] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeAmount2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeAmount3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeAmount3] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeAmount3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeDate] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeDate1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeDate2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeDate2] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeDate2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogChangeDate3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogChangeDate3] ON [dbo].[FinanceBridge_PolicyLog]
(
	[changeDate3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogErrorCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogErrorCode] ON [dbo].[FinanceBridge_PolicyLog]
(
	[errorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogErrorDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogErrorDate] ON [dbo].[FinanceBridge_PolicyLog]
(
	[errorDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogMoneySubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogMoneySubType] ON [dbo].[FinanceBridge_PolicyLog]
(
	[moneySubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogMoneyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogMoneyType] ON [dbo].[FinanceBridge_PolicyLog]
(
	[moneyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogProcessDate] ON [dbo].[FinanceBridge_PolicyLog]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogProcessType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogProcessType] ON [dbo].[FinanceBridge_PolicyLog]
(
	[processType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyLogUsersID] ON [dbo].[FinanceBridge_PolicyLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_actionSubType]  DEFAULT (0) FOR [actionSubType]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_changeReason]  DEFAULT (0) FOR [changeReason]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_changeAmount1]  DEFAULT (0) FOR [changeAmount1]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_changeAmount2]  DEFAULT (0) FOR [changeAmount2]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_changeAmount3]  DEFAULT (0) FOR [changeAmount3]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_moneyType]  DEFAULT (0) FOR [moneyType]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_moneySubType]  DEFAULT (0) FOR [moneySubType]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_processType]  DEFAULT (0) FOR [processType]
GO
ALTER TABLE [dbo].[FinanceBridge_PolicyLog] ADD  CONSTRAINT [DF_FinanceBridge_PolicyLog_iSystemReason]  DEFAULT (0) FOR [errorCode]
GO
