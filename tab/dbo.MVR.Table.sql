USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR](
	[MVR_ID] [int] IDENTITY(1,1) NOT NULL,
	[MVR_RequestID] [int] NULL,
	[Version] [varchar](15) NULL,
	[DateofRequest] [varchar](25) NULL,
	[LicenseNumber] [varchar](25) NULL,
	[LicenseState] [varchar](10) NULL,
	[LicenseStatus] [varchar](50) NULL,
	[FullName] [varchar](65) NULL,
	[LastName] [varchar](25) NULL,
	[FirstName] [varchar](25) NULL,
	[MiddleName] [varchar](15) NULL,
	[Alias] [varchar](50) NULL,
	[DateOfBirth] [varchar](15) NULL,
	[Gender] [varchar](1) NULL,
	[Race] [varchar](10) NULL,
	[Height] [varchar](5) NULL,
	[Weight] [varchar](5) NULL,
	[EyeColor] [varchar](10) NULL,
	[HairColor] [varchar](10) NULL,
	[SSN] [varchar](12) NULL,
	[LicenseIssued] [varchar](12) NULL,
	[LicenseExpiration] [varchar](12) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](25) NULL,
	[State] [varchar](3) NULL,
	[Zip] [varchar](12) NULL,
	[CdlStatus] [varchar](50) NULL,
	[QuoteBack] [varchar](50) NULL,
	[RecordReceivedDate] [varchar](25) NULL,
	[VisionExam] [varchar](5) NULL,
	[RoadSignsExam] [varchar](5) NULL,
	[RulesExam] [varchar](5) NULL,
	[DrivingExam] [varchar](5) NULL,
	[MotorCycleExam] [varchar](5) NULL,
	[MotorCycleSkills] [varchar](5) NULL,
	[EntriesCover] [varchar](50) NULL,
	[OriginalIssueDate] [varchar](25) NULL,
	[Points] [varchar](10) NULL,
	[NonResidentMilitary] [varchar](5) NULL,
	[LicenseType] [varchar](50) NULL,
	[ReportLink] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[ClassDescription] [varchar](300) NULL,
	[Endorsements] [varchar](25) NULL,
	[Restrictions] [varchar](200) NULL,
	[BoatClass] [varchar](25) NULL,
	[Message] [text] NULL,
 CONSTRAINT [PK_MVR] PRIMARY KEY CLUSTERED 
(
	[MVR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[MVR] ADD  CONSTRAINT [DF_MVR_MVR_RequestID]  DEFAULT (1) FOR [MVR_RequestID]
GO
