USE [Windhaven]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[driverID] [int] IDENTITY(10,1) NOT NULL,
	[autoID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[driverNumber] [smallint] NULL,
	[fname] [dbo].[NAME_Person] NULL,
	[middle] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[driverType] [tinyint] NULL,
	[gender] [varchar](1) NULL,
	[relationToApplicant] [varchar](25) NULL,
	[maritalStatus] [tinyint] NULL,
	[dob] [smalldatetime] NULL,
	[occupation] [varchar](35) NULL,
	[dateLicensed] [smalldatetime] NULL,
	[goodStudent] [tinyint] NOT NULL,
	[studentHighMiles] [tinyint] NOT NULL,
	[driverTraining] [tinyint] NOT NULL,
	[driverTrainingDate] [smalldatetime] NULL,
	[licNum] [varchar](15) NULL,
	[licState] [dbo].[STATE_Abbrev] NULL,
	[ssNum] [dbo].[TAXID_Formatted] NULL,
	[sdipPoints] [tinyint] NULL,
	[sdipSurcharge] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [tinyint] NOT NULL,
	[endorsementDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[insertState] [smallint] NULL,
	[requiresSR22] [tinyint] NULL,
	[previousLicenseState] [dbo].[STATE_Abbrev] NULL,
	[seniorDriver] [tinyint] NULL,
	[namedInsured] [tinyint] NULL,
	[inexperiencedOperator] [tinyint] NULL,
	[previousLicenseNum] [varchar](15) NULL,
	[MVRStatus] [tinyint] NULL,
	[MVRDate] [smalldatetime] NULL,
	[licenseStatus] [tinyint] NULL,
	[operatorType] [tinyint] NULL,
	[educationLevel] [tinyint] NULL,
	[rateVehicleID] [int] NULL,
	[extendedNonOwned] [tinyint] NULL,
	[infoRequested_Driver] [varchar](100) NULL,
	[SR22caseNumber] [varchar](10) NULL,
	[driverClass] [varchar](10) NULL,
	[outOfState] [tinyint] NULL,
	[goodDriver] [tinyint] NULL,
	[checkMVR] [tinyint] NULL,
	[requiresSR22A] [tinyint] NULL,
	[licenseType] [tinyint] NULL,
	[physicallyImpaired] [tinyint] NULL,
	[principalOperator] [tinyint] NULL,
	[distantStudent] [tinyint] NULL,
	[defensiveDriver] [tinyint] NULL,
	[defensiveDriverTrainingDate] [smalldatetime] NULL,
	[FedEmployee] [tinyint] NULL,
	[ratingScore] [decimal](19, 6) NOT NULL,
	[driverOrder] [smallint] NULL,
	[hasWorkLossExclusion] [tinyint] NULL,
	[collegeGraduate] [tinyint] NULL,
	[hdrStatus] [tinyint] NULL,
	[driverSurcharge] [bit] NULL,
	[requiresReview] [tinyint] NULL,
	[suffix] [varchar](3) NULL,
	[yearsLicensed] [tinyint] NULL,
	[preferredDriverDiscount] [tinyint] NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Driver_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Driver_policyID] ON [dbo].[Driver]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__autoID__20F4BB13]  DEFAULT ((1)) FOR [autoID]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__driverNu__21E8DF4C]  DEFAULT ((1)) FOR [driverNumber]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__driverTy__22DD0385]  DEFAULT ((0)) FOR [driverType]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__sex__23D127BE]  DEFAULT ('M') FOR [gender]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__maritalS__24C54BF7]  DEFAULT ((0)) FOR [maritalStatus]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__goodStud__25B97030]  DEFAULT ((0)) FOR [goodStudent]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__studentH__26AD9469]  DEFAULT ((0)) FOR [studentHighMiles]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__driverTr__27A1B8A2]  DEFAULT ((0)) FOR [driverTraining]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__sdipPoin__298A0114]  DEFAULT ((0)) FOR [sdipPoints]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__addDate__2A7E254D]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__tempReco__2B724986]  DEFAULT ((0)) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__endorsem__2C666DBF]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__policySt__2D5A91F8]  DEFAULT ((0)) FOR [policyState]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__noLogEnt__2E4EB631]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__insertSt__2F42DA6A]  DEFAULT ((0)) FOR [insertState]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__requires__3036FEA3]  DEFAULT ((0)) FOR [requiresSR22]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__seniorDr__312B22DC]  DEFAULT ((0)) FOR [seniorDriver]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__namedIns__321F4715]  DEFAULT ((0)) FOR [namedInsured]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__inexperi__33136B4E]  DEFAULT ((0)) FOR [inexperiencedOperator]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__MVRStatu__34078F87]  DEFAULT ((0)) FOR [MVRStatus]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__MVRDate__34FBB3C0]  DEFAULT (getdate()) FOR [MVRDate]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__licenseS__35EFD7F9]  DEFAULT ((0)) FOR [licenseStatus]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__operator__36E3FC32]  DEFAULT ((0)) FOR [operatorType]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__educatio__37D8206B]  DEFAULT ((0)) FOR [educationLevel]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__rateVehi__38CC44A4]  DEFAULT ((1)) FOR [rateVehicleID]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__extended__39C068DD]  DEFAULT ((0)) FOR [extendedNonOwned]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__outOfSta__3AB48D16]  DEFAULT ((0)) FOR [outOfState]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__goodDriv__3BA8B14F]  DEFAULT ((0)) FOR [goodDriver]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__checkMVR__3C9CD588]  DEFAULT ((0)) FOR [checkMVR]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__requires__3D90F9C1]  DEFAULT ((0)) FOR [requiresSR22A]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__licenseT__3E851DFA]  DEFAULT ((0)) FOR [licenseType]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__physical__3F794233]  DEFAULT ((0)) FOR [physicallyImpaired]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__principa__406D666C]  DEFAULT ((1)) FOR [principalOperator]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__distantS__41618AA5]  DEFAULT ((0)) FOR [distantStudent]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__defensiv__4255AEDE]  DEFAULT ((0)) FOR [defensiveDriver]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__FedEmplo__4349D317]  DEFAULT ((0)) FOR [FedEmployee]
GO
ALTER TABLE [dbo].[Driver] ADD  DEFAULT ((0)) FOR [ratingScore]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__driverOr__51A2DF66]  DEFAULT ((0)) FOR [driverOrder]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__hasWorkL__300CE171]  DEFAULT ((0)) FOR [hasWorkLossExclusion]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF__Driver__collegeG__39964BAB]  DEFAULT ((0)) FOR [collegeGraduate]
GO
ALTER TABLE [dbo].[Driver] ADD  DEFAULT ((0)) FOR [driverSurcharge]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF_Driver_requiresReview]  DEFAULT ((0)) FOR [requiresReview]
GO
