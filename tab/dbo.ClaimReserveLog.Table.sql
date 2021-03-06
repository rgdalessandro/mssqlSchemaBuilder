USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimReserveLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimReserveLog](
	[claimReserveLogID] [int] IDENTITY(10,1) NOT NULL,
	[claimIncidentID] [int] NULL,
	[claimIncidentStatus] [tinyint] NULL,
	[claimID] [int] NULL,
	[policyCoveragesID] [int] NOT NULL,
	[claimStatus] [tinyint] NULL,
	[totalLoss] [dbo].[CURRENCY] NULL,
	[totalExpense] [dbo].[CURRENCY] NULL,
	[expenseReserve] [dbo].[CURRENCY] NULL,
	[expenseReserveChange] [dbo].[CURRENCY] NULL,
	[lossPaid] [dbo].[CURRENCY] NULL,
	[lossReserve] [dbo].[CURRENCY] NULL,
	[lossReserveChange] [dbo].[CURRENCY] NULL,
	[usersID] [int] NULL,
	[treatyID] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[totalLegalExpense] [dbo].[CURRENCY] NULL,
	[legalExpenseReserve] [dbo].[CURRENCY] NULL,
	[legalExpenseReserveChange] [dbo].[CURRENCY] NULL,
	[recoveryReserve] [dbo].[CURRENCY] NULL,
	[recoveryReserveChange] [dbo].[CURRENCY] NULL,
	[debugNotes] [varchar](50) NULL,
 CONSTRAINT [PK_ClaimReserveLog] PRIMARY KEY CLUSTERED 
(
	[claimReserveLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimReserveLog]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimReserveLog] ON [dbo].[ClaimReserveLog]
(
	[claimIncidentID] ASC,
	[claimIncidentStatus] ASC,
	[claimID] ASC,
	[policyCoveragesID] ASC,
	[claimStatus] ASC,
	[usersID] ASC,
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimReserveLog_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimReserveLog_addDate] ON [dbo].[ClaimReserveLog]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_claimIncidentStatus]  DEFAULT (0) FOR [claimIncidentStatus]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_claimTypeID]  DEFAULT (1) FOR [policyCoveragesID]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_claimStatus]  DEFAULT (0) FOR [claimStatus]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_totalLoss]  DEFAULT (0) FOR [totalLoss]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_totalExpense]  DEFAULT (0) FOR [totalExpense]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_expenseReserve]  DEFAULT (0) FOR [expenseReserve]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_expenseReserveChange]  DEFAULT (0) FOR [expenseReserveChange]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_lossPaid]  DEFAULT (0) FOR [lossPaid]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_lossReserve]  DEFAULT (0) FOR [lossReserve]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_lossReserveChange]  DEFAULT (0) FOR [lossReserveChange]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_totalExpense1]  DEFAULT (0) FOR [totalLegalExpense]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_expenseReserve1]  DEFAULT (0) FOR [legalExpenseReserve]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_expenseReserveChange1]  DEFAULT (0) FOR [legalExpenseReserveChange]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_recoveryReserve]  DEFAULT (0) FOR [recoveryReserve]
GO
ALTER TABLE [dbo].[ClaimReserveLog] ADD  CONSTRAINT [DF_ClaimReserveLog_recoveryReserveChange]  DEFAULT (0) FOR [recoveryReserveChange]
GO
