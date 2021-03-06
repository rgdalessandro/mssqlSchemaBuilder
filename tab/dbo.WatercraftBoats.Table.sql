USE [Windhaven]
GO
/****** Object:  Table [dbo].[WatercraftBoats]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatercraftBoats](
	[WatercraftBoatID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[systemCoverageTypeID] [int] NULL,
	[homeownerDwellingCoverageID] [int] NULL,
	[golfCartLimit] [int] NULL,
	[TypeDescription] [nvarchar](100) NULL,
	[TypeID] [int] NULL,
	[MPH] [int] NULL,
	[HP] [int] NULL,
	[description] [varchar](150) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_WatercraftBoats] PRIMARY KEY CLUSTERED 
(
	[WatercraftBoatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_WatercraftBoats_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_WatercraftBoats_policyID] ON [dbo].[WatercraftBoats]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WatercraftBoats] ADD  CONSTRAINT [DF_WatercraftBoats_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[WatercraftBoats] ADD  CONSTRAINT [DF_WatercraftBoats_systemCoverageTypeID]  DEFAULT (1) FOR [systemCoverageTypeID]
GO
ALTER TABLE [dbo].[WatercraftBoats] ADD  CONSTRAINT [DF_WatercraftBoats_homeownerDwellingCoverageID]  DEFAULT (1) FOR [homeownerDwellingCoverageID]
GO
