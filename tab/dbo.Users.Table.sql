USE [Windhaven]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
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
	[extension] [int] NULL,
 CONSTRAINT [PK_23_Users] PRIMARY KEY CLUSTERED 
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users_active_loginType_usersID_userType_5314320a37dbdd2924e7ab0d16c7e42b]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_active_loginType_usersID_userType_5314320a37dbdd2924e7ab0d16c7e42b] ON [dbo].[Users]
(
	[active] ASC,
	[loginType] ASC,
	[usersID] ASC,
	[userType] ASC
)
INCLUDE ( 	[fname],
	[middle],
	[lname],
	[username]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_adjusterID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_adjusterID] ON [dbo].[Users]
(
	[adjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users_producerID_vendorID_usersID_userTypeID_58cce748aafcb283c32408a16f2569ca]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_producerID_vendorID_usersID_userTypeID_58cce748aafcb283c32408a16f2569ca] ON [dbo].[Users]
(
	[producerID] ASC,
	[vendorID] ASC,
	[usersID] ASC,
	[userTypeID] ASC
)
INCLUDE ( 	[fname],
	[lname],
	[username],
	[userType],
	[lastLogin],
	[active],
	[isFinanceUser],
	[isClaimUser],
	[otherName],
	[loginType]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_vendorID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_vendorID] ON [dbo].[Users]
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersFname]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersFname] ON [dbo].[Users]
(
	[fname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersLname]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersLname] ON [dbo].[Users]
(
	[lname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersLoginType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersLoginType] ON [dbo].[Users]
(
	[loginType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersMiddle]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersMiddle] ON [dbo].[Users]
(
	[middle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersOtherName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersOtherName] ON [dbo].[Users]
(
	[otherName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersProducerID] ON [dbo].[Users]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersProducerLicenseAccess]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersProducerLicenseAccess] ON [dbo].[Users]
(
	[producerLicenseAccess] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UsersUsername]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_UsersUsername] ON [dbo].[Users]
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_adjusterID]  DEFAULT ((1)) FOR [adjusterID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_OLD_Users_producerID]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressPending]  DEFAULT ((1)) FOR [inProgressPending]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressPending1]  DEFAULT ((1)) FOR [inProgressRenewal]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressPending2]  DEFAULT ((1)) FOR [inProgressBound]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressPending3]  DEFAULT ((1)) FOR [inProgressCancelling]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressPending4]  DEFAULT ((1)) FOR [inProgressExpiring]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_inProgressUnderwriting]  DEFAULT ((1)) FOR [inProgressUnderwriting]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isFinanceUser]  DEFAULT ((0)) FOR [isFinanceUser]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_loginType]  DEFAULT ((0)) FOR [loginType]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_augmented]  DEFAULT ((0)) FOR [augmented]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_producerLicenseAccess]  DEFAULT ((0)) FOR [producerLicenseAccess]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_vendorID]  DEFAULT ((1)) FOR [vendorID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_noLogEntry]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_SuperviserID]  DEFAULT ((1)) FOR [supervisorID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_changePassword]  DEFAULT ((0)) FOR [changePassword]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isClaimActive]  DEFAULT ((0)) FOR [isClaimActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_postRecoveries]  DEFAULT ((0)) FOR [postRecoveries]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_closedPayments]  DEFAULT ((0)) FOR [closedPayments]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_autoAssign]  DEFAULT ((0)) FOR [autoAssign]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_assignLevel]  DEFAULT ((0)) FOR [assignLevel]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_actionIconText]  DEFAULT ((1)) FOR [actionIconText]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_permissionUsersID]  DEFAULT ((1)) FOR [permissionUsersID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_isLoggedIn]  DEFAULT ((0)) FOR [isLoggedIn]
GO
