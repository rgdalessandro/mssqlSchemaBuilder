USE [Windhaven]
GO
/****** Object:  Table [dbo].[CancellationLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CancellationLog](
	[cancellationLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[cancelStatus] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[cancelledReason] [tinyint] NULL,
	[terminationDetailID] [int] NULL,
	[clearedDate] [smalldatetime] NULL,
	[clearedType] [tinyint] NULL,
	[reinstatementDate] [smalldatetime] NULL,
	[reinstatementType] [tinyint] NULL,
	[note] [varchar](100) NULL,
	[setUsersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[clearedUsersID] [int] NULL,
	[reinstatedUsersID] [int] NULL,
	[terminatedDate] [smalldatetime] NULL,
	[minimumAmount] [dbo].[CURRENCY] NULL,
	[paymentAmount] [dbo].[CURRENCY] NULL,
	[cancelNoticeDate] [smalldatetime] NULL,
	[financeContractID] [tinyint] NULL,
	[reinstatementNote] [varchar](max) NULL,
	[killDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CancellationLog] PRIMARY KEY CLUSTERED 
(
	[cancellationLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_CancellationLog_cancelStatus_cancelledReason_policyID_cancelNoticeDate_e3882e80718f97dfe8d7a6954ac8461b]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_cancelStatus_cancelledReason_policyID_cancelNoticeDate_e3882e80718f97dfe8d7a6954ac8461b] ON [dbo].[CancellationLog]
(
	[cancelStatus] ASC,
	[cancelledReason] ASC,
	[policyID] ASC,
	[cancelNoticeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CancellationLog_cancelStatus_policyID_cancelNoticeDate_5429e3463fa0b6c5cc48796ce76a598c]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_cancelStatus_policyID_cancelNoticeDate_5429e3463fa0b6c5cc48796ce76a598c] ON [dbo].[CancellationLog]
(
	[cancelStatus] ASC,
	[policyID] ASC,
	[cancelNoticeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CancellationLog_policyID_89fdcfde863048fae580dcc8b6d5df18]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_policyID_89fdcfde863048fae580dcc8b6d5df18] ON [dbo].[CancellationLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CancellationLog_policyID_cancelStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_policyID_cancelStatus] ON [dbo].[CancellationLog]
(
	[policyID] ASC,
	[cancelStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CancellationLog_policyID_cancelStatus_cancelledReason_5a22e7a7d98120ddfbd7bb381825da8a]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_policyID_cancelStatus_cancelledReason_5a22e7a7d98120ddfbd7bb381825da8a] ON [dbo].[CancellationLog]
(
	[policyID] ASC,
	[cancelStatus] ASC,
	[cancelledReason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CancellationLog_policyID_cancelStatus_cancelNoticeDate_d1af227391ffe01d9c9d47bfbcbf65d8]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CancellationLog_policyID_cancelStatus_cancelNoticeDate_d1af227391ffe01d9c9d47bfbcbf65d8] ON [dbo].[CancellationLog]
(
	[policyID] ASC,
	[cancelStatus] ASC,
	[cancelNoticeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_cancelStatus]  DEFAULT (0) FOR [cancelStatus]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_cancelledReason]  DEFAULT (0) FOR [cancelledReason]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_terminationDetailID]  DEFAULT (1) FOR [terminationDetailID]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_clearedType]  DEFAULT (0) FOR [clearedType]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_reinstatementType]  DEFAULT (0) FOR [reinstatementType]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_setUsersID]  DEFAULT (1) FOR [setUsersID]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_reinstatedUsersID]  DEFAULT (1) FOR [reinstatedUsersID]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_minimumAmount]  DEFAULT (0) FOR [minimumAmount]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_paymentAmount]  DEFAULT (0) FOR [paymentAmount]
GO
ALTER TABLE [dbo].[CancellationLog] ADD  CONSTRAINT [DF_CancellationLog_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
