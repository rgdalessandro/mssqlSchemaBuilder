USE [Windhaven]
GO
/****** Object:  Table [dbo].[Auto]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto](
	[autoID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[agentInspectedVehicle] [tinyint] NOT NULL,
	[attachStateSupplement] [tinyint] NOT NULL,
	[attachYoungDriver] [tinyint] NOT NULL,
	[attachDriverTraining] [tinyint] NOT NULL,
	[attachGoodStudent] [tinyint] NOT NULL,
	[attachAntiTheft] [tinyint] NOT NULL,
	[attachMedical] [tinyint] NOT NULL,
	[attachMotorVehicleReport] [tinyint] NOT NULL,
	[attachPhotograph] [tinyint] NOT NULL,
	[attachBillOfSale] [tinyint] NOT NULL,
	[priorCarrier] [dbo].[NAME_Business] NULL,
	[priorProducer] [dbo].[NAME_Business] NULL,
	[priorPolicyNum] [varchar](25) NULL,
	[priorPolicyExpDate] [smalldatetime] NULL,
	[priorYearsWithCompany] [real] NULL,
	[curResidenceYears] [real] NULL,
	[curResidenceOwn] [tinyint] NOT NULL,
	[prevResidenceYears] [real] NULL,
	[prevResidenceAddress1] [dbo].[ADDRESS] NULL,
	[prevResidenceAddress2] [dbo].[ADDRESS] NULL,
	[prevResidenceCity] [dbo].[CITYCOUNTY] NULL,
	[prevResidenceState] [dbo].[STATE_Abbrev] NULL,
	[prevResidenceZip] [dbo].[ZIP_Formatted] NULL,
	[appEmployerName] [dbo].[NAME_Business] NULL,
	[appEmployerAddress1] [dbo].[ADDRESS] NULL,
	[appEmployerAddress2] [dbo].[ADDRESS] NULL,
	[appEmployerCity] [dbo].[CITYCOUNTY] NULL,
	[appEmployerState] [dbo].[STATE_Abbrev] NULL,
	[appEmployerZip] [dbo].[ZIP_Formatted] NULL,
	[appEmployerPhone] [dbo].[PHONE_Formatted] NULL,
	[appEmployerYears] [real] NULL,
	[appPrevEmployerYears] [real] NULL,
	[coappEmployerName] [dbo].[NAME_Business] NULL,
	[coappEmployerAddress1] [dbo].[ADDRESS] NULL,
	[coappEmployerAddress2] [dbo].[ADDRESS] NULL,
	[coappEmployerCity] [dbo].[CITYCOUNTY] NULL,
	[coappEmployerState] [dbo].[STATE_Abbrev] NULL,
	[coappEmployerZip] [dbo].[ZIP_Formatted] NULL,
	[coappEmployerPhone] [dbo].[PHONE_Formatted] NULL,
	[coappEmployerYears] [real] NULL,
	[coappPrevEmployerYears] [real] NULL,
	[newBusiness] [tinyint] NOT NULL,
	[remarks] [varchar](3000) NULL,
	[endorsementDate] [smalldatetime] NULL,
	[discountsApplied] [varchar](100) NULL,
	[tempRecord] [tinyint] NOT NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[policyZip] [dbo].[ZIP_Formatted] NULL,
	[appQuestions] [varchar](100) NULL,
	[policyZipID] [int] NULL,
	[generalEndorsement] [varchar](3000) NULL,
	[infoRequested_Auto] [varchar](100) NULL,
	[assessLateFee] [dbo].[CURRENCY] NULL,
	[priorPolicyExpDays] [smallint] NULL,
	[marketLevel] [varchar](2) NULL,
	[priorBIEachPerson] [int] NULL,
	[nonOwnedType] [tinyint] NULL,
	[extendNonOwned] [tinyint] NULL,
	[paymentMethod] [tinyint] NULL,
	[hasNonOwned] [tinyint] NULL,
	[vehicleCount] [smallint] NULL,
	[driverCount] [smallint] NULL,
	[requireCheck1] [bit] NOT NULL,
	[limitedPolicy] [tinyint] NULL,
	[sameMailAddress] [tinyint] NULL,
 CONSTRAINT [PK_Auto] PRIMARY KEY CLUSTERED 
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ix_Auto_policyID_autoID_includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [ix_Auto_policyID_autoID_includes] ON [dbo].[Auto]
(
	[policyID] ASC,
	[autoID] ASC
)
INCLUDE ( 	[attachStateSupplement],
	[attachYoungDriver],
	[attachDriverTraining],
	[attachGoodStudent],
	[attachAntiTheft],
	[attachMedical],
	[attachMotorVehicleReport],
	[attachPhotograph],
	[attachBillOfSale],
	[priorCarrier],
	[priorProducer],
	[priorPolicyNum],
	[priorPolicyExpDate],
	[priorYearsWithCompany],
	[curResidenceYears],
	[curResidenceOwn],
	[prevResidenceYears],
	[prevResidenceAddress1],
	[prevResidenceAddress2],
	[prevResidenceCity],
	[prevResidenceState],
	[prevResidenceZip],
	[appEmployerName],
	[appEmployerAddress1],
	[appEmployerAddress2],
	[appEmployerCity],
	[appEmployerState],
	[appEmployerZip],
	[appEmployerPhone],
	[appEmployerYears],
	[appPrevEmployerYears],
	[coappEmployerName],
	[coappEmployerAddress1],
	[coappEmployerAddress2],
	[coappEmployerCity],
	[coappEmployerState],
	[coappEmployerZip],
	[coappEmployerPhone],
	[coappEmployerYears],
	[coappPrevEmployerYears],
	[newBusiness],
	[remarks],
	[discountsApplied],
	[policyZip],
	[appQuestions],
	[policyZipID],
	[priorPolicyExpDays],
	[marketLevel],
	[priorBIEachPerson],
	[nonOwnedType],
	[extendNonOwned],
	[paymentMethod]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [ix_Auto_policyID_includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [ix_Auto_policyID_includes] ON [dbo].[Auto]
(
	[policyID] ASC
)
INCLUDE ( 	[autoID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__policyID__0640C4D7]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__agentInspe__0734E910]  DEFAULT ((0)) FOR [agentInspectedVehicle]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachStat__08290D49]  DEFAULT ((1)) FOR [attachStateSupplement]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachYoun__091D3182]  DEFAULT ((0)) FOR [attachYoungDriver]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachDriv__0A1155BB]  DEFAULT ((0)) FOR [attachDriverTraining]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachGood__0B0579F4]  DEFAULT ((0)) FOR [attachGoodStudent]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachAnti__0BF99E2D]  DEFAULT ((0)) FOR [attachAntiTheft]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachMedi__0CEDC266]  DEFAULT ((0)) FOR [attachMedical]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachMoto__0DE1E69F]  DEFAULT ((0)) FOR [attachMotorVehicleReport]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachPhot__0ED60AD8]  DEFAULT ((0)) FOR [attachPhotograph]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__attachBill__0FCA2F11]  DEFAULT ((0)) FOR [attachBillOfSale]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__priorYears__10BE534A]  DEFAULT ((0)) FOR [priorYearsWithCompany]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__curResiden__11B27783]  DEFAULT ((0)) FOR [curResidenceYears]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__curResiden__12A69BBC]  DEFAULT ((0)) FOR [curResidenceOwn]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__prevReside__139ABFF5]  DEFAULT ((0)) FOR [prevResidenceYears]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__coappPrevE__148EE42E]  DEFAULT ((0)) FOR [coappPrevEmployerYears]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__newBusines__15830867]  DEFAULT ((0)) FOR [newBusiness]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__endorsemen__16772CA0]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__tempRecord__176B50D9]  DEFAULT ((0)) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__policyStat__185F7512]  DEFAULT ((0)) FOR [policyState]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__noLogEntry__1953994B]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__policyZipI__1A47BD84]  DEFAULT ((1)) FOR [policyZipID]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__priorPolic__1B3BE1BD]  DEFAULT ((0)) FOR [priorPolicyExpDays]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__priorBIEac__1C3005F6]  DEFAULT ((0)) FOR [priorBIEachPerson]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__nonOwnedTy__1D242A2F]  DEFAULT ((0)) FOR [nonOwnedType]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__extendNonO__1E184E68]  DEFAULT ((0)) FOR [extendNonOwned]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__hasNonOwne__740D0603]  DEFAULT ((0)) FOR [hasNonOwned]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__totalVehic__4EC672BB]  DEFAULT ((0)) FOR [vehicleCount]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF__Auto__totalDrive__4FBA96F4]  DEFAULT ((0)) FOR [driverCount]
GO
ALTER TABLE [dbo].[Auto] ADD  DEFAULT ((0)) FOR [requireCheck1]
GO
ALTER TABLE [dbo].[Auto] ADD  CONSTRAINT [DF_Auto_hasLimitedCoverage]  DEFAULT ((0)) FOR [limitedPolicy]
GO
