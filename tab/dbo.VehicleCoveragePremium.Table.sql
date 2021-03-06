USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleCoveragePremium]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleCoveragePremium](
	[vehicleCoveragePremiumID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[autoID] [int] NULL,
	[vehicleID] [int] NULL,
	[policyCoveragesID] [int] NULL,
	[coverage] [varchar](10) NULL,
	[status] [tinyint] NULL,
	[endorsementDescription] [varchar](255) NULL,
	[changeType] [tinyint] NULL,
	[premiumTotal] [dbo].[CURRENCY] NULL,
	[changeInPremiumTotal] [dbo].[CURRENCY] NULL,
	[termPremiumsDue] [dbo].[CURRENCY] NULL,
	[changeInPremium] [dbo].[CURRENCY] NULL,
	[proRateFactor] [money] NULL,
	[changeDate] [datetime] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[isRenewal] [tinyint] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[usersID] [int] NULL,
	[editStatus] [tinyint] NULL,
	[isShortRate] [tinyint] NULL,
	[treatyID] [int] NULL,
	[addDate] [datetime] NULL,
	[policyPremiumID] [int] NULL,
 CONSTRAINT [PK_VehicleCoveragePremium] PRIMARY KEY CLUSTERED 
(
	[vehicleCoveragePremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehicleCoveragePremium_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCoveragePremium_policyID] ON [dbo].[VehicleCoveragePremium]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_autoID]  DEFAULT ((1)) FOR [autoID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_vehicleID]  DEFAULT ((1)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_policyCoveragesID]  DEFAULT ((1)) FOR [policyCoveragesID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_coverageDescription]  DEFAULT ('') FOR [coverage]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_changeType]  DEFAULT ((0)) FOR [changeType]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_premiumTotal]  DEFAULT ((0)) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_changeInPremiumTotal]  DEFAULT ((0)) FOR [changeInPremiumTotal]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_termPremiumsDue]  DEFAULT ((0)) FOR [termPremiumsDue]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_premiumTotal1]  DEFAULT ((0)) FOR [changeInPremium]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_proRateFactor]  DEFAULT ((0)) FOR [proRateFactor]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_dropDate]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_isRenewal]  DEFAULT ((0)) FOR [isRenewal]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_producerID]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_editStatus]  DEFAULT ((0)) FOR [editStatus]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_isShortRate]  DEFAULT ((0)) FOR [isShortRate]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_treatyID]  DEFAULT ((1)) FOR [treatyID]
GO
ALTER TABLE [dbo].[VehicleCoveragePremium] ADD  CONSTRAINT [DF_VehicleCoveragePremium_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
