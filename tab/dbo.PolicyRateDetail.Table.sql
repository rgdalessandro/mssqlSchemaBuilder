USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyRateDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyRateDetail](
	[policyRateDetailID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[premiumTotal] [dbo].[CURRENCY] NULL,
	[ratingVersion] [money] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_PolicyRateDetail] PRIMARY KEY CLUSTERED 
(
	[policyRateDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyRateDetailAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRateDetailAddDate] ON [dbo].[PolicyRateDetail]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyRateDetailPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRateDetailPolicyID] ON [dbo].[PolicyRateDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyRateDetailPremiumTotal]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRateDetailPremiumTotal] ON [dbo].[PolicyRateDetail]
(
	[premiumTotal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyRateDetailRatingVersion]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRateDetailRatingVersion] ON [dbo].[PolicyRateDetail]
(
	[ratingVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyRateDetailUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRateDetailUsersID] ON [dbo].[PolicyRateDetail]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyRateDetail] ADD  CONSTRAINT [DF_PolicyRateDetail_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[PolicyRateDetail] ADD  CONSTRAINT [DF_PolicyRateDetail_premiumTotal]  DEFAULT (0) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[PolicyRateDetail] ADD  CONSTRAINT [DF_PolicyRateDetail_ratingVersion]  DEFAULT (0) FOR [ratingVersion]
GO
ALTER TABLE [dbo].[PolicyRateDetail] ADD  CONSTRAINT [DF_PolicyRateDetail_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[PolicyRateDetail] ADD  CONSTRAINT [DF_PolicyRateDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
