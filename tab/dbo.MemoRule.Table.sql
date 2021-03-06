USE [Windhaven]
GO
/****** Object:  Table [dbo].[MemoRule]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemoRule](
	[memoRuleID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](100) NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyProgram] [tinyint] NULL,
	[policyType] [tinyint] NULL,
	[status] [varchar](15) NULL,
	[policyTerm] [varchar](15) NULL,
	[renewalStatus] [varchar](3) NULL,
	[userTypes] [varchar](50) NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_MemoRule] PRIMARY KEY CLUSTERED 
(
	[memoRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MemoRule_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoRule_companyID] ON [dbo].[MemoRule]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoRule_policyProgram]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoRule_policyProgram] ON [dbo].[MemoRule]
(
	[policyProgram] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoRule_policyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoRule_policyType] ON [dbo].[MemoRule]
(
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_MemoRule_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MemoRule_stateID] ON [dbo].[MemoRule]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_companyID]  DEFAULT (0) FOR [companyID]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_stateID]  DEFAULT (0) FOR [stateID]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_policyProgram]  DEFAULT (0) FOR [policyProgram]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_policyType]  DEFAULT (0) FOR [policyType]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_status]  DEFAULT ('0,1,2,3,5') FOR [status]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_policyTerm]  DEFAULT ('6,12') FOR [policyTerm]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_renewalStatus]  DEFAULT ('0,1') FOR [renewalStatus]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_userTypes]  DEFAULT (18) FOR [userTypes]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_startDate]  DEFAULT (getdate()) FOR [startDate]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[MemoRule] ADD  CONSTRAINT [DF_MemoRule_usersID]  DEFAULT (2) FOR [usersID]
GO
