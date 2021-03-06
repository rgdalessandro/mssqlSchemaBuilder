USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleCoverages]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleCoverages](
	[vehicleCoveragesID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NOT NULL,
	[autoID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[policyCoveragesID] [int] NOT NULL,
	[coverage] [varchar](10) NULL,
	[limit1] [int] NOT NULL,
	[limit2] [int] NOT NULL,
	[limit3] [int] NOT NULL,
	[deductible] [int] NOT NULL,
	[premium] [decimal](19, 6) NOT NULL,
	[premiumChange] [decimal](18, 6) NULL,
	[addDate] [datetime] NOT NULL,
 CONSTRAINT [PK_VehicleCoverages] PRIMARY KEY CLUSTERED 
(
	[vehicleCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VehicleCoverages_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VehicleCoverages_policyID] ON [dbo].[VehicleCoverages]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__limit__48CDA243]  DEFAULT ((0)) FOR [limit1]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__limit__49C1C67C]  DEFAULT ((0)) FOR [limit2]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__limit__4AB5EAB5]  DEFAULT ((0)) FOR [limit3]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__deduc__4BAA0EEE]  DEFAULT ((0)) FOR [deductible]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__premi__4C9E3327]  DEFAULT ((0)) FOR [premium]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  DEFAULT ((0)) FOR [premiumChange]
GO
ALTER TABLE [dbo].[VehicleCoverages] ADD  CONSTRAINT [DF__VehicleCo__addDa__193E8AB2]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[VehicleCoverages]  WITH CHECK ADD  CONSTRAINT [CK_vehicleID] CHECK  (([vehicleID]<>(0)))
GO
ALTER TABLE [dbo].[VehicleCoverages] CHECK CONSTRAINT [CK_vehicleID]
GO
