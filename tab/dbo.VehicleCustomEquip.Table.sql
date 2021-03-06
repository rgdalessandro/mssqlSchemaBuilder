USE [Windhaven]
GO
/****** Object:  Table [dbo].[VehicleCustomEquip]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleCustomEquip](
	[vehicleCustomEquipID] [int] IDENTITY(10,1) NOT NULL,
	[vehicleID] [int] NULL,
	[autoID] [int] NULL,
	[itemNumber] [tinyint] NULL,
	[customEquipType] [tinyint] NULL,
	[customEquipDesc] [varchar](100) NULL,
	[customEquipValue] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[modifiedDate] [smalldatetime] NULL,
	[modifiedUsersID] [int] NULL,
 CONSTRAINT [PK_VehicleCustomEquip] PRIMARY KEY CLUSTERED 
(
	[vehicleCustomEquipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_vehicleID]  DEFAULT ((1)) FOR [vehicleID]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_autoID]  DEFAULT ((1)) FOR [autoID]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_itemNumber]  DEFAULT ((0)) FOR [itemNumber]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_customEquipType]  DEFAULT ((0)) FOR [customEquipType]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_customEquipValue]  DEFAULT ((0)) FOR [customEquipValue]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[VehicleCustomEquip] ADD  CONSTRAINT [DF_VehicleCustomEquip_usersID]  DEFAULT ((1)) FOR [usersID]
GO
