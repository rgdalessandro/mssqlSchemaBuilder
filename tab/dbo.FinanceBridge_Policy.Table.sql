USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceBridge_Policy]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceBridge_Policy](
	[financeBridge_PolicyID] [int] IDENTITY(10,1) NOT NULL,
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
 CONSTRAINT [PK_FinanceBridge_Policy] PRIMARY KEY CLUSTERED 
(
	[financeBridge_PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceBridge_Policy_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_Policy_policyID] ON [dbo].[FinanceBridge_Policy]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyAddDate] ON [dbo].[FinanceBridge_Policy]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeAmount1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeAmount1] ON [dbo].[FinanceBridge_Policy]
(
	[changeAmount1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeAmount2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeAmount2] ON [dbo].[FinanceBridge_Policy]
(
	[changeAmount2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeAmount3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeAmount3] ON [dbo].[FinanceBridge_Policy]
(
	[changeAmount3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeDate1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeDate1] ON [dbo].[FinanceBridge_Policy]
(
	[changeDate1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeDate2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeDate2] ON [dbo].[FinanceBridge_Policy]
(
	[changeDate2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyChangeDate3]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyChangeDate3] ON [dbo].[FinanceBridge_Policy]
(
	[changeDate3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyErrorCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyErrorCode] ON [dbo].[FinanceBridge_Policy]
(
	[errorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyErrorDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyErrorDate] ON [dbo].[FinanceBridge_Policy]
(
	[errorDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyMoneySubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyMoneySubType] ON [dbo].[FinanceBridge_Policy]
(
	[moneySubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyMoneyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyMoneyType] ON [dbo].[FinanceBridge_Policy]
(
	[moneyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyProcessDate] ON [dbo].[FinanceBridge_Policy]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyProcessType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyProcessType] ON [dbo].[FinanceBridge_Policy]
(
	[processType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceBridge_PolicyUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceBridge_PolicyUsersID] ON [dbo].[FinanceBridge_Policy]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_actionType]  DEFAULT (0) FOR [actionType]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_actionSubType]  DEFAULT (0) FOR [actionSubType]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_changeReason]  DEFAULT (0) FOR [changeReason]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_changeAmount1]  DEFAULT (0) FOR [changeAmount1]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_changeAmount2]  DEFAULT (0) FOR [changeAmount2]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_changeAmount3]  DEFAULT (0) FOR [changeAmount3]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_moneyType]  DEFAULT (0) FOR [moneyType]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_moneySubType]  DEFAULT (0) FOR [moneySubType]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_processType]  DEFAULT (0) FOR [processType]
GO
ALTER TABLE [dbo].[FinanceBridge_Policy] ADD  CONSTRAINT [DF_FinanceBridge_Policy_errorCode]  DEFAULT (0) FOR [errorCode]
GO
