USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimLog](
	[claimLogID] [int] IDENTITY(10,1) NOT NULL,
	[claimID] [int] NULL,
	[claimCodeID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[externalAdjusterID] [int] NULL,
	[internalAdjusterID] [int] NULL,
	[lawyerID] [int] NULL,
	[dateOpened] [smalldatetime] NULL,
	[dateClosed] [smalldatetime] NULL,
	[claimDescription] [varchar](208) NULL,
	[oldStatus] [tinyint] NULL,
	[newStatus] [tinyint] NULL,
	[lossReserve] [dbo].[CURRENCY] NULL,
	[salvagePaid] [dbo].[CURRENCY] NULL,
	[subrogationPaid] [dbo].[CURRENCY] NULL,
	[expensePaid] [dbo].[CURRENCY] NULL,
	[policyCoveragesID] [int] NOT NULL,
	[claimantID] [int] NULL,
	[reportNum] [int] NULL,
	[citations] [varchar](50) NULL,
	[claimNum] [varchar](50) NULL,
	[lossPaid] [dbo].[CURRENCY] NULL,
	[recommendedPaid] [dbo].[CURRENCY] NULL,
	[checkDate] [smalldatetime] NULL,
	[dateChanged] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[changeType] [tinyint] NULL,
	[coverageNotConfirmed] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[status] [tinyint] NULL,
	[expenseReserve] [dbo].[CURRENCY] NULL,
	[deductableAmount] [dbo].[CURRENCY] NULL,
	[deductablePaid] [bit] NULL,
	[limit] [int] NULL,
	[legalExpenseReserve] [dbo].[CURRENCY] NULL,
	[legalExpensePaid] [dbo].[CURRENCY] NULL,
	[recoveryReserve] [dbo].[CURRENCY] NULL,
	[coverageConfirmedID] [int] NULL,
	[coverageConfirmedDate] [smalldatetime] NULL,
	[contactRequired] [tinyint] NULL,
	[initialContactDate] [datetime] NULL,
	[oldInternalAdjusterID] [int] NULL,
	[statusChange] [tinyint] NULL,
	[adjusterChange] [tinyint] NULL,
	[reopened] [tinyint] NULL,
	[deleted] [tinyint] NULL,
 CONSTRAINT [PK_ClaimLog] PRIMARY KEY CLUSTERED 
(
	[claimLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimLog]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimLog] ON [dbo].[ClaimLog]
(
	[claimID] ASC,
	[claimCodeID] ASC,
	[claimIncidentID] ASC,
	[externalAdjusterID] ASC,
	[internalAdjusterID] ASC,
	[lawyerID] ASC,
	[claimantID] ASC,
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_claimCodeID]  DEFAULT (1) FOR [claimCodeID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_externalAdjusterID]  DEFAULT (1) FOR [externalAdjusterID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_internalAdjusterID_1]  DEFAULT (1) FOR [internalAdjusterID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_lawyerID_1]  DEFAULT (1) FOR [lawyerID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_dateOpened]  DEFAULT (getdate()) FOR [dateOpened]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_status]  DEFAULT (0) FOR [oldStatus]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_newStatus]  DEFAULT (0) FOR [newStatus]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_reserved]  DEFAULT (0) FOR [lossReserve]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_salvage]  DEFAULT (0) FOR [salvagePaid]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_subrogationPaid]  DEFAULT (0) FOR [subrogationPaid]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_paid]  DEFAULT (0) FOR [expensePaid]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_claimTypeID]  DEFAULT (1) FOR [policyCoveragesID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_claimantID]  DEFAULT (0) FOR [claimantID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_reportNum]  DEFAULT (0) FOR [reportNum]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_loss]  DEFAULT (0) FOR [lossPaid]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_recommendedPaid]  DEFAULT (0) FOR [recommendedPaid]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_dateChanged]  DEFAULT (getdate()) FOR [dateChanged]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_changeType]  DEFAULT (0) FOR [changeType]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_coverageNotConfirmed]  DEFAULT (0) FOR [coverageNotConfirmed]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  CONSTRAINT [DF_ClaimLog_contactRequired]  DEFAULT ((0)) FOR [contactRequired]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  DEFAULT ((0)) FOR [statusChange]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  DEFAULT ((0)) FOR [adjusterChange]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  DEFAULT ((0)) FOR [reopened]
GO
ALTER TABLE [dbo].[ClaimLog] ADD  DEFAULT ((0)) FOR [deleted]
GO
