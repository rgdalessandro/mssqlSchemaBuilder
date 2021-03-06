USE [Windhaven]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[locationID] [int] IDENTITY(10,1) NOT NULL,
	[workersCompID] [int] NULL,
	[locationName] [dbo].[NAME_Business] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[county] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[locationType] [tinyint] NULL,
	[locationNumber] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [bit] NOT NULL,
	[endorsementDate] [smalldatetime] NULL,
	[noLogEntry] [tinyint] NULL,
	[policyState] [smallint] NULL,
	[insertState] [smallint] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[locationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_LocationInsertState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationInsertState] ON [dbo].[Location]
(
	[insertState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationLocationType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationLocationType] ON [dbo].[Location]
(
	[locationType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationPolicyState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationPolicyState] ON [dbo].[Location]
(
	[policyState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LocationWorkersCompID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LocationWorkersCompID] ON [dbo].[Location]
(
	[workersCompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_workersCompID]  DEFAULT (1) FOR [workersCompID]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_locationType]  DEFAULT (0) FOR [locationType]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_locationNumber]  DEFAULT (0) FOR [locationNumber]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_tempRecord]  DEFAULT (0) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_policyState]  DEFAULT (0) FOR [policyState]
GO
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_insertState]  DEFAULT (0) FOR [insertState]
GO
