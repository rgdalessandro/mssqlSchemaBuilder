USE [Windhaven]
GO
/****** Object:  Table [dbo].[DataPreFillVehicle]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPreFillVehicle](
	[DataPreFillVehicleID] [int] IDENTITY(10,1) NOT NULL,
	[source] [varchar](50) NULL,
	[VIN] [varchar](50) NULL,
	[make] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[brandedindicator] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[purchaseDate] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[makeCode] [varchar](50) NULL,
	[seriesCode] [varchar](50) NULL,
	[subSeriesCode] [varchar](50) NULL,
	[bodyStyleCode] [varchar](50) NULL,
	[anti_lock_brakes] [varchar](50) NULL,
	[engine_cylinders] [varchar](50) NULL,
	[restraints_airbags] [varchar](50) NULL,
	[restraints_belts] [varchar](50) NULL,
	[four_wheel_drive] [varchar](50) NULL,
	[policy_detail_coverage] [varchar](50) NULL,
	[policy_detail_coveragelimit] [varchar](50) NULL,
	[policy_detail_business_vehicle] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[DataPrefillRequestID] [int] NULL,
 CONSTRAINT [PK_DataPreFillVehicle] PRIMARY KEY CLUSTERED 
(
	[DataPreFillVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DataPreFillVehicle] ADD  CONSTRAINT [DF_DataPreFillVehicle_DataPrefillRequestID]  DEFAULT (1) FOR [DataPrefillRequestID]
GO
