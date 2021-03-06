USE [Windhaven]
GO
/****** Object:  Table [dbo].[HomeownerLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeownerLog](
	[homeownerLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[homeownerID] [int] NULL,
	[policyID] [int] NULL,
	[curResidenceYears] [tinyint] NULL,
	[curResidenceOwn] [bit] NULL,
	[priorCarrier] [varchar](65) NULL,
	[priorProducer] [varchar](65) NULL,
	[priorPolicyNum] [varchar](25) NULL,
	[priorPolicyExpDate] [smalldatetime] NULL,
	[priorYearsWithCompany] [tinyint] NULL,
	[priorInsProof] [tinyint] NULL,
	[newRisk] [bit] NULL,
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
	[appEmployerPhone] [varchar](22) NULL,
	[appEmployerYears] [tinyint] NULL,
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
	[coappEmployerPhone] [varchar](22) NULL,
	[coappEmployerYears] [tinyint] NULL,
	[coappPriorEmployerYears] [tinyint] NULL,
	[coappMaritalStatus] [tinyint] NULL,
	[coappDOB] [smalldatetime] NULL,
	[coappSSN] [varchar](11) NULL,
	[residenceType] [tinyint] NULL,
	[claimFreeYears] [tinyint] NULL,
	[claimDescription] [nvarchar](500) NULL,
	[claimCount] [tinyint] NULL,
	[claimType] [varchar](50) NULL,
	[waterBackUpLosses] [tinyint] NULL,
	[coverageLapse] [tinyint] NULL,
	[premiumDeposit] [decimal](18, 0) NULL,
	[transferDiscount] [decimal](18, 0) NULL,
	[renewalDiscount] [decimal](18, 0) NULL,
	[depositAmount] [decimal](18, 0) NULL,
	[timeKnownApplicant] [tinyint] NULL,
	[lastInspection] [varchar](25) NULL,
	[appQuestions] [varchar](100) NULL,
	[remarks] [varchar](3000) NULL,
	[tempRecord] [tinyint] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[dwellingList] [varchar](1000) NULL,
	[assessLateFee] [decimal](18, 0) NULL,
	[optionalEndorsement] [varchar](100) NULL,
	[postQuoteQuestions] [nvarchar](4000) NULL,
	[preQuoteQuestions] [nvarchar](4000) NULL,
	[employerName] [varchar](50) NULL,
	[declinedCoverage] [tinyint] NULL,
	[declineReason] [varchar](500) NULL,
	[newClosing] [tinyint] NULL,
	[sameBillAddress] [tinyint] NULL,
	[sameMailAddress] [tinyint] NULL,
	[howdidyouhearaboutus] [tinyint] NULL,
	[hasCoverageDeclined] [tinyint] NULL,
	[promotionCode] [varchar](25) NULL,
	[isTempered] [tinyint] NULL,
	[temperingFactor] [decimal](19, 8) NULL,
 CONSTRAINT [PK_HomeownerLog] PRIMARY KEY CLUSTERED 
(
	[homeownerLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HomeownerLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HomeownerLog_policyID] ON [dbo].[HomeownerLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HomeownerLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[HomeownerLog] ADD  CONSTRAINT [DF_HomeownerLog_isTempered]  DEFAULT ((0)) FOR [isTempered]
GO
