USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimIncidentLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimIncidentLog](
	[claimIncidentLogID] [int] IDENTITY(10,1) NOT NULL,
	[claimIncidentID] [int] NULL,
	[claimCodeID] [int] NULL,
	[policyID] [int] NULL,
	[externalAdjusterID] [int] NULL,
	[internalAdjusterID] [int] NULL,
	[usersID] [int] NULL,
	[dateOfloss] [smalldatetime] NULL,
	[dateReported] [smalldatetime] NULL,
	[dateOpened] [smalldatetime] NULL,
	[dateClosed] [smalldatetime] NULL,
	[checkDate] [smalldatetime] NULL,
	[claimDescription] [varchar](2000) NULL,
	[oldStatus] [tinyint] NULL,
	[newStatus] [tinyint] NULL,
	[totalExpense] [dbo].[CURRENCY] NULL,
	[expenseReserve] [dbo].[CURRENCY] NULL,
	[totalLoss] [dbo].[CURRENCY] NULL,
	[totalSalvage] [dbo].[CURRENCY] NULL,
	[claimIncidentNum] [varchar](50) NULL,
	[catastropheID] [int] NULL,
	[claimIncidentAutoID] [int] NULL,
	[totalSubrogation] [int] NULL,
	[dateChanged] [smalldatetime] NULL,
	[changeType] [tinyint] NULL,
	[coverageNotConfirmed] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[lossReserve] [dbo].[CURRENCY] NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[test] [char](10) NULL,
	[denialReason] [tinyint] NULL,
	[treatyID] [tinyint] NULL,
	[totalLegalExpense] [dbo].[CURRENCY] NULL,
	[reportedBy] [varchar](100) NULL,
	[coverageConfirmedID] [int] NULL,
	[coverageConfirmedDate] [smalldatetime] NULL,
	[oldInternalAdjusterID] [int] NULL,
	[statusChange] [tinyint] NULL,
	[adjusterChange] [tinyint] NULL,
	[reopened] [tinyint] NULL,
	[deleted] [tinyint] NULL,
 CONSTRAINT [PK_ClaimIncidentLog] PRIMARY KEY CLUSTERED 
(
	[claimIncidentLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimIncidentLog]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog] ON [dbo].[ClaimIncidentLog]
(
	[changeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_addDate] ON [dbo].[ClaimIncidentLog]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_catastropheID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_catastropheID] ON [dbo].[ClaimIncidentLog]
(
	[catastropheID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_claimCodeID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_claimCodeID] ON [dbo].[ClaimIncidentLog]
(
	[claimCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_claimIncidentAutoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_claimIncidentAutoID] ON [dbo].[ClaimIncidentLog]
(
	[claimIncidentAutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_claimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_claimIncidentID] ON [dbo].[ClaimIncidentLog]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_externalAdjusterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_externalAdjusterID] ON [dbo].[ClaimIncidentLog]
(
	[externalAdjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_internalAdjusterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_internalAdjusterID] ON [dbo].[ClaimIncidentLog]
(
	[internalAdjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_policyID] ON [dbo].[ClaimIncidentLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncidentLog_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentLog_usersID] ON [dbo].[ClaimIncidentLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF_ClaimIncidentLog_dateChanged]  DEFAULT (getdate()) FOR [dateChanged]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF_ClaimIncidentLog_changeType]  DEFAULT ((0)) FOR [changeType]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF_ClaimIncidentLog_coverageNotConfirmed]  DEFAULT ((0)) FOR [coverageNotConfirmed]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF_ClaimIncidentLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF_ClaimIncidentLog_lossReserve]  DEFAULT ((0)) FOR [lossReserve]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF__ClaimInci__chang__7D96703D]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF__ClaimInci__statu__24BB2A56]  DEFAULT ((0)) FOR [statusChange]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF__ClaimInci__adjus__25AF4E8F]  DEFAULT ((0)) FOR [adjusterChange]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF__ClaimInci__reope__26A372C8]  DEFAULT ((0)) FOR [reopened]
GO
ALTER TABLE [dbo].[ClaimIncidentLog] ADD  CONSTRAINT [DF__ClaimInci__delet__27979701]  DEFAULT ((0)) FOR [deleted]
GO
