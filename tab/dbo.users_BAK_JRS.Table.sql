USE [Windhaven]
GO
/****** Object:  Table [dbo].[users_BAK_JRS]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_BAK_JRS](
	[usersID] [int] IDENTITY(10,1) NOT NULL,
	[fname] [dbo].[NAME_Business] NOT NULL,
	[middle] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[username] [varchar](35) NULL,
	[password] [varbinary](256) NULL,
	[userDatabase] [varchar](25) NULL,
	[userDSN] [varchar](25) NULL,
	[userType] [int] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[email] [dbo].[EMAIL] NULL,
	[range] [varchar](3000) NULL,
	[lastLogin] [smalldatetime] NULL,
	[adjusterID] [int] NULL,
	[producerID] [int] NULL,
	[active] [tinyint] NOT NULL,
	[signaturePath] [varchar](100) NULL,
	[inProgressPending] [tinyint] NULL,
	[inProgressRenewal] [tinyint] NULL,
	[inProgressBound] [tinyint] NULL,
	[inProgressCancelling] [tinyint] NULL,
	[inProgressExpiring] [tinyint] NULL,
	[inProgressUnderwriting] [tinyint] NULL,
	[isFinanceUser] [tinyint] NULL,
	[isClaimUser] [tinyint] NULL,
	[otherName] [dbo].[NAME_Business] NULL,
	[loginType] [tinyint] NULL,
	[augmented] [tinyint] NULL,
	[producerLicenseAccess] [tinyint] NULL,
	[vendorID] [int] NULL,
	[noLogEntry] [tinyint] NULL,
	[supervisorID] [int] NOT NULL,
	[changePassword] [tinyint] NULL,
	[sqlSID] [varbinary](85) NULL,
	[enPassword] [varchar](150) NULL,
	[lastPasswordChange] [smalldatetime] NULL,
	[isClaimActive] [tinyint] NULL,
	[postRecoveries] [tinyint] NULL,
	[closedPayments] [tinyint] NULL,
	[autoAssign] [tinyint] NULL,
	[assignLevel] [tinyint] NULL,
	[actionIconText] [tinyint] NULL,
	[userTypeID] [int] NULL,
	[permissionUsersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isLoggedIn] [tinyint] NULL,
	[mobile] [dbo].[PHONE_Formatted] NULL,
	[pPhone] [dbo].[PHONE_Formatted] NULL,
	[pEmail] [dbo].[EMAIL] NULL,
	[extension] [int] NULL
) ON [PRIMARY]

GO
