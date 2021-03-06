USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccidentChallengeLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccidentChallengeLog](
	[accidentChallengeLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[accidentID] [int] NULL,
	[suspenseID] [int] NULL,
	[challengeStatus] [tinyint] NULL,
	[challengeReason] [varchar](1000) NULL,
	[challengedDate] [smalldatetime] NULL,
	[clearedDate] [smalldatetime] NULL,
	[challengeUsersID] [int] NULL,
	[clearedUsersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AccidentChallengeLog] PRIMARY KEY CLUSTERED 
(
	[accidentChallengeLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccidentChallengeLog_accidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccidentChallengeLog_accidentID] ON [dbo].[AccidentChallengeLog]
(
	[accidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccidentChallengeLog_challengedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccidentChallengeLog_challengedDate] ON [dbo].[AccidentChallengeLog]
(
	[challengedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccidentChallengeLog_challengeStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccidentChallengeLog_challengeStatus] ON [dbo].[AccidentChallengeLog]
(
	[challengeStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccidentChallengeLog_driverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccidentChallengeLog_driverID] ON [dbo].[AccidentChallengeLog]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccidentChallengeLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccidentChallengeLog_policyID] ON [dbo].[AccidentChallengeLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_accidentID]  DEFAULT (1) FOR [accidentID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_suspenseID]  DEFAULT (1) FOR [suspenseID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_challengeStatus]  DEFAULT (0) FOR [challengeStatus]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_challengeUserID]  DEFAULT (1) FOR [challengeUsersID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_clearedUserID]  DEFAULT (1) FOR [clearedUsersID]
GO
ALTER TABLE [dbo].[AccidentChallengeLog] ADD  CONSTRAINT [DF_AccidentChallengeLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=Not Challenged 1=Challenged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccidentChallengeLog', @level2type=N'COLUMN',@level2name=N'challengeStatus'
GO
