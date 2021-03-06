USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimUser]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimUser](
	[claimUserID] [int] IDENTITY(1,1) NOT NULL,
	[usersID] [int] NOT NULL,
	[addDate] [smalldatetime] NOT NULL,
	[coverage] [varchar](15) NULL,
	[lossReserveLimit] [dbo].[CURRENCY] NOT NULL,
	[expenseReserveLimit] [dbo].[CURRENCY] NOT NULL,
	[legalReserveLimit] [dbo].[CURRENCY] NOT NULL,
	[lossPaymentLimit] [dbo].[CURRENCY] NOT NULL,
	[expensePaymentLimit] [dbo].[CURRENCY] NOT NULL,
	[active] [tinyint] NOT NULL,
	[policyType] [tinyint] NULL,
 CONSTRAINT [PK_ClaimUser] PRIMARY KEY CLUSTERED 
(
	[claimUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimUserUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimUserUsersID] ON [dbo].[ClaimUser]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_lossReserveLimit]  DEFAULT ((0)) FOR [lossReserveLimit]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_expenseReserveLimit]  DEFAULT ((0)) FOR [expenseReserveLimit]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_legalReserveLimit]  DEFAULT ((0)) FOR [legalReserveLimit]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_lossPaymentLimit]  DEFAULT ((0)) FOR [lossPaymentLimit]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_expensePaymentLimit]  DEFAULT ((0)) FOR [expensePaymentLimit]
GO
ALTER TABLE [dbo].[ClaimUser] ADD  CONSTRAINT [DF_ClaimUser_active]  DEFAULT ((0)) FOR [active]
GO
