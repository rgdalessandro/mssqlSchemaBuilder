USE [Windhaven]
GO
/****** Object:  Table [dbo].[DriverAccident]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverAccident](
	[driverAccidentID] [int] IDENTITY(10,1) NOT NULL,
	[driverID] [int] NOT NULL,
	[autoID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[sdipID] [int] NOT NULL,
	[sdipDescription] [varchar](200) NULL,
	[accidentDate] [smalldatetime] NULL,
	[accidentAmount] [dbo].[CURRENCY] NULL,
	[convictionDate] [smalldatetime] NULL,
	[description] [varchar](1000) NULL,
	[place] [varchar](200) NULL,
	[pointsCharged] [tinyint] NULL,
	[status] [tinyint] NULL,
	[accidentGroup] [tinyint] NOT NULL,
	[BIorDeath] [tinyint] NOT NULL,
	[propertyDamage] [dbo].[CURRENCY] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[surchargeCharged] [dbo].[CURRENCY] NULL,
	[isMajorViolation] [tinyint] NULL,
	[commercialVehicle] [varchar](5) NULL,
	[state] [varchar](25) NULL,
	[eventType] [varchar](15) NULL,
	[stateCode] [varchar](15) NULL,
	[mvrImport] [tinyint] NULL,
	[ignoreForRating] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[policyState] [smallint] NULL,
	[modifiedDate] [datetime] NULL,
	[addDate] [datetime] NOT NULL,
	[agingType] [tinyint] NOT NULL,
	[agingValue] [tinyint] NOT NULL,
 CONSTRAINT [PK_DriverAccident] PRIMARY KEY CLUSTERED 
(
	[driverAccidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DriverAccident_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DriverAccident_policyID] ON [dbo].[DriverAccident]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__point__09A74167]  DEFAULT ((0)) FOR [pointsCharged]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__statu__0A9B65A0]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__accid__0B8F89D9]  DEFAULT ((0)) FOR [accidentGroup]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__BIorD__0C83AE12]  DEFAULT ((0)) FOR [BIorDeath]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__isMaj__0D77D24B]  DEFAULT ((0)) FOR [isMajorViolation]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__mvrIm__0E6BF684]  DEFAULT ((0)) FOR [mvrImport]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__ignor__0F601ABD]  DEFAULT ((0)) FOR [ignoreForRating]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__inser__10543EF6]  DEFAULT ((0)) FOR [insertState]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__noLog__1148632F]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__polic__123C8768]  DEFAULT ((1)) FOR [policyState]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  CONSTRAINT [DF__DriverAcc__addDa__1330ABA1]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  DEFAULT ((0)) FOR [agingType]
GO
ALTER TABLE [dbo].[DriverAccident] ADD  DEFAULT ((0)) FOR [agingValue]
GO
ALTER TABLE [dbo].[DriverAccident]  WITH CHECK ADD  CONSTRAINT [CK_DriverAccident_driverID] CHECK  (([driverID]<>(0)))
GO
ALTER TABLE [dbo].[DriverAccident] CHECK CONSTRAINT [CK_DriverAccident_driverID]
GO
