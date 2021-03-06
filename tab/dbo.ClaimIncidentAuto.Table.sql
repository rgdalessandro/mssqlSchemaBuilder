USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimIncidentAuto]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimIncidentAuto](
	[claimIncidentAutoID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NULL,
	[driverID] [int] NULL,
	[county] [varchar](25) NULL,
	[incidentStreet] [varchar](100) NULL,
	[incidentCity] [varchar](50) NULL,
	[incidentState] [varchar](50) NULL,
	[vehicleDescription] [varchar](300) NULL,
	[driverDescription] [varchar](300) NULL,
	[policeSummary] [varchar](300) NULL,
	[citationsIssued] [varchar](300) NULL,
	[reportNumber] [varchar](300) NULL,
	[claimIncidentID] [int] NULL,
	[propertyDamage] [tinyint] NULL,
	[propertyDamageDesc] [varchar](300) NULL,
	[policeOfficer] [dbo].[NAME_Person] NULL,
	[vehicleYear] [varchar](50) NULL,
	[vehicleMake] [varchar](50) NULL,
	[vehicleModel] [varchar](50) NULL,
	[driverName] [dbo].[NAME_Person] NULL,
	[driverAddress1] [dbo].[ADDRESS] NULL,
	[driverAddress2] [dbo].[ADDRESS] NULL,
	[driverCity] [dbo].[CITYCOUNTY] NULL,
	[driverState] [dbo].[STATE_Abbrev] NULL,
	[driverZip] [dbo].[ZIP_Formatted] NULL,
	[driverPhone] [dbo].[PHONE_Formatted] NULL,
	[driverPhone2] [dbo].[PHONE_Formatted] NULL,
	[driverRelationToInsured] [varchar](50) NULL,
	[driverdob] [smalldatetime] NULL,
	[driverLicNum] [varchar](50) NULL,
	[driverLicState] [dbo].[STATE_Abbrev] NULL,
	[driverPermission] [tinyint] NULL,
	[claimVehicleDispositionID] [int] NULL,
	[DOIComplaint] [varchar](1) NULL,
	[state] [int] NULL,
	[complaintNature] [varchar](300) NULL,
	[complaintDate] [smalldatetime] NULL,
	[vehicleVIN] [varchar](17) NULL,
	[policeInvolved] [tinyint] NULL,
 CONSTRAINT [PK_ClaimIncidentAuto] PRIMARY KEY CLUSTERED 
(
	[claimIncidentAutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_claimIncidentAutoDriverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_claimIncidentAutoDriverID] ON [dbo].[ClaimIncidentAuto]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_claimIncidentAutoVehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_claimIncidentAutoVehicleID] ON [dbo].[ClaimIncidentAuto]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_claimIncidentAuto_vehicleID]  DEFAULT ((0)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_claimIncidentAuto_driverID]  DEFAULT ((0)) FOR [driverID]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_claimIncidentAuto_claimIncidentID]  DEFAULT ((0)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_ClaimIncidentAuto_propertyDamage]  DEFAULT ((0)) FOR [propertyDamage]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_ClaimIncidentAuto_permission]  DEFAULT ((0)) FOR [driverPermission]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_ClaimIncidentAuto_claimVehicleDispositionID]  DEFAULT ((1)) FOR [claimVehicleDispositionID]
GO
ALTER TABLE [dbo].[ClaimIncidentAuto] ADD  CONSTRAINT [DF_ClaimIncidentAuto_policyInvolved]  DEFAULT ((0)) FOR [policeInvolved]
GO
