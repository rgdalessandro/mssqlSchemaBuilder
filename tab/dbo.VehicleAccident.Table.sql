USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleAccident]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleAccident](
	[vehicleAccidentID] [int] IDENTITY(10,1) NOT NULL,
	[autoID] [int] NULL,
	[driverID] [int] NULL,
	[vehicleID] [int] NULL,
	[accidentDate] [smalldatetime] NULL,
	[description] [varchar](1000) NULL,
	[place] [varchar](50) NULL,
	[BIorDeath] [bit] NULL,
	[propertyDamage] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[sdipID] [int] NULL,
	[sdipDescription] [varchar](100) NULL,
	[pointsCharged] [tinyint] NULL,
	[claimID] [int] NULL,
	[claimIncidentID] [int] NULL,
 CONSTRAINT [PK_VehicleAccident] PRIMARY KEY CLUSTERED 
(
	[vehicleAccidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_BIorDeath]  DEFAULT (0) FOR [BIorDeath]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_propertyDamage]  DEFAULT (0) FOR [propertyDamage]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_sdipID]  DEFAULT (1) FOR [sdipID]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_pointsCharged]  DEFAULT (0) FOR [pointsCharged]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_claimID]  DEFAULT (1) FOR [claimID]
GO
ALTER TABLE [dbo].[VehicleAccident] ADD  CONSTRAINT [DF_VehicleAccident_claimIncidentID]  DEFAULT (1) FOR [claimIncidentID]
GO
