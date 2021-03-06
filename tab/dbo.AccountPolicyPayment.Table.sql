USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountPolicyPayment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountPolicyPayment](
	[accountPolicyPaymentID] [int] IDENTITY(10,1) NOT NULL,
	[accountIncomeID] [int] NULL,
	[policyID] [int] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[isProcessed] [tinyint] NULL,
	[processDate] [smalldatetime] NULL,
	[actionMethod] [tinyint] NULL,
	[note] [varchar](232) NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[accountExpenseID] [int] NULL,
	[amountNetPayment] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_AccountPolicyPayment] PRIMARY KEY CLUSTERED 
(
	[accountPolicyPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AccountPolicyPaymentAccountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentAccountExpenseID] ON [dbo].[AccountPolicyPayment]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentAccountIncomeID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentAccountIncomeID] ON [dbo].[AccountPolicyPayment]
(
	[accountIncomeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentAddDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentAddDate] ON [dbo].[AccountPolicyPayment]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentAmount] ON [dbo].[AccountPolicyPayment]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentIsProcessed]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentIsProcessed] ON [dbo].[AccountPolicyPayment]
(
	[isProcessed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentPolicyID] ON [dbo].[AccountPolicyPayment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentProcessDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentProcessDate] ON [dbo].[AccountPolicyPayment]
(
	[processDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccountPolicyPaymentUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AccountPolicyPaymentUsersID] ON [dbo].[AccountPolicyPayment]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_accountIncomeID]  DEFAULT (1) FOR [accountIncomeID]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_amountTotal]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_isProcessed]  DEFAULT (0) FOR [isProcessed]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_processDate]  DEFAULT (getdate()) FOR [processDate]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_actionMethod]  DEFAULT (0) FOR [actionMethod]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[AccountPolicyPayment] ADD  CONSTRAINT [DF_AccountPolicyPayment_amountPaymentRequest]  DEFAULT (0) FOR [amountNetPayment]
GO
