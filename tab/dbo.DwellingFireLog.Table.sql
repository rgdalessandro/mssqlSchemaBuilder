USE [Windhaven]
GO
/****** Object:  Table [dbo].[DwellingFireLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DwellingFireLog](
	[dwellingFireLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[dwellingFireID] [int] NULL,
	[policyID] [int] NULL,
	[priorCarrier] [varchar](65) NULL,
	[priorProducer] [varchar](65) NULL,
	[priorPolicyNum] [varchar](50) NULL,
	[priorPolicyExpDate] [smalldatetime] NULL,
	[priorYearsWithCompany] [tinyint] NULL,
	[curResidenceYears] [tinyint] NULL,
	[prevResidenceYears] [tinyint] NULL,
	[prevResidenceAddress1] [varchar](35) NULL,
	[prevResidenceAddress2] [varchar](35) NULL,
	[prevResidenceCity] [varchar](35) NULL,
	[prevResidenceState] [char](2) NULL,
	[prevResidenceZip] [varchar](10) NULL,
	[appOccupation] [varchar](65) NULL,
	[appOccupationYears] [tinyint] NULL,
	[appEmployerName] [varchar](65) NULL,
	[appEmployerAddress1] [varchar](35) NULL,
	[appEmployerAddress2] [varchar](35) NULL,
	[appEmployerCity] [varchar](35) NULL,
	[appEmployerState] [char](2) NULL,
	[appEmployerZip] [varchar](10) NULL,
	[appEmployerYears] [tinyint] NULL,
	[appEmployerPhone] [varchar](50) NULL,
	[appPriorEmployerYears] [tinyint] NULL,
	[appMaritalStatus] [tinyint] NULL,
	[appDOB] [smalldatetime] NULL,
	[appSSN] [varchar](11) NULL,
	[coappOccupation] [varchar](65) NULL,
	[coappOccupationYears] [tinyint] NULL,
	[coappEmployerName] [varchar](65) NULL,
	[coappEmployerAddress1] [varchar](35) NULL,
	[coappEmployerAddress2] [varchar](35) NULL,
	[coappEmployerCity] [varchar](35) NULL,
	[coappEmployerState] [char](2) NULL,
	[coappEmployerZip] [varchar](10) NULL,
	[coappEmployerYears] [tinyint] NULL,
	[coappEmployerPhone] [varchar](50) NULL,
	[coappPriorEmployerYears] [tinyint] NULL,
	[coappMaritalStatus] [tinyint] NULL,
	[coappDOB] [smalldatetime] NULL,
	[coappSSN] [varchar](11) NULL,
	[premiumDeposit] [decimal](18, 0) NULL,
	[transferDiscount] [decimal](18, 0) NULL,
	[renewalDiscount] [decimal](18, 0) NULL,
	[depositAmount] [decimal](18, 0) NULL,
	[policyCharge] [decimal](18, 0) NULL,
	[installmentFee] [decimal](18, 0) NULL,
	[timeKnownApplicant] [tinyint] NULL,
	[lastInspection] [smalldatetime] NULL,
	[tempRecord] [tinyint] NULL,
	[policyState] [tinyint] NULL,
	[noLogEntry] [tinyint] NULL,
	[appQuestions] [varchar](100) NULL,
	[residenceType] [tinyint] NULL,
	[claimFreeYears] [tinyint] NULL,
	[dwellingFireList] [varchar](1000) NULL,
	[claimCount] [tinyint] NULL,
	[claimDescription] [varchar](500) NULL,
	[contractNumber] [varchar](25) NULL,
	[GLAgentFName] [varchar](35) NULL,
	[GLAgentMiddle] [varchar](35) NULL,
	[GLAgentLName] [varchar](35) NULL,
	[GLAgentNum] [varchar](25) NULL,
	[surplusAgentofOrigin] [varchar](65) NULL,
	[noPriorDec] [tinyint] NULL,
	[coappKnownYears] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[preQuoteQuestions] [varchar](2000) NULL,
	[postQuoteQuestions] [varchar](2000) NULL,
	[remarks] [varchar](1000) NULL,
	[agencyNewRisk] [tinyint] NULL,
	[lossType] [varchar](50) NULL,
	[lossAssesmentAtPremises] [tinyint] NULL,
	[coverageLapse] [tinyint] NULL,
	[assessLateFee] [decimal](18, 0) NULL,
	[optionalEndorsement] [varchar](100) NULL,
	[employerName] [varchar](50) NULL,
	[priorInsProof] [tinyint] NULL,
	[newClosing] [tinyint] NULL,
	[payMethod] [tinyint] NULL,
	[sameMailAddress] [tinyint] NULL,
	[sameBillAddress] [tinyint] NULL,
	[howdidyouhearaboutus] [tinyint] NULL,
	[promotionCode] [varchar](25) NULL,
	[declinedCoverage] [tinyint] NULL,
	[declineReason] [varchar](500) NULL,
 CONSTRAINT [PK_DwellingFireLog] PRIMARY KEY CLUSTERED 
(
	[dwellingFireLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DwellingFireLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DwellingFireLog_policyID] ON [dbo].[DwellingFireLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DwellingFireLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
