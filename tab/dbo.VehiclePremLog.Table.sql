USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehiclePremLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclePremLog](
	[vehiclePremLogID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NULL,
	[autoID] [int] NULL,
	[vehicleYear] [smallint] NULL,
	[make] [varchar](15) NULL,
	[model] [varchar](20) NULL,
	[singleLimitPrem] [dbo].[CURRENCY] NULL,
	[bodilyInjuryPrem] [dbo].[CURRENCY] NULL,
	[propertyDamagePrem] [dbo].[CURRENCY] NULL,
	[medicalPaymentsPrem] [dbo].[CURRENCY] NULL,
	[PIPPrem] [dbo].[CURRENCY] NULL,
	[uninsuredBIPrem] [dbo].[CURRENCY] NULL,
	[uninsuredPDPrem] [dbo].[CURRENCY] NULL,
	[comprehensivePrem] [dbo].[CURRENCY] NULL,
	[collisionPrem] [dbo].[CURRENCY] NULL,
	[notACVPrem] [dbo].[CURRENCY] NULL,
	[towingPrem] [dbo].[CURRENCY] NULL,
	[transportationPrem] [dbo].[CURRENCY] NULL,
	[workLossPrem] [dbo].[CURRENCY] NULL,
	[rentalPrem] [dbo].[CURRENCY] NULL,
	[extraPrem] [dbo].[CURRENCY] NULL,
	[accidentalDeathPrem] [dbo].[CURRENCY] NULL,
	[glassCoveragePrem] [dbo].[CURRENCY] NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[insertState] [smallint] NULL,
	[changeType] [tinyint] NULL,
	[vehiclePremTotalChange] [dbo].[CURRENCY] NULL,
	[singleLimitChange] [dbo].[CURRENCY] NULL,
	[bodilyInjuryChange] [dbo].[CURRENCY] NULL,
	[propertyDamageChange] [dbo].[CURRENCY] NULL,
	[medicalPaymentsChange] [dbo].[CURRENCY] NULL,
	[PIPChange] [dbo].[CURRENCY] NULL,
	[uninsuredBIChange] [dbo].[CURRENCY] NULL,
	[uninsuredPDChange] [dbo].[CURRENCY] NULL,
	[comprehensiveChange] [dbo].[CURRENCY] NULL,
	[collisionChange] [dbo].[CURRENCY] NULL,
	[notACVChange] [dbo].[CURRENCY] NULL,
	[towingChange] [dbo].[CURRENCY] NULL,
	[transportationChange] [dbo].[CURRENCY] NULL,
	[workLossChange] [dbo].[CURRENCY] NULL,
	[rentalChange] [dbo].[CURRENCY] NULL,
	[extraChange] [dbo].[CURRENCY] NULL,
	[accidentalDeathChange] [dbo].[CURRENCY] NULL,
	[uninsuredCSLPrem] [dbo].[CURRENCY] NULL,
	[underinsuredBIPrem] [dbo].[CURRENCY] NULL,
	[underinsuredCSLPrem] [dbo].[CURRENCY] NULL,
	[uninsuredCSLChange] [dbo].[CURRENCY] NULL,
	[underinsuredBIChange] [dbo].[CURRENCY] NULL,
	[underinsuredCSLChange] [dbo].[CURRENCY] NULL,
	[customEquipPrem] [dbo].[CURRENCY] NULL,
	[customEquipChange] [dbo].[CURRENCY] NULL,
	[AVEPrem] [dbo].[CURRENCY] NULL,
	[AVEChange] [dbo].[CURRENCY] NULL,
	[mediaPrem] [dbo].[CURRENCY] NULL,
	[mediaChange] [dbo].[CURRENCY] NULL,
	[glassCoverageChange] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_VehiclePremLog] PRIMARY KEY CLUSTERED 
(
	[vehiclePremLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehiclePremLog_autoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_autoID] ON [dbo].[VehiclePremLog]
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_bodilyInjuryChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_bodilyInjuryChange] ON [dbo].[VehiclePremLog]
(
	[bodilyInjuryChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_collisionChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_collisionChange] ON [dbo].[VehiclePremLog]
(
	[collisionChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_comprehensiveChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_comprehensiveChange] ON [dbo].[VehiclePremLog]
(
	[comprehensiveChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_extraChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_extraChange] ON [dbo].[VehiclePremLog]
(
	[extraChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_insertState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_insertState] ON [dbo].[VehiclePremLog]
(
	[insertState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_medicalPaymentsChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_medicalPaymentsChange] ON [dbo].[VehiclePremLog]
(
	[medicalPaymentsChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_notACVChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_notACVChange] ON [dbo].[VehiclePremLog]
(
	[notACVChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_policyState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_policyState] ON [dbo].[VehiclePremLog]
(
	[policyState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_propertyDamageChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_propertyDamageChange] ON [dbo].[VehiclePremLog]
(
	[propertyDamageChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_rentalChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_rentalChange] ON [dbo].[VehiclePremLog]
(
	[rentalChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_singleLimitChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_singleLimitChange] ON [dbo].[VehiclePremLog]
(
	[singleLimitChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_towingChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_towingChange] ON [dbo].[VehiclePremLog]
(
	[towingChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_transportationChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_transportationChange] ON [dbo].[VehiclePremLog]
(
	[transportationChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_uninsuredBIChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_uninsuredBIChange] ON [dbo].[VehiclePremLog]
(
	[uninsuredBIChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_uninsuredPDChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_uninsuredPDChange] ON [dbo].[VehiclePremLog]
(
	[uninsuredPDChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_vehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_vehicleID] ON [dbo].[VehiclePremLog]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremLog_workLossChange]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremLog_workLossChange] ON [dbo].[VehiclePremLog]
(
	[workLossChange] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_singleLimitPrem]  DEFAULT (0) FOR [singleLimitPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_bodilyInjuryPrem]  DEFAULT (0) FOR [bodilyInjuryPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_propertyDamagePrem]  DEFAULT (0) FOR [propertyDamagePrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_medicalPaymentsPrem]  DEFAULT (0) FOR [medicalPaymentsPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_PIPPrem]  DEFAULT (0) FOR [PIPPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredBIPrem]  DEFAULT (0) FOR [uninsuredBIPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredPDPrem]  DEFAULT (0) FOR [uninsuredPDPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_comprehensivePrem]  DEFAULT (0) FOR [comprehensivePrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_collisionPrem]  DEFAULT (0) FOR [collisionPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_notACVPrem]  DEFAULT (0) FOR [notACVPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_towingPrem]  DEFAULT (0) FOR [towingPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_transportationPrem]  DEFAULT (0) FOR [transportationPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_workLossPrem]  DEFAULT (0) FOR [workLossPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_rentalPrem]  DEFAULT (0) FOR [rentalPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_extraPrem]  DEFAULT (0) FOR [extraPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_accidentalDeathPrem]  DEFAULT (0) FOR [accidentalDeathPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_glassCoveragePrem]  DEFAULT (0) FOR [glassCoveragePrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_dropDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_policyState]  DEFAULT (1) FOR [policyState]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_insertState]  DEFAULT (1) FOR [insertState]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_changeType]  DEFAULT (0) FOR [changeType]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_vehiclePremTotalChange]  DEFAULT (0) FOR [vehiclePremTotalChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_singleLimitChange]  DEFAULT (0) FOR [singleLimitChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_bodilyInjuryChange]  DEFAULT (0) FOR [bodilyInjuryChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_propertyDamageChange]  DEFAULT (0) FOR [propertyDamageChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_medicalPaymentsChange]  DEFAULT (0) FOR [medicalPaymentsChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_PIPChange]  DEFAULT (0) FOR [PIPChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredBIChange]  DEFAULT (0) FOR [uninsuredBIChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredPDChange]  DEFAULT (0) FOR [uninsuredPDChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_comprehensiveChange]  DEFAULT (0) FOR [comprehensiveChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_collisionChange]  DEFAULT (0) FOR [collisionChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_notACVChange]  DEFAULT (0) FOR [notACVChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_towingChange]  DEFAULT (0) FOR [towingChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_transportationChange]  DEFAULT (0) FOR [transportationChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_workLossChange]  DEFAULT (0) FOR [workLossChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_rentalChange]  DEFAULT (0) FOR [rentalChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_extraChange]  DEFAULT (0) FOR [extraChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_accidentalDeathChange]  DEFAULT (0) FOR [accidentalDeathChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredCSLPrem]  DEFAULT (0) FOR [uninsuredCSLPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_underinsuredBIPrem]  DEFAULT (0) FOR [underinsuredBIPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_underinsuredCSLPrem]  DEFAULT (0) FOR [underinsuredCSLPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_uninsuredCSLChange]  DEFAULT (0) FOR [uninsuredCSLChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_underinsuredBIChange]  DEFAULT (0) FOR [underinsuredBIChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_underinsuredCSLChange]  DEFAULT (0) FOR [underinsuredCSLChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_customEquipPrem]  DEFAULT (0) FOR [customEquipPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_customEquipChange]  DEFAULT (0) FOR [customEquipChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_AVEPrem]  DEFAULT (0) FOR [AVEPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_AVEChange]  DEFAULT (0) FOR [AVEChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_mediaPrem]  DEFAULT (0) FOR [mediaPrem]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_mediaChange]  DEFAULT (0) FOR [mediaChange]
GO
ALTER TABLE [dbo].[VehiclePremLog] ADD  CONSTRAINT [DF_VehiclePremLog_glassCoverageChange]  DEFAULT (0) FOR [glassCoverageChange]
GO
