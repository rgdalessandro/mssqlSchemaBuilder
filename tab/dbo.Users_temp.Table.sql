USE [Windhaven]
GO
/****** Object:  Table [dbo].[Users_temp]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_temp](
	[usersID] [float] NULL,
	[fname] [nvarchar](255) NULL,
	[middle] [nvarchar](255) NULL,
	[lname] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[userDatabase] [nvarchar](255) NULL,
	[userDSN] [nvarchar](255) NULL,
	[userTypeID] [float] NULL,
	[phone] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[range] [nvarchar](255) NULL,
	[lastLogin] [datetime] NULL,
	[adjusterID] [float] NULL,
	[producerID] [float] NULL,
	[active] [float] NULL,
	[signaturePath] [nvarchar](255) NULL,
	[inProgressPending] [float] NULL,
	[inProgressRenewal] [float] NULL,
	[inProgressBound] [float] NULL,
	[inProgressCancelling] [float] NULL,
	[inProgressExpiring] [float] NULL,
	[inProgressUnBound] [float] NULL,
	[isFinanceUser] [float] NULL,
	[isClaimUser] [float] NULL,
	[otherName] [nvarchar](255) NULL,
	[loginType] [float] NULL,
	[augmented] [float] NULL,
	[producerLicenseAccess] [float] NULL,
	[vendorID] [float] NULL,
	[noLogEntry] [float] NULL,
	[supervisorID] [float] NULL,
	[changePassword] [float] NULL,
	[sqlSID] [nvarchar](255) NULL,
	[postrecoveries] [float] NULL,
	[closedpayments] [float] NULL,
	[isClaimActive] [float] NULL,
	[fax] [nvarchar](255) NULL,
	[title] [nvarchar](255) NULL,
	[isClaimTeamLeader] [float] NULL
) ON [PRIMARY]

GO
