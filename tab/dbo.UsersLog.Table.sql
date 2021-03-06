USE [Windhaven]
GO
/****** Object:  Table [dbo].[UsersLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersLog](
	[userLogID] [int] IDENTITY(10,1) NOT NULL,
	[usersID] [int] NULL,
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
	[active] [bit] NOT NULL,
	[signaturePath] [varchar](100) NULL,
	[inProgressPending] [tinyint] NULL,
	[inProgressRenewal] [tinyint] NULL,
	[inProgressBound] [tinyint] NULL,
	[inProgressCancelling] [tinyint] NULL,
	[inProgressExpiring] [tinyint] NULL,
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
	[changeType] [varchar](1) NULL,
	[changeDate] [smalldatetime] NULL,
 CONSTRAINT [PK_UsersLog] PRIMARY KEY CLUSTERED 
(
	[userLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_adjusterID]  DEFAULT (1) FOR [adjusterID]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_active]  DEFAULT (1) FOR [active]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_inProgressPending]  DEFAULT (1) FOR [inProgressPending]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_inProgressRenewal]  DEFAULT (1) FOR [inProgressRenewal]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_inProgressBound]  DEFAULT (1) FOR [inProgressBound]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_inProgressCancelling]  DEFAULT (1) FOR [inProgressCancelling]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_inProgressExpiring]  DEFAULT (1) FOR [inProgressExpiring]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_isFinanceUser]  DEFAULT (0) FOR [isFinanceUser]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_loginType]  DEFAULT (0) FOR [loginType]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_augmented]  DEFAULT (0) FOR [augmented]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_producerLicenseAccess]  DEFAULT (0) FOR [producerLicenseAccess]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_vendorID]  DEFAULT (1) FOR [vendorID]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_supervisorID]  DEFAULT (1) FOR [supervisorID]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_changePassword]  DEFAULT (0) FOR [changePassword]
GO
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UsersLog_changeDate]  DEFAULT (getdate()) FOR [changeDate]
GO
