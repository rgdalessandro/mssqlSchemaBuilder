USE [Windhaven]
GO
/****** Object:  Table [dbo].[EstimatorLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstimatorLog](
	[estimatorLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[params] [varchar](2000) NULL,
	[ACV] [dbo].[CURRENCY] NULL,
	[usersID] [int] NULL,
	[dateCreated] [smalldatetime] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_EstimatorLog] PRIMARY KEY CLUSTERED 
(
	[estimatorLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_EstimatorLog_dateCreated]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EstimatorLog_dateCreated] ON [dbo].[EstimatorLog]
(
	[dateCreated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstimatorLog_homeownerDwellingID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EstimatorLog_homeownerDwellingID] ON [dbo].[EstimatorLog]
(
	[homeownerDwellingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstimatorLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EstimatorLog_policyID] ON [dbo].[EstimatorLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstimatorLog_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EstimatorLog_usersID] ON [dbo].[EstimatorLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EstimatorLog] ADD  CONSTRAINT [DF_EstimatorLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[EstimatorLog] ADD  CONSTRAINT [DF_EstimatorLog_ACV]  DEFAULT (0) FOR [ACV]
GO
ALTER TABLE [dbo].[EstimatorLog] ADD  CONSTRAINT [DF_EstimatorLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[EstimatorLog] ADD  CONSTRAINT [DF_EstimatorLog_dateCreated]  DEFAULT (getdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[EstimatorLog] ADD  CONSTRAINT [DF_EstimatorLog_active]  DEFAULT (0) FOR [active]
GO
