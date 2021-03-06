USE [Windhaven]
GO
/****** Object:  Table [dbo].[AutoCoverageLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoCoverageLog](
	[autoCoverageLogID] [int] IDENTITY(10,1) NOT NULL,
	[autoID] [int] NOT NULL,
	[SLEachAccident] [int] NULL,
	[BIEachPerson] [int] NULL,
	[BIEachAccident] [int] NULL,
	[PDEachAccident] [int] NULL,
	[medicalEachPerson] [int] NULL,
	[PIPEachPerson] [int] NULL,
	[PIPDeductible] [int] NULL,
	[PIPOption] [tinyint] NULL,
	[uninsuredCSLEachAccident] [int] NULL,
	[uninsuredCSLDeductible] [int] NULL,
	[uninsuredBIEachPerson] [int] NULL,
	[uninsuredBIEachAccident] [int] NULL,
	[uninsuredBIDeductible] [int] NULL,
	[uninsuredPDEachAccident] [int] NULL,
	[uninsuredPDDeductible] [int] NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[transferDiscount] [dbo].[CURRENCY] NULL,
	[renewalDiscount] [dbo].[CURRENCY] NULL,
	[policyState] [smallint] NULL,
	[ratingVersion] [real] NULL,
	[homeownerDiscount] [dbo].[CURRENCY] NULL,
	[policyZipID] [int] NULL,
	[underinsuredBIEachPerson] [int] NULL,
	[underinsuredBIEachAccident] [int] NULL,
	[underinsuredCSLEachAccident] [int] NULL,
	[accidentalDeathEachPerson] [int] NULL,
	[workLossEachPerson] [int] NULL,
	[priorPolicyExpDate] [smalldatetime] NULL,
	[vehicleList] [varchar](500) NULL,
	[driverList] [varchar](500) NULL,
 CONSTRAINT [PK_AutoCoverageLog] PRIMARY KEY CLUSTERED 
(
	[autoCoverageLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_SLEachAccident]  DEFAULT (0) FOR [SLEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_BIEachPerson]  DEFAULT (0) FOR [BIEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_BIEachAccident]  DEFAULT (0) FOR [BIEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_PDEachAccident]  DEFAULT (0) FOR [PDEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_medicalEachPerson]  DEFAULT (0) FOR [medicalEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_PIPEachPerson]  DEFAULT (0) FOR [PIPEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_PIPDeductible]  DEFAULT (0) FOR [PIPDeductible]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_PIPOption]  DEFAULT (0) FOR [PIPOption]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredCSLEachAccident]  DEFAULT (0) FOR [uninsuredCSLEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredCSLDeductible]  DEFAULT (0) FOR [uninsuredCSLDeductible]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredBIEachPerson]  DEFAULT (0) FOR [uninsuredBIEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredBIEachAccident]  DEFAULT (0) FOR [uninsuredBIEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredBIDeductible]  DEFAULT (0) FOR [uninsuredBIDeductible]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredPDEachAccident]  DEFAULT (0) FOR [uninsuredPDEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_uninsuredPDDeductible]  DEFAULT (0) FOR [uninsuredPDDeductible]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_dropDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_transferDiscount]  DEFAULT (0) FOR [transferDiscount]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_renewalDiscount]  DEFAULT (0) FOR [renewalDiscount]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_policyState]  DEFAULT (1) FOR [policyState]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_homeownerDiscount]  DEFAULT (0) FOR [homeownerDiscount]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_policyZipID]  DEFAULT (1) FOR [policyZipID]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_underinsuredBIEachPerson]  DEFAULT (0) FOR [underinsuredBIEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_underinsuredBIEachAccident]  DEFAULT (0) FOR [underinsuredBIEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_underinsuredCSLEachAccident]  DEFAULT (0) FOR [underinsuredCSLEachAccident]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_accidentalDeathEachPerson]  DEFAULT (0) FOR [accidentalDeathEachPerson]
GO
ALTER TABLE [dbo].[AutoCoverageLog] ADD  CONSTRAINT [DF_AutoCoverageLog_workLossEachPerson]  DEFAULT (0) FOR [workLossEachPerson]
GO
