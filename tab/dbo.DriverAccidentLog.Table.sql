USE [Windhaven]
GO
/****** Object:  Table [dbo].[DriverAccidentLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverAccidentLog](
	[driverAccidentLogID] [int] IDENTITY(10,1) NOT NULL,
	[dropDate] [datetime] NOT NULL,
	[changeUsersID] [int] NULL,
	[driverAccidentID] [int] NULL,
	[driverID] [int] NULL,
	[autoID] [int] NULL,
	[policyID] [int] NULL,
	[sdipID] [int] NULL,
	[sdipDescription] [varchar](200) NULL,
	[accidentDate] [smalldatetime] NULL,
	[accidentAmount] [dbo].[CURRENCY] NULL,
	[convictionDate] [smalldatetime] NULL,
	[description] [varchar](1000) NULL,
	[place] [varchar](200) NULL,
	[pointsCharged] [tinyint] NULL,
	[status] [tinyint] NULL,
	[accidentGroup] [tinyint] NULL,
	[BIorDeath] [tinyint] NULL,
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
	[addDate] [datetime] NULL,
	[agingType] [tinyint] NULL,
	[agingValue] [tinyint] NULL,
	[actionType] [varchar](1) NULL,
	[changeDate] [datetime] NULL,
 CONSTRAINT [PK_DriverAccidentLog_driverAccidentLogID] PRIMARY KEY CLUSTERED 
(
	[driverAccidentLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DriverAccidentLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DriverAccidentLog_policyID] ON [dbo].[DriverAccidentLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DriverAccidentLog] ADD  CONSTRAINT [DF__DriverAcc__logDa__160D184C]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[DriverAccidentLog] ADD  CONSTRAINT [DF__DriverAcc__chang__7A3AE0A5]  DEFAULT (getdate()) FOR [changeDate]
GO
