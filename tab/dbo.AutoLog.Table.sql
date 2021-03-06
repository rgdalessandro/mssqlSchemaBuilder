USE [Windhaven]
GO
/****** Object:  Table [dbo].[AutoLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoLog](
	[autoLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NOT NULL,
	[autoID] [int] NULL,
	[policyID] [int] NULL,
	[agentInspectedVehicle] [tinyint] NULL,
	[attachStateSupplement] [tinyint] NULL,
	[attachYoungDriver] [tinyint] NULL,
	[attachDriverTraining] [tinyint] NULL,
	[attachGoodStudent] [tinyint] NULL,
	[attachAntiTheft] [tinyint] NULL,
	[attachMedical] [tinyint] NULL,
	[attachMotorVehicleReport] [tinyint] NULL,
	[attachPhotograph] [tinyint] NULL,
	[attachBillOfSale] [tinyint] NULL,
	[priorCarrier] [dbo].[NAME_Business] NULL,
	[priorProducer] [dbo].[NAME_Business] NULL,
	[priorPolicyNum] [varchar](25) NULL,
	[priorPolicyExpDate] [smalldatetime] NULL,
	[priorYearsWithCompany] [real] NULL,
	[curResidenceYears] [real] NULL,
	[curResidenceOwn] [tinyint] NULL,
	[prevResidenceYears] [real] NULL,
	[prevResidenceAddress1] [dbo].[ADDRESS] NULL,
	[prevResidenceAddress2] [dbo].[ADDRESS] NULL,
	[prevResidenceCity] [dbo].[CITYCOUNTY] NULL,
	[prevResidenceState] [dbo].[STATE_Abbrev] NULL,
	[prevResidenceZip] [dbo].[ZIP_Formatted] NULL,
	[appEmployerName] [dbo].[NAME_Business] NULL,
	[appEmployerAddress1] [dbo].[ADDRESS] NULL,
	[appEmployerAddress2] [dbo].[ADDRESS] NULL,
	[appEmployerCity] [dbo].[CITYCOUNTY] NULL,
	[appEmployerState] [dbo].[STATE_Abbrev] NULL,
	[appEmployerZip] [dbo].[ZIP_Formatted] NULL,
	[appEmployerPhone] [dbo].[PHONE_Formatted] NULL,
	[appEmployerYears] [real] NULL,
	[appPrevEmployerYears] [real] NULL,
	[coappEmployerName] [dbo].[NAME_Business] NULL,
	[coappEmployerAddress1] [dbo].[ADDRESS] NULL,
	[coappEmployerAddress2] [dbo].[ADDRESS] NULL,
	[coappEmployerCity] [dbo].[CITYCOUNTY] NULL,
	[coappEmployerState] [dbo].[STATE_Abbrev] NULL,
	[coappEmployerZip] [dbo].[ZIP_Formatted] NULL,
	[coappEmployerPhone] [dbo].[PHONE_Formatted] NULL,
	[coappEmployerYears] [real] NULL,
	[coappPrevEmployerYears] [real] NULL,
	[newBusiness] [tinyint] NULL,
	[remarks] [varchar](3000) NULL,
	[endorsementDate] [smalldatetime] NULL,
	[discountsApplied] [varchar](100) NULL,
	[tempRecord] [tinyint] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[policyZip] [dbo].[ZIP_Formatted] NULL,
	[appQuestions] [varchar](100) NULL,
	[policyZipID] [int] NULL,
	[generalEndorsement] [varchar](3000) NULL,
	[infoRequested_Auto] [varchar](100) NULL,
	[assessLateFee] [dbo].[CURRENCY] NULL,
	[priorPolicyExpDays] [smallint] NULL,
	[marketLevel] [varchar](2) NULL,
	[priorBIEachPerson] [int] NULL,
	[nonOwnedType] [tinyint] NULL,
	[extendNonOwned] [tinyint] NULL,
	[paymentMethod] [tinyint] NULL,
	[hasNonOwned] [tinyint] NULL,
	[limitedPolicy] [tinyint] NULL,
 CONSTRAINT [PK_AutoLog_autoLogID] PRIMARY KEY CLUSTERED 
(
	[autoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AutoLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AutoLog_policyID] ON [dbo].[AutoLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AutoLog] ADD  CONSTRAINT [DF__AutoLog__dropDate]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[AutoLog] ADD  CONSTRAINT [DF_AutoLog_hasNonOwed]  DEFAULT ((0)) FOR [hasNonOwned]
GO
ALTER TABLE [dbo].[AutoLog] ADD  DEFAULT ((0)) FOR [limitedPolicy]
GO
