USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimantAuto]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimantAuto](
	[claimantAutoID] [int] IDENTITY(10,1) NOT NULL,
	[claimantID] [int] NULL,
	[licNum] [varchar](15) NULL,
	[vehicleYear] [varchar](50) NULL,
	[vehicleModel] [varchar](100) NULL,
	[vehicleMake] [varchar](100) NULL,
	[vehicleNote] [varchar](1000) NULL,
	[driverName] [dbo].[NAME_Person] NULL,
	[driverAddress1] [dbo].[ADDRESS] NULL,
	[driverAddress2] [dbo].[ADDRESS] NULL,
	[driverCity] [dbo].[CITYCOUNTY] NULL,
	[driverState] [dbo].[STATE_Abbrev] NULL,
	[driverZip] [dbo].[ZIP_Formatted] NULL,
	[driverPhone1] [dbo].[PHONE_Formatted] NULL,
	[driverPhone2] [dbo].[PHONE_Formatted] NULL,
	[vehicleLicenseState] [dbo].[STATE_Abbrev] NULL,
	[vehicleLicensePlate] [varchar](50) NULL,
	[VIN] [varchar](50) NULL,
	[lienHolder] [varchar](50) NULL,
 CONSTRAINT [PK_ClaimantAuto] PRIMARY KEY CLUSTERED 
(
	[claimantAutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimantAuto]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimantAuto] ON [dbo].[ClaimantAuto]
(
	[claimantAutoID] ASC,
	[claimantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimantAuto] ADD  CONSTRAINT [DF_ClaimantAuto_claimantID]  DEFAULT (1) FOR [claimantID]
GO
ALTER TABLE [dbo].[ClaimantAuto] ADD  CONSTRAINT [DF_ClaimantAuto_licNum]  DEFAULT ('NA') FOR [licNum]
GO
