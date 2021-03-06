USE [Windhaven]
GO
/****** Object:  Table [dbo].[GEICSLog_Detail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GEICSLog_Detail](
	[GEICSLog_Detail] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[policyNum] [varchar](20) NOT NULL,
	[status] [tinyint] NOT NULL,
	[effectiveDate] [smalldatetime] NOT NULL,
	[vehicleYear] [smallint] NOT NULL,
	[make] [varchar](15) NOT NULL,
	[model] [varchar](20) NOT NULL,
	[VIN] [varchar](17) NOT NULL,
	[usage] [varchar](1) NOT NULL,
	[licenseNum] [varchar](15) NOT NULL,
	[dob] [smalldatetime] NOT NULL,
	[actionType] [varchar](1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[exportStatus] [tinyint] NULL,
	[GEICSLogID] [int] NULL,
	[vehicle_LogID] [int] NULL,
 CONSTRAINT [PK_GEICSLog_Detail] PRIMARY KEY CLUSTERED 
(
	[GEICSLog_Detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GEICSLog_Detail_actionType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_actionType] ON [dbo].[GEICSLog_Detail]
(
	[actionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_addDate] ON [dbo].[GEICSLog_Detail]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_exportStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_exportStatus] ON [dbo].[GEICSLog_Detail]
(
	[exportStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_GEICSLogID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_GEICSLogID] ON [dbo].[GEICSLog_Detail]
(
	[GEICSLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_policyID] ON [dbo].[GEICSLog_Detail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_status] ON [dbo].[GEICSLog_Detail]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_GEICSLog_Detail_vehicle_LogID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_GEICSLog_Detail_vehicle_LogID] ON [dbo].[GEICSLog_Detail]
(
	[vehicle_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GEICSLog_Detail] ADD  CONSTRAINT [DF_GEICSLog_Detail_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[GEICSLog_Detail] ADD  CONSTRAINT [DF_GEICSLog_Detail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[GEICSLog_Detail] ADD  CONSTRAINT [DF_GEICSLog_Detail_status]  DEFAULT (0) FOR [exportStatus]
GO
ALTER TABLE [dbo].[GEICSLog_Detail] ADD  CONSTRAINT [DF_GEICSLog_Detail_GeicsLogID]  DEFAULT (1) FOR [GEICSLogID]
GO
ALTER TABLE [dbo].[GEICSLog_Detail] ADD  CONSTRAINT [DF_GEICSLog_Detail_vehicle_LogID]  DEFAULT (1) FOR [vehicle_LogID]
GO
