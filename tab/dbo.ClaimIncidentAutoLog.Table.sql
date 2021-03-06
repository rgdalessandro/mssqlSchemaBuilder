USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimIncidentAutoLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimIncidentAutoLog](
	[claimIncidentAutoLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[claimIncidentAutoID] [int] NULL,
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
 CONSTRAINT [PK_ClaimIncidentAutoLog] PRIMARY KEY CLUSTERED 
(
	[claimIncidentAutoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimIncidentAutoLog] ADD  CONSTRAINT [DF__ClaimInci__chang__025B255A]  DEFAULT (getdate()) FOR [changeDate]
GO
