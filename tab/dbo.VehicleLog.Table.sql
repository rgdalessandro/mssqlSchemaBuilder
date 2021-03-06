USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleLog](
	[vehicleLogID] [int] IDENTITY(10,1) NOT NULL,
	[changeUsersID] [int] NULL,
	[dropDate] [datetime] NULL,
	[vehicleID] [int] NULL,
	[autoID] [int] NULL,
	[policyID] [int] NULL,
	[vehicleNumber] [smallint] NULL,
	[vehicleYear] [smallint] NULL,
	[make] [varchar](15) NULL,
	[model] [varchar](50) NULL,
	[bodyType] [varchar](20) NULL,
	[VIN] [varchar](17) NULL,
	[VINState] [dbo].[STATE_Abbrev] NULL,
	[hpcc] [varchar](10) NULL,
	[ownership] [tinyint] NULL,
	[datePurchased] [smalldatetime] NULL,
	[purchasedNew] [tinyint] NULL,
	[costNew] [dbo].[CURRENCY] NULL,
	[symbolGroup] [tinyint] NULL,
	[territory] [varchar](10) NULL,
	[oneWayMiles] [tinyint] NULL,
	[daysPerWeek] [tinyint] NULL,
	[usage] [varchar](1) NULL,
	[performance] [varchar](1) NULL,
	[carPool] [tinyint] NULL,
	[odometer] [int] NULL,
	[annualMileage] [int] NULL,
	[governDriver] [varchar](10) NULL,
	[driverUsage] [varchar](44) NULL,
	[classType] [varchar](8) NULL,
	[passiveSeatBelt] [tinyint] NULL,
	[airbag] [tinyint] NULL,
	[antiLockBrakes] [tinyint] NULL,
	[antiTheft] [varchar](10) NULL,
	[credits] [varchar](100) NULL,
	[garaged] [tinyint] NULL,
	[garageAddress1] [dbo].[ADDRESS] NULL,
	[garageAddress2] [dbo].[ADDRESS] NULL,
	[garageCity] [dbo].[CITYCOUNTY] NULL,
	[garageState] [dbo].[STATE_Abbrev] NULL,
	[garageZip] [dbo].[ZIP_Formatted] NULL,
	[garageCounty] [dbo].[CITYCOUNTY] NULL,
	[lienType1] [tinyint] NULL,
	[lienHolderID1] [int] NULL,
	[lienAccountNum1] [varchar](35) NULL,
	[lienType2] [tinyint] NULL,
	[lienHolderID2] [int] NULL,
	[lienAccountNum2] [varchar](35) NULL,
	[vehicleGroup] [tinyint] NULL,
	[discounts] [varchar](250) NULL,
	[vehiclePremiumTotal] [dbo].[CURRENCY] NULL,
	[vehicleTermPremiumsDue] [dbo].[CURRENCY] NULL,
	[addDate] [datetime] NULL,
	[tempRecord] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[vehicleFilingType] [varchar](10) NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[vehicleSurcharge] [smallmoney] NULL,
	[driverID] [int] NULL,
	[VINLookupUsed] [tinyint] NULL,
	[forceSurcharge] [tinyint] NULL,
	[claimSurcharge] [tinyint] NULL,
	[manualSurcharge] [tinyint] NULL,
	[driverType] [tinyint] NULL,
	[vehicleType] [tinyint] NULL,
	[generalEndorsement] [varchar](3000) NULL,
	[lienPaidOff1] [tinyint] NULL,
	[lienPaidOff2] [tinyint] NULL,
	[adjustedSymbol] [tinyint] NULL,
	[vehicleZipID] [dbo].[ZIP_Formatted] NULL,
	[is4X4] [tinyint] NULL,
	[vehicleSurchargeID] [int] NULL,
	[ratingSymbol] [tinyint] NULL,
	[issuedIDCard] [tinyint] NULL,
	[liabilitySymbol] [varchar](4) NULL,
	[comprehensiveSymbol] [varchar](4) NULL,
	[collisionSymbol] [varchar](4) NULL,
	[proSymbol] [varchar](4) NULL,
	[biSymbol] [smallint] NULL,
	[pdSymbol] [smallint] NULL,
	[pipSymbol] [smallint] NULL,
	[mpSymbol] [smallint] NULL,
	[classCode] [smallint] NULL,
	[excessVehicle] [tinyint] NULL,
	[pointsCharged] [tinyint] NULL,
	[excludeCustomEquipment] [tinyint] NULL,
	[commissionRate] [smallmoney] NULL,
	[jointOwnerShip] [tinyint] NULL,
	[customEquipType] [smallint] NULL,
	[tapesRecordsDevices] [tinyint] NULL,
	[ratingTerritory] [smallint] NULL,
	[tonnage] [tinyint] NULL,
	[ratingScore] [decimal](19, 6) NOT NULL,
	[engineType] [varchar](1) NULL,
	[salvaged] [tinyint] NULL,
	[garagingAddressID] [int] NULL,
	[hdrStatus] [tinyint] NULL,
	[requiresReview] [tinyint] NULL,
	[inspection] [tinyint] NULL,
	[oneWayMileage] [tinyint] NULL,
 CONSTRAINT [PK_VehicleLog_vehicleLogID] PRIMARY KEY CLUSTERED 
(
	[vehicleLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehicleLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleLog_policyID] ON [dbo].[VehicleLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehicleLog] ADD  CONSTRAINT [DF_VehicleLog_dropDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[VehicleLog] ADD  CONSTRAINT [DF__VehicleLo__ratin__5E5DBC06]  DEFAULT ((0)) FOR [ratingScore]
GO
ALTER TABLE [dbo].[VehicleLog] ADD  DEFAULT ((0)) FOR [salvaged]
GO
ALTER TABLE [dbo].[VehicleLog] ADD  DEFAULT ((0)) FOR [hdrStatus]
GO
ALTER TABLE [dbo].[VehicleLog] ADD  DEFAULT ((0)) FOR [requiresReview]
GO
