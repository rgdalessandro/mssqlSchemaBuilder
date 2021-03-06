USE [Windhaven]
GO
/****** Object:  Table [dbo].[DriverLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLog](
	[driverLogID] [int] IDENTITY(10,1) NOT NULL,
	[changeUsersID] [int] NULL,
	[dropDate] [datetime] NULL,
	[driverID] [int] NULL,
	[autoID] [int] NULL,
	[policyID] [int] NULL,
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
	[goodStudent] [tinyint] NULL,
	[studentHighMiles] [tinyint] NULL,
	[driverTraining] [tinyint] NULL,
	[driverTrainingDate] [smalldatetime] NULL,
	[licNum] [varchar](15) NULL,
	[licState] [dbo].[STATE_Abbrev] NULL,
	[ssNum] [dbo].[TAXID_Formatted] NULL,
	[sdipPoints] [tinyint] NULL,
	[sdipSurcharge] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[tempRecord] [tinyint] NULL,
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
	[actionType] [varchar](1) NULL,
	[changeDate] [datetime] NULL,
	[ratingScore] [decimal](19, 6) NOT NULL,
	[hasWorkLossExclusion] [tinyint] NULL,
	[collegeGraduate] [tinyint] NULL,
	[hdrStatus] [tinyint] NULL,
	[requiresReview] [tinyint] NULL,
	[driverSurcharge] [tinyint] NULL,
	[suffix] [varchar](3) NULL,
	[yearsLicensed] [tinyint] NULL,
	[preferredDriverDiscount] [tinyint] NULL,
 CONSTRAINT [PK_DriverLog_driverLogID] PRIMARY KEY CLUSTERED 
(
	[driverLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DriverLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DriverLog_policyID] ON [dbo].[DriverLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DriverLog] ADD  CONSTRAINT [DF__DriverLog__chang__681C306A]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[DriverLog] ADD  CONSTRAINT [DF__DriverLog__ratin__5C757394]  DEFAULT ((0)) FOR [ratingScore]
GO
ALTER TABLE [dbo].[DriverLog] ADD  CONSTRAINT [DF__DriverLog__hasWo__310105AA]  DEFAULT ((0)) FOR [hasWorkLossExclusion]
GO
ALTER TABLE [dbo].[DriverLog] ADD  CONSTRAINT [DF__DriverLog__colle__3A8A6FE4]  DEFAULT ((0)) FOR [collegeGraduate]
GO
ALTER TABLE [dbo].[DriverLog] ADD  DEFAULT ((0)) FOR [hdrStatus]
GO
ALTER TABLE [dbo].[DriverLog] ADD  DEFAULT ((0)) FOR [requiresReview]
GO
ALTER TABLE [dbo].[DriverLog] ADD  DEFAULT ((0)) FOR [driverSurcharge]
GO
