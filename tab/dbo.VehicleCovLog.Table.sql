USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleCovLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleCovLog](
	[vehicleCovLogID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NULL,
	[autoID] [int] NULL,
	[vehicleYear] [smallint] NULL,
	[make] [varchar](15) NULL,
	[model] [varchar](20) NULL,
	[useBodilyInjury] [bit] NULL,
	[usePropertyDamage] [bit] NULL,
	[useCollision] [bit] NOT NULL,
	[useComprehensive] [bit] NOT NULL,
	[useUninsuredBI] [tinyint] NOT NULL,
	[useUninsuredPD] [tinyint] NOT NULL,
	[useWorkLoss] [bit] NOT NULL,
	[useTowing] [bit] NOT NULL,
	[useRental] [bit] NOT NULL,
	[useVINEtching] [bit] NOT NULL,
	[usePDExclusion] [tinyint] NULL,
	[PIPOption] [tinyint] NULL,
	[medicalOption] [tinyint] NULL,
	[comprehensiveDeductible] [int] NULL,
	[collisionDeductible] [int] NULL,
	[otherThanACV] [int] NULL,
	[towingAndLabor] [int] NULL,
	[transportationExpenses] [int] NULL,
	[extraLimit] [int] NULL,
	[extraDeductible] [int] NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[insertState] [smallint] NULL,
	[driverID] [int] NULL,
	[driverType] [tinyint] NULL,
	[useUninsuredCSL] [tinyint] NULL,
	[useUnderinsuredBI] [tinyint] NULL,
	[useUnderinsuredCSL] [tinyint] NULL,
	[useAccidentalDeath] [tinyint] NULL,
	[useSingleLimit] [tinyint] NULL,
	[useCustomEquip] [tinyint] NULL,
	[customEquipLimit] [dbo].[CURRENCY] NULL,
	[useAVE] [tinyint] NULL,
	[AVELimit] [dbo].[CURRENCY] NULL,
	[mediaLimit] [dbo].[CURRENCY] NULL,
	[useMedia] [tinyint] NULL,
	[useGlassCoverage] [tinyint] NULL,
 CONSTRAINT [PK_VehicleCovLog] PRIMARY KEY CLUSTERED 
(
	[vehicleCovLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehicleCovLog_autoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCovLog_autoID] ON [dbo].[VehicleCovLog]
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehicleCovLog_insertState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCovLog_insertState] ON [dbo].[VehicleCovLog]
(
	[insertState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehicleCovLog_PolicyState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCovLog_PolicyState] ON [dbo].[VehicleCovLog]
(
	[policyState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehicleCovLog_vehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCovLog_vehicleID] ON [dbo].[VehicleCovLog]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_vehicleYear]  DEFAULT (0) FOR [vehicleYear]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useBodilyInjury]  DEFAULT (0) FOR [useBodilyInjury]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_usePropertyDamage]  DEFAULT (0) FOR [usePropertyDamage]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useCollision]  DEFAULT (0) FOR [useCollision]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useComprehensive]  DEFAULT (0) FOR [useComprehensive]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useUninsuredBI]  DEFAULT (0) FOR [useUninsuredBI]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useUninsuredPD]  DEFAULT (0) FOR [useUninsuredPD]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useWorkLoss]  DEFAULT (0) FOR [useWorkLoss]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useTowing]  DEFAULT (0) FOR [useTowing]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useRental]  DEFAULT (0) FOR [useRental]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useVINEtching]  DEFAULT (0) FOR [useVINEtching]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_usePDExclusion]  DEFAULT (0) FOR [usePDExclusion]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_PIPOption]  DEFAULT (0) FOR [PIPOption]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_medicalOption]  DEFAULT (0) FOR [medicalOption]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_comprehensiveDeductible]  DEFAULT (0) FOR [comprehensiveDeductible]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_collisionDeductible]  DEFAULT (0) FOR [collisionDeductible]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_otherThanACV]  DEFAULT (0) FOR [otherThanACV]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_towingAndLabor]  DEFAULT (0) FOR [towingAndLabor]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_transportationExpenses]  DEFAULT (0) FOR [transportationExpenses]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_extraLimit]  DEFAULT (0) FOR [extraLimit]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_extraDeductible]  DEFAULT (0) FOR [extraDeductible]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_dropDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_policyState]  DEFAULT (1) FOR [policyState]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_insertState]  DEFAULT (1) FOR [insertState]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_driverType]  DEFAULT (0) FOR [driverType]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useUninsuredCSL]  DEFAULT (0) FOR [useUninsuredCSL]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useUnderinsuredBI]  DEFAULT (0) FOR [useUnderinsuredBI]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useUnderinsuredCSL]  DEFAULT (0) FOR [useUnderinsuredCSL]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useAccidentalDeath]  DEFAULT (0) FOR [useAccidentalDeath]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useSingleLimit]  DEFAULT (0) FOR [useSingleLimit]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useCustomEquip]  DEFAULT (0) FOR [useCustomEquip]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_customEquipLimit]  DEFAULT (0) FOR [customEquipLimit]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useAVE]  DEFAULT (0) FOR [useAVE]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_AVELimit]  DEFAULT (0) FOR [AVELimit]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_mediaLimit]  DEFAULT (0) FOR [mediaLimit]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useMedia]  DEFAULT (0) FOR [useMedia]
GO
ALTER TABLE [dbo].[VehicleCovLog] ADD  CONSTRAINT [DF_VehicleCovLog_useGlassCoverage]  DEFAULT (0) FOR [useGlassCoverage]
GO
