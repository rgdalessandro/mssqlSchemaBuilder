USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyPremium]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyPremium](
	[policyPremiumID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[status] [tinyint] NULL,
	[changeInPremium] [dbo].[CURRENCY] NULL,
	[premiumTotal] [dbo].[CURRENCY] NULL,
	[termPremiumsDue] [dbo].[CURRENCY] NULL,
	[changeDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[changeType] [tinyint] NULL,
	[expenseAccountName] [varchar](75) NULL,
	[expenseAccountNum] [varchar](75) NULL,
	[incomeAccountName] [varchar](75) NULL,
	[incomeAccountNum] [varchar](75) NULL,
	[isRenewal] [tinyint] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[commissionID] [int] NULL,
	[commissionRate] [smallmoney] NULL,
	[filingType] [varchar](10) NULL,
	[endorsementDescription] [varchar](3000) NULL,
	[usersID] [int] NULL,
	[editStatus] [tinyint] NULL,
	[changeInPremiumTotal] [dbo].[CURRENCY] NULL,
	[proRateFactor] [money] NULL,
	[isShortRate] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[treatyID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[endorsementGroup] [varchar](35) NULL,
 CONSTRAINT [PK_PolicyPremium] PRIMARY KEY CLUSTERED 
(
	[policyPremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyPremium_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremium_addDate] ON [dbo].[PolicyPremium]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremium_changeType_changeInPremium_9f24a788c1ce6abd49e4da7747458f12]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremium_changeType_changeInPremium_9f24a788c1ce6abd49e4da7747458f12] ON [dbo].[PolicyPremium]
(
	[changeType] ASC,
	[changeInPremium] ASC
)
INCLUDE ( 	[policyID],
	[changeDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremium_changeType_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremium_changeType_Includes] ON [dbo].[PolicyPremium]
(
	[changeType] ASC
)
INCLUDE ( 	[changeDate],
	[changeInPremium],
	[policyID],
	[policyPremiumID],
	[premiumTotal],
	[termPremiumsDue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumChangeDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumChangeDate] ON [dbo].[PolicyPremium]
(
	[changeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumChangeInPremium]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumChangeInPremium] ON [dbo].[PolicyPremium]
(
	[changeInPremium] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumEditStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumEditStatus] ON [dbo].[PolicyPremium]
(
	[editStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumEndorsementDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumEndorsementDate] ON [dbo].[PolicyPremium]
(
	[endorsementDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PolicyPremiumFilingType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumFilingType] ON [dbo].[PolicyPremium]
(
	[filingType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumPolicyID] ON [dbo].[PolicyPremium]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumPolicyState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumPolicyState] ON [dbo].[PolicyPremium]
(
	[policyState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumStatus] ON [dbo].[PolicyPremium]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumTreatyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumTreatyID] ON [dbo].[PolicyPremium]
(
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPremiumUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPremiumUsersID] ON [dbo].[PolicyPremium]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_premiumTotal1]  DEFAULT ((0)) FOR [changeInPremium]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_premiumTotal]  DEFAULT ((0)) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_termPremiumsDue]  DEFAULT ((0)) FOR [termPremiumsDue]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_dropDate]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_policyState]  DEFAULT ((0)) FOR [policyState]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_changeType]  DEFAULT ((0)) FOR [changeType]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_isRenewal]  DEFAULT ((0)) FOR [isRenewal]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_producerID]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_commissionID]  DEFAULT ((1)) FOR [commissionID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_commissionRate]  DEFAULT ((0)) FOR [commissionRate]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_editStatus]  DEFAULT ((0)) FOR [editStatus]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_changeInPremiumTotal]  DEFAULT ((0)) FOR [changeInPremiumTotal]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_proRateFactor]  DEFAULT ((0)) FOR [proRateFactor]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_isShortRate]  DEFAULT ((0)) FOR [isShortRate]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_endorsementDate]  DEFAULT ((0)) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_treatyID]  DEFAULT ((1)) FOR [treatyID]
GO
ALTER TABLE [dbo].[PolicyPremium] ADD  CONSTRAINT [DF_PolicyPremium_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
