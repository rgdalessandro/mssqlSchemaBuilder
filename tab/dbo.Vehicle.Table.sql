USE [Windhaven]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[vehicleID] [int] IDENTITY(10,1) NOT NULL,
	[autoID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
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
	[purchasedNew] [tinyint] NOT NULL,
	[costNew] [dbo].[CURRENCY] NULL,
	[symbolGroup] [tinyint] NULL,
	[territory] [varchar](10) NULL,
	[oneWayMiles] [tinyint] NULL,
	[daysPerWeek] [tinyint] NULL,
	[usage] [varchar](1) NULL,
	[performance] [varchar](1) NULL,
	[carPool] [tinyint] NOT NULL,
	[odometer] [int] NULL,
	[annualMileage] [int] NULL,
	[governDriver] [varchar](10) NULL,
	[driverUsage] [varchar](44) NULL,
	[classType] [varchar](8) NULL,
	[passiveSeatBelt] [tinyint] NOT NULL,
	[airbag] [tinyint] NOT NULL,
	[antiLockBrakes] [tinyint] NOT NULL,
	[antiTheft] [varchar](10) NULL,
	[credits] [varchar](100) NULL,
	[garaged] [tinyint] NOT NULL,
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
	[tempRecord] [tinyint] NOT NULL,
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
	[vehicleOrder] [smallint] NULL,
	[engineType] [varchar](1) NULL,
	[salvaged] [tinyint] NULL,
	[garagingAddressID] [int] NULL,
	[hdrStatus] [tinyint] NULL,
	[requiresReview] [tinyint] NULL,
	[inspection] [tinyint] NULL,
	[oneWayMileage] [tinyint] NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Vehicle_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vehicle_policyID] ON [dbo].[Vehicle]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__autoID__1365B5CB]  DEFAULT ((1)) FOR [autoID]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__1459DA04]  DEFAULT ((1)) FOR [vehicleNumber]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_dbo_Vehicle_vehicleYear]  DEFAULT ((0)) FOR [vehicleYear]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__ownersh__154DFE3D]  DEFAULT ((0)) FOR [ownership]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__purchas__16422276]  DEFAULT ((0)) FOR [purchasedNew]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__symbolG__173646AF]  DEFAULT ((1)) FOR [symbolGroup]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__oneWayM__182A6AE8]  DEFAULT ((0)) FOR [oneWayMiles]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__daysPer__191E8F21]  DEFAULT ((0)) FOR [daysPerWeek]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__usage__1A12B35A]  DEFAULT ('P') FOR [usage]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__perform__1B06D793]  DEFAULT ('B') FOR [performance]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__carPool__1BFAFBCC]  DEFAULT ((0)) FOR [carPool]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__odomete__1CEF2005]  DEFAULT ((0)) FOR [odometer]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__annualM__1DE3443E]  DEFAULT ((0)) FOR [annualMileage]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__passive__1ED76877]  DEFAULT ((0)) FOR [passiveSeatBelt]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__airbag__1FCB8CB0]  DEFAULT ((0)) FOR [airbag]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__antiLoc__20BFB0E9]  DEFAULT ((0)) FOR [antiLockBrakes]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__garaged__21B3D522]  DEFAULT ((0)) FOR [garaged]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienTyp__22A7F95B]  DEFAULT ((0)) FOR [lienType1]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienHol__239C1D94]  DEFAULT ((1)) FOR [lienHolderID1]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienTyp__249041CD]  DEFAULT ((0)) FOR [lienType2]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienHol__25846606]  DEFAULT ((1)) FOR [lienHolderID2]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__26788A3F]  DEFAULT ((0)) FOR [vehicleGroup]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__addDate__276CAE78]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__tempRec__2860D2B1]  DEFAULT ((0)) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__endorse__2954F6EA]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__2A491B23]  DEFAULT (' ') FOR [vehicleFilingType]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__policyS__2B3D3F5C]  DEFAULT ((0)) FOR [policyState]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__noLogEn__2C316395]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__insertS__2D2587CE]  DEFAULT ((0)) FOR [insertState]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__2E19AC07]  DEFAULT ((0)) FOR [vehicleSurcharge]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__driverI__2F0DD040]  DEFAULT ((1)) FOR [driverID]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__VINLook__3001F479]  DEFAULT ((0)) FOR [VINLookupUsed]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__forceSu__30F618B2]  DEFAULT ((0)) FOR [forceSurcharge]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__claimSu__31EA3CEB]  DEFAULT ((0)) FOR [claimSurcharge]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__manualS__32DE6124]  DEFAULT ((0)) FOR [manualSurcharge]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__driverT__33D2855D]  DEFAULT ((0)) FOR [driverType]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__34C6A996]  DEFAULT ((0)) FOR [vehicleType]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienPai__35BACDCF]  DEFAULT ((0)) FOR [lienPaidOff1]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__lienPai__36AEF208]  DEFAULT ((0)) FOR [lienPaidOff2]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__adjuste__37A31641]  DEFAULT ((0)) FOR [adjustedSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__is4X4__38973A7A]  DEFAULT ((0)) FOR [is4X4]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__vehicle__398B5EB3]  DEFAULT ((1)) FOR [vehicleSurchargeID]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__ratingS__3A7F82EC]  DEFAULT ((0)) FOR [ratingSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__issuedI__3B73A725]  DEFAULT ((0)) FOR [issuedIDCard]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__biSymbo__3C67CB5E]  DEFAULT ((0)) FOR [biSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__pdSymbo__3D5BEF97]  DEFAULT ((0)) FOR [pdSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__pipSymb__3E5013D0]  DEFAULT ((0)) FOR [pipSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__mpSymbo__3F443809]  DEFAULT ((0)) FOR [mpSymbol]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__classCo__40385C42]  DEFAULT ((0)) FOR [classCode]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__excessV__412C807B]  DEFAULT ((0)) FOR [excessVehicle]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__pointsC__4220A4B4]  DEFAULT ((0)) FOR [pointsCharged]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__exclude__4314C8ED]  DEFAULT ((0)) FOR [excludeCustomEquipment]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__commiss__4408ED26]  DEFAULT ((0)) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__jointOw__44FD115F]  DEFAULT ((0)) FOR [jointOwnerShip]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__customE__45F13598]  DEFAULT ((0)) FOR [customEquipType]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__tonnage__64FFCC9D]  DEFAULT ((0)) FOR [tonnage]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__ratingS__1FEB8841]  DEFAULT ((0)) FOR [ratingScore]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF__Vehicle__objectN__50AEBB2D]  DEFAULT ((0)) FOR [vehicleOrder]
GO
ALTER TABLE [dbo].[Vehicle] ADD  DEFAULT ((0)) FOR [salvaged]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_requiresReview]  DEFAULT ((0)) FOR [requiresReview]
GO
