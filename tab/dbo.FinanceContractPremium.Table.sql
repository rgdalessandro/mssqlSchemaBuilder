USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceContractPremium]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceContractPremium](
	[financeContractPremiumID] [int] IDENTITY(10,1) NOT NULL,
	[financeContractID] [int] NULL,
	[changeInCashPrice] [dbo].[CURRENCY] NULL,
	[cashPrice] [dbo].[CURRENCY] NULL,
	[cashDownPayment] [dbo].[CURRENCY] NULL,
	[changeType] [tinyint] NULL,
	[changeDate] [smalldatetime] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[usersID] [int] NULL,
	[contractCashPrice] [dbo].[CURRENCY] NULL,
	[contractCashDownPayment] [dbo].[CURRENCY] NULL,
	[contractUnpaidBalance] [dbo].[CURRENCY] NULL,
	[contractDocStamps] [dbo].[CURRENCY] NULL,
	[contractAmountFinanced] [dbo].[CURRENCY] NULL,
	[contractFinanceCharge] [dbo].[CURRENCY] NULL,
	[contractServiceCharge] [dbo].[CURRENCY] NULL,
	[contractPaymentCount] [tinyint] NULL,
	[contractPaymentAmount] [dbo].[CURRENCY] NULL,
	[contractPaymentTotal] [dbo].[CURRENCY] NULL,
	[contractDeferredPayment] [dbo].[CURRENCY] NULL,
	[contractPrinciple] [dbo].[CURRENCY] NULL,
	[contractInterest] [dbo].[CURRENCY] NULL,
	[contractMiscCharge] [dbo].[CURRENCY] NULL,
	[isManual] [tinyint] NULL,
	[downPaymentMethod] [tinyint] NULL,
 CONSTRAINT [PK_ContractPremium] PRIMARY KEY CLUSTERED 
(
	[financeContractPremiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ContractPremiumChangeDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumChangeDate] ON [dbo].[FinanceContractPremium]
(
	[changeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractPremiumChangeType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumChangeType] ON [dbo].[FinanceContractPremium]
(
	[changeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractPremiumEndorsementDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumEndorsementDate] ON [dbo].[FinanceContractPremium]
(
	[endorsementDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractPremiumFinanceContractID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumFinanceContractID] ON [dbo].[FinanceContractPremium]
(
	[financeContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractPremiumStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumStatus] ON [dbo].[FinanceContractPremium]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContractPremiumUsersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContractPremiumUsersID] ON [dbo].[FinanceContractPremium]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_FinanceContractPremiumDownPaymentMethod]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceContractPremiumDownPaymentMethod] ON [dbo].[FinanceContractPremium]
(
	[downPaymentMethod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_changeInCashPrice]  DEFAULT (0) FOR [changeInCashPrice]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_cashPrice]  DEFAULT (0) FOR [cashPrice]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_cashDownPayment]  DEFAULT (0) FOR [cashDownPayment]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_changeType]  DEFAULT (0) FOR [changeType]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_dropDate]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_endorsementDate]  DEFAULT (0) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA]  DEFAULT (0) FOR [contractCashPrice]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA1]  DEFAULT (0) FOR [contractCashDownPayment]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA2]  DEFAULT (0) FOR [contractUnpaidBalance]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA3]  DEFAULT (0) FOR [contractDocStamps]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA4]  DEFAULT (0) FOR [contractAmountFinanced]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA5]  DEFAULT (0) FOR [contractFinanceCharge]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractFieldA6]  DEFAULT (0) FOR [contractServiceCharge]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractPaymentAmount1]  DEFAULT (0) FOR [contractPaymentCount]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractPaymentAmount]  DEFAULT (0) FOR [contractPaymentAmount]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractTotalOfPayments]  DEFAULT (0) FOR [contractPaymentTotal]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_ContractPremium_contractDeferredPayment]  DEFAULT (0) FOR [contractDeferredPayment]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_contractPrinciple]  DEFAULT (0) FOR [contractPrinciple]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_contractInterest]  DEFAULT (0) FOR [contractInterest]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_contractMiscCharge]  DEFAULT (0) FOR [contractMiscCharge]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_isManual]  DEFAULT (0) FOR [isManual]
GO
ALTER TABLE [dbo].[FinanceContractPremium] ADD  CONSTRAINT [DF_FinanceContractPremium_downPaymentMethod]  DEFAULT (0) FOR [downPaymentMethod]
GO
