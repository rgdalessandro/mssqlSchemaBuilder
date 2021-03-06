USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_Violation]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_Violation](
	[MVR_ViolationID] [int] IDENTITY(1,1) NOT NULL,
	[MVR_RequestID] [int] NULL,
	[IssueDate] [varchar](12) NULL,
	[ConvictionDate] [varchar](12) NULL,
	[EventType] [varchar](15) NULL,
	[Description] [varchar](100) NULL,
	[CityLocation] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[TicketNumber] [varchar](20) NULL,
	[Court] [varchar](75) NULL,
	[AccidentInvolved] [varchar](5) NULL,
	[Jurisdiction] [varchar](25) NULL,
	[EnforcAgency] [varchar](15) NULL,
	[Disposition] [varchar](50) NULL,
	[CommericalVehicle] [varchar](5) NULL,
	[HazardousMaterials] [varchar](1) NULL,
	[Points] [varchar](5) NULL,
	[OrderNumber] [varchar](10) NULL,
	[BatchNumber] [varchar](50) NULL,
	[ACD] [varchar](10) NULL,
	[StateCode] [varchar](15) NULL,
	[vendorCode] [varchar](15) NULL,
	[ARICType] [int] NULL,
	[AlphaType] [int] NULL,
	[autoViolationID] [int] NULL,
	[autoViolationChargeID] [int] NULL,
	[PTSViolationDesc] [varchar](500) NULL,
	[DriverAccidentID] [int] NULL,
 CONSTRAINT [PK_MVR_Violation] PRIMARY KEY CLUSTERED 
(
	[MVR_ViolationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_MVR_RequestID]  DEFAULT (1) FOR [MVR_RequestID]
GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_ARICType]  DEFAULT (0) FOR [ARICType]
GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_AlphaType]  DEFAULT (0) FOR [AlphaType]
GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_autoViolationID]  DEFAULT (1) FOR [autoViolationID]
GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_autoViolationChargeID]  DEFAULT (1) FOR [autoViolationChargeID]
GO
ALTER TABLE [dbo].[MVR_Violation] ADD  CONSTRAINT [DF_MVR_Violation_Motorcycle_DriverAccidentID]  DEFAULT (1) FOR [DriverAccidentID]
GO
