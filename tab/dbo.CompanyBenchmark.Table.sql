USE [Windhaven]
GO
/****** Object:  Table [dbo].[CompanyBenchmark]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyBenchmark](
	[companyBenchmarkID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[month] [tinyint] NULL,
	[year] [smallint] NULL,
	[MTDEarnedPremium] [dbo].[CURRENCY] NULL,
	[unearnedPremium] [dbo].[CURRENCY] NULL,
	[netPremiums] [dbo].[CURRENCY] NULL,
	[premiumsCancelled] [dbo].[CURRENCY] NULL,
	[premiumsWritten] [dbo].[CURRENCY] NULL,
	[inforcePremiums] [dbo].[CURRENCY] NULL,
	[inforceCount] [int] NULL,
	[newBusinessCount] [int] NULL,
	[renewalCount] [int] NULL,
	[cancelCount] [int] NULL,
	[averageTerm] [dbo].[CURRENCY] NULL,
	[losses] [dbo].[CURRENCY] NULL,
	[reserve] [dbo].[CURRENCY] NULL,
	[policyFees] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_CompanyBenchmark] PRIMARY KEY CLUSTERED 
(
	[companyBenchmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CompanyBenchmarkCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkCompanyID] ON [dbo].[CompanyBenchmark]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkCount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkCount] ON [dbo].[CompanyBenchmark]
(
	[inforceCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkMonth]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkMonth] ON [dbo].[CompanyBenchmark]
(
	[month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkMTDEP]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkMTDEP] ON [dbo].[CompanyBenchmark]
(
	[MTDEarnedPremium] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkPremium]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkPremium] ON [dbo].[CompanyBenchmark]
(
	[newBusinessCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkYear]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkYear] ON [dbo].[CompanyBenchmark]
(
	[year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyBenchmarkYTDEP]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyBenchmarkYTDEP] ON [dbo].[CompanyBenchmark]
(
	[netPremiums] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium_month]  DEFAULT (1) FOR [month]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium]  DEFAULT (1999) FOR [year]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium_earnedPremium]  DEFAULT (0) FOR [MTDEarnedPremium]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_MTDEarnedPremium1]  DEFAULT (0) FOR [unearnedPremium]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium_YTDEarnedPremium]  DEFAULT (0) FOR [netPremiums]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_grossPremiums3]  DEFAULT (0) FOR [premiumsCancelled]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_grossPremiums2]  DEFAULT (0) FOR [premiumsWritten]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_grossPremiums1]  DEFAULT (0) FOR [inforcePremiums]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_EarnedPremium_MTDCount]  DEFAULT (0) FOR [inforceCount]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_MTDPremium]  DEFAULT (0) FOR [newBusinessCount]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_newBusiness1]  DEFAULT (0) FOR [renewalCount]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_renewalCount1]  DEFAULT (0) FOR [cancelCount]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_averageTerm]  DEFAULT (0) FOR [averageTerm]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_losses]  DEFAULT (0) FOR [losses]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_reserve]  DEFAULT (0) FOR [reserve]
GO
ALTER TABLE [dbo].[CompanyBenchmark] ADD  CONSTRAINT [DF_CompanyBenchmark_policyFees]  DEFAULT (0) FOR [policyFees]
GO
