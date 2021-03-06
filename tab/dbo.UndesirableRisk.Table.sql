USE [Windhaven]
GO
/****** Object:  Table [dbo].[UndesirableRisk]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UndesirableRisk](
	[UndesirableRiskID] [int] IDENTITY(10,1) NOT NULL,
	[UndesirableRiskName] [dbo].[NAME_Business] NULL,
	[fname] [dbo].[NAME_Person] NULL,
	[middle] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[phone2] [dbo].[PHONE_Formatted] NULL,
	[licNum] [varchar](15) NULL,
	[licState] [dbo].[STATE_Abbrev] NULL,
	[email] [dbo].[EMAIL] NULL,
	[notes] [varchar](3000) NULL,
	[taxID] [dbo].[TAXID_Formatted] NULL,
	[addDate] [smalldatetime] NULL,
	[dob] [smalldatetime] NULL,
	[VIN] [varchar](17) NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[vehicleID] [int] NULL,
	[claimantID] [int] NULL,
	[claimIncidentID] [int] NULL,
	[claimID] [int] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_UndesirableRisk] PRIMARY KEY CLUSTERED 
(
	[UndesirableRiskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimantID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimantID] ON [dbo].[UndesirableRisk]
(
	[claimantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimID] ON [dbo].[UndesirableRisk]
(
	[claimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimIncident]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncident] ON [dbo].[UndesirableRisk]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DriverID] ON [dbo].[UndesirableRisk]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyID] ON [dbo].[UndesirableRisk]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleID] ON [dbo].[UndesirableRisk]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UndesirableRisk] ADD  CONSTRAINT [DF_UndesirableRisk_licNum]  DEFAULT ('NA') FOR [licNum]
GO
ALTER TABLE [dbo].[UndesirableRisk] ADD  CONSTRAINT [DF_UndesirableRisk_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
