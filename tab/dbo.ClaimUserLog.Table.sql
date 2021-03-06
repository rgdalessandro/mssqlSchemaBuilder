USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimUserLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimUserLog](
	[claimUserLogID] [int] IDENTITY(1,1) NOT NULL,
	[claimUserID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[logDate] [smalldatetime] NULL,
	[coverage] [varchar](15) NULL,
	[lossReserveLimit] [dbo].[CURRENCY] NULL,
	[expenseReserveLimit] [dbo].[CURRENCY] NULL,
	[legalReserveLimit] [dbo].[CURRENCY] NULL,
	[lossPaymentLimit] [dbo].[CURRENCY] NULL,
	[expensePaymentLimit] [dbo].[CURRENCY] NULL,
	[postRecoveries] [tinyint] NULL,
	[logUserID] [int] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_ClaimUserLog] PRIMARY KEY CLUSTERED 
(
	[claimUserLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimUserLogClaimUserID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimUserLogClaimUserID] ON [dbo].[ClaimUserLog]
(
	[claimUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimUserLogUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimUserLogUsersID] ON [dbo].[ClaimUserLog]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
