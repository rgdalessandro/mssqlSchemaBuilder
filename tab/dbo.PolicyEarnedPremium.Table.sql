USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyEarnedPremium]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyEarnedPremium](
	[policyEarnedPremiumID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[month] [tinyint] NULL,
	[year] [smallint] NULL,
	[amount] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_PolicyEarnedPremium] PRIMARY KEY CLUSTERED 
(
	[policyEarnedPremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyEarnedPremiumAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEarnedPremiumAmount] ON [dbo].[PolicyEarnedPremium]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEarnedPremiumMonth]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEarnedPremiumMonth] ON [dbo].[PolicyEarnedPremium]
(
	[month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEarnedPremiumPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEarnedPremiumPolicyID] ON [dbo].[PolicyEarnedPremium]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEarnedPremiumYear]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEarnedPremiumYear] ON [dbo].[PolicyEarnedPremium]
(
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyEarnedPremium] ADD  CONSTRAINT [DF_PolicyEarnedPremium_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[PolicyEarnedPremium] ADD  CONSTRAINT [DF_PolicyEarnedPremium_month]  DEFAULT (datepart(month,getdate())) FOR [month]
GO
ALTER TABLE [dbo].[PolicyEarnedPremium] ADD  CONSTRAINT [DF_PolicyEarnedPremium_year]  DEFAULT (datepart(year,getdate())) FOR [year]
GO
ALTER TABLE [dbo].[PolicyEarnedPremium] ADD  CONSTRAINT [DF_PolicyEarnedPremium_amount]  DEFAULT (0) FOR [amount]
GO
