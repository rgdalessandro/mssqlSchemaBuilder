USE [Windhaven]
GO
/****** Object:  Table [dbo].[Trans]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans](
	[transID] [int] IDENTITY(10,1) NOT NULL,
	[paymentID] [int] NULL,
	[transDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[transType] [tinyint] NULL,
	[expenseAccountName] [varchar](75) NULL,
	[expenseAccountNum] [varchar](35) NULL,
	[incomeAccountName] [varchar](75) NULL,
	[incomeAccountNum] [varchar](35) NULL,
	[depositNum] [int] NULL,
	[policyID] [int] NULL,
	[isRenewal] [bit] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[commissionID] [int] NULL,
	[commissionRate] [smallmoney] NULL,
	[transSubType] [tinyint] NULL,
	[noLogEntry] [tinyint] NULL,
 CONSTRAINT [PK_Trans] PRIMARY KEY CLUSTERED 
(
	[transID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Trans_transType_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Trans_transType_Includes] ON [dbo].[Trans]
(
	[transType] ASC
)
INCLUDE ( 	[amount],
	[policyID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TransAccount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransAccount] ON [dbo].[Trans]
(
	[expenseAccountName] ASC,
	[expenseAccountNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransAmount] ON [dbo].[Trans]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransCommissionID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransCommissionID] ON [dbo].[Trans]
(
	[commissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransDepositNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransDepositNum] ON [dbo].[Trans]
(
	[depositNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransInsuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransInsuredID] ON [dbo].[Trans]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransPaymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransPaymentID] ON [dbo].[Trans]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransPolicyID] ON [dbo].[Trans]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransProducerID] ON [dbo].[Trans]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransTransDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransTransDate] ON [dbo].[Trans]
(
	[transDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransTransSubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransTransSubType] ON [dbo].[Trans]
(
	[transSubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_paymentID]  DEFAULT (1) FOR [paymentID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_transDate]  DEFAULT (getdate()) FOR [transDate]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_transType]  DEFAULT (1) FOR [transType]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_isRenewal]  DEFAULT (0) FOR [isRenewal]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_commissionID]  DEFAULT (1) FOR [commissionID]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_commissionRate]  DEFAULT (0) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_transSubType]  DEFAULT (0) FOR [transSubType]
GO
ALTER TABLE [dbo].[Trans] ADD  CONSTRAINT [DF_Trans_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
