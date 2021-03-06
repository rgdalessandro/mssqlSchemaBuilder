USE [Windhaven]
GO
/****** Object:  Table [dbo].[CoveragePremium]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoveragePremium](
	[coveragePremiumID] [int] IDENTITY(10,1) NOT NULL,
	[policyPremiumID] [int] NULL,
	[policyID] [int] NULL,
	[policyType] [int] NULL,
	[objectID] [int] NULL,
	[policyCoveragesID] [int] NULL,
	[coverage] [varchar](10) NULL,
	[policyStatus] [tinyint] NULL,
	[changeType] [tinyint] NULL,
	[fullTermPremium] [dbo].[CURRENCY] NULL,
	[changeInFullTermPremium] [dbo].[CURRENCY] NULL,
	[proRateFactor] [decimal](18, 6) NULL,
	[termPremiumsDue] [dbo].[CURRENCY] NULL,
	[changeInTPD] [dbo].[CURRENCY] NULL,
	[transactionDate] [smalldatetime] NULL,
	[dateEffective] [smalldatetime] NULL,
	[isShortRate] [tinyint] NULL,
	[isRenewal] [tinyint] NOT NULL,
	[editStatus] [tinyint] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[treatyID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [datetime] NULL,
	[preRoundChangeInTPD] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_CoveragePremium_coveragePremiumID] PRIMARY KEY CLUSTERED 
(
	[coveragePremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CoveragePremium_policyID_9dea323e1fafc5f7cf38f039924c5726]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CoveragePremium_policyID_9dea323e1fafc5f7cf38f039924c5726] ON [dbo].[CoveragePremium]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CoveragePremium_policyID_objectID_policyCoveragesID_0c395e12213e6dd0a628eb12aa1f00f8]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CoveragePremium_policyID_objectID_policyCoveragesID_0c395e12213e6dd0a628eb12aa1f00f8] ON [dbo].[CoveragePremium]
(
	[policyID] ASC,
	[objectID] ASC,
	[policyCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_objectID]  DEFAULT ((1)) FOR [objectID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_policyCoveragesID]  DEFAULT ((1)) FOR [policyCoveragesID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_coverageDescription]  DEFAULT ('') FOR [coverage]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_policyStatus]  DEFAULT ((0)) FOR [policyStatus]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_changeType]  DEFAULT ((0)) FOR [changeType]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_fullTermPremium]  DEFAULT ((0)) FOR [fullTermPremium]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_changeInFullTermPremium]  DEFAULT ((0)) FOR [changeInFullTermPremium]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_proRateFactor]  DEFAULT ((0)) FOR [proRateFactor]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_termPremiumsDue]  DEFAULT ((0)) FOR [termPremiumsDue]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_changeInTPD]  DEFAULT ((0)) FOR [changeInTPD]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_isShortRate]  DEFAULT ((0)) FOR [isShortRate]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_isRenewal]  DEFAULT ((0)) FOR [isRenewal]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_editStatus]  DEFAULT ((0)) FOR [editStatus]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_producerID]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_treatyID]  DEFAULT ((1)) FOR [treatyID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[CoveragePremium] ADD  CONSTRAINT [DF_CoveragePremium_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
