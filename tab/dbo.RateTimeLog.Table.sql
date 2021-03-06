USE [Windhaven]
GO
/****** Object:  Table [dbo].[RateTimeLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RateTimeLog](
	[rateTimeLogID] [int] IDENTITY(1,1) NOT NULL,
	[policyID] [int] NULL,
	[ratingVersionID] [int] NULL,
	[companyID] [int] NULL,
	[usersID] [int] NULL,
	[uType] [tinyint] NULL,
	[policyType] [int] NULL,
	[status] [tinyint] NULL,
	[imported] [tinyint] NULL,
	[rateSPStart] [datetime2](7) NULL,
	[rateSPEnd] [datetime2](7) NULL,
	[rateCalPremStart] [datetime2](7) NULL,
	[rateCalPremEnd] [datetime2](7) NULL,
	[UWStart] [datetime2](7) NULL,
	[UWEnd] [datetime2](7) NULL,
	[RateSPTime]  AS (datediff(microsecond,[rateSPStart],[rateSPEnd])*(0.000001)) PERSISTED,
	[RateCPTime]  AS (datediff(microsecond,[rateCalPremStart],[rateCalPremEnd])*(0.000001)) PERSISTED,
	[RateUWTime]  AS (datediff(microsecond,[UWStart],[UWEnd])*(0.000001)) PERSISTED,
	[RateTotalTime]  AS (datediff(microsecond,[rateSPStart],[rateSPEnd])*(0.000001)) PERSISTED,
 CONSTRAINT [PK_RateTimeLog] PRIMARY KEY CLUSTERED 
(
	[rateTimeLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_RateTimeLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_RateTimeLog_policyID] ON [dbo].[RateTimeLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
