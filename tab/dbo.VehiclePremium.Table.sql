USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehiclePremium]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehiclePremium](
	[vehiclePremiumID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NULL,
	[driverID] [int] NULL,
	[autoID] [int] NULL,
	[policyPremiumID] [int] NULL,
	[changeInPremium] [dbo].[CURRENCY] NULL,
	[premiumTotal] [dbo].[CURRENCY] NULL,
	[termPremiumsDue] [dbo].[CURRENCY] NULL,
	[changeType] [tinyint] NULL,
	[changeInPremiumTotal] [dbo].[CURRENCY] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[endorsementDescription] [varchar](255) NULL,
	[proRateFactor] [money] NULL,
	[commissionTotalPremium] [dbo].[CURRENCY] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_VehiclePremium] PRIMARY KEY CLUSTERED 
(
	[vehiclePremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehiclePremium_autoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremium_autoID] ON [dbo].[VehiclePremium]
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremium_driverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremium_driverID] ON [dbo].[VehiclePremium]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremium_policyPremiumID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremium_policyPremiumID] ON [dbo].[VehiclePremium]
(
	[policyPremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_VehiclePremium_vehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehiclePremium_vehicleID] ON [dbo].[VehiclePremium]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_policyPremiumID]  DEFAULT (1) FOR [policyPremiumID]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_changeInPremium]  DEFAULT (0) FOR [changeInPremium]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_Table_1_vehiclePremiumTotal]  DEFAULT (0) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_termPremiumsDue]  DEFAULT (0) FOR [termPremiumsDue]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_changeType]  DEFAULT (0) FOR [changeType]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_changeInPremiumTotal]  DEFAULT (0) FOR [changeInPremiumTotal]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_commissionTotalPremium]  DEFAULT (0) FOR [commissionTotalPremium]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[VehiclePremium] ADD  CONSTRAINT [DF_VehiclePremium_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
