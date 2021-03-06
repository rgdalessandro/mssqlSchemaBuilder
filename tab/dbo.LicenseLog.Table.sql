USE [Windhaven]
GO
/****** Object:  Table [dbo].[LicenseLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseLog](
	[licenseLogID] [int] IDENTITY(10,1) NOT NULL,
	[licenseID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[policyLine] [tinyint] NULL,
	[licenseState] [dbo].[STATE_Abbrev] NULL,
	[licenseNum] [varchar](50) NULL,
	[effectiveDate] [smalldatetime] NULL,
	[expirationDate] [smalldatetime] NULL,
	[dateAdded] [smalldatetime] NULL,
	[resident] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[noRenew] [tinyint] NULL,
	[licenseCarrier] [dbo].[NAME_Business] NULL,
	[carrierAddressID] [int] NULL,
	[carrierPhone] [dbo].[PHONE_Formatted] NULL,
	[policyLimit] [int] NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [smalldatetime] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LicenseLog] ADD  DEFAULT (getdate()) FOR [dateAdded]
GO
