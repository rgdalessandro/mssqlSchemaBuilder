USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountExpenseOther]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountExpenseOther](
	[accountExpenseOtherID] [int] IDENTITY(10,1) NOT NULL,
	[accountExpenseID] [int] NULL,
	[policyID] [int] NULL,
	[paymentID] [int] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[payeeName] [dbo].[NAME_Business] NOT NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[usersID] [int] NULL,
	[addate] [smalldatetime] NULL,
	[payeeAccountNum] [varchar](35) NULL,
 CONSTRAINT [PK_AccountExpenseOther] PRIMARY KEY CLUSTERED 
(
	[accountExpenseOtherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountExpenseOther_accountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseOther_accountExpenseID] ON [dbo].[AccountExpenseOther]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseOther_addate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseOther_addate] ON [dbo].[AccountExpenseOther]
(
	[addate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseOther_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseOther_paymentID] ON [dbo].[AccountExpenseOther]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseOther_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseOther_policyID] ON [dbo].[AccountExpenseOther]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountExpenseOther_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountExpenseOther_usersID] ON [dbo].[AccountExpenseOther]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_accountExpenseID]  DEFAULT ((1)) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_paymentID]  DEFAULT ((1)) FOR [paymentID]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_amount]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountExpenseOther] ADD  CONSTRAINT [DF_AccountExpenseOther_addate]  DEFAULT (getdate()) FOR [addate]
GO
