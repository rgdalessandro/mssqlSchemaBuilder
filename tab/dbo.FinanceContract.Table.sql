USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceContract]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceContract](
	[financeContractID] [int] IDENTITY(10,1) NOT NULL,
	[financeCompanyID] [int] NULL,
	[policyID] [int] NULL,
	[contractNum] [varchar](50) NULL,
	[effectiveDate] [smalldatetime] NULL,
	[cashPrice] [dbo].[CURRENCY] NULL,
	[cashDownPayment] [dbo].[CURRENCY] NULL,
	[depositPercent] [money] NULL,
	[installmentCount] [tinyint] NULL,
	[contractTerm] [tinyint] NULL,
	[installmentInterval] [tinyint] NULL,
	[amountOwed] [dbo].[CURRENCY] NULL,
	[amountPaid] [dbo].[CURRENCY] NULL,
	[status] [tinyint] NULL,
	[serviceCharge] [dbo].[CURRENCY] NULL,
	[APR] [dbo].[CURRENCY] NULL,
	[financePercent] [money] NULL,
	[docStamps] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[noLogEntry] [tinyint] NULL,
	[tempRecord] [tinyint] NULL,
	[boundDate] [smalldatetime] NULL,
	[imported] [tinyint] NULL,
	[isManual] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[cancelledReason] [tinyint] NULL,
	[noRestore] [tinyint] NOT NULL,
	[receivedContract] [tinyint] NOT NULL,
	[downPaymentMethod] [tinyint] NULL,
	[firstPaymentDue] [smalldatetime] NULL,
 CONSTRAINT [PK_FinanceContract] PRIMARY KEY CLUSTERED 
(
	[financeContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceContract_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceContract_policyID] ON [dbo].[FinanceContract]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_effectiveDate]  DEFAULT (getdate()) FOR [effectiveDate]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_cashPrice]  DEFAULT (0) FOR [cashPrice]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_cashDownPayment]  DEFAULT (0) FOR [cashDownPayment]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_depositPercent]  DEFAULT (0) FOR [depositPercent]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_installmentCount]  DEFAULT (0) FOR [installmentCount]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_policyTerm]  DEFAULT (12) FOR [contractTerm]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_installmentInterval]  DEFAULT (1) FOR [installmentInterval]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_amountOwed]  DEFAULT (0) FOR [amountOwed]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_amountPaid]  DEFAULT (0) FOR [amountPaid]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_serviceCharge]  DEFAULT (20) FOR [serviceCharge]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_APR]  DEFAULT (12) FOR [APR]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_fiancePercent]  DEFAULT (0) FOR [financePercent]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_taxRate]  DEFAULT (0.35) FOR [docStamps]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_noLogEntry]  DEFAULT (0) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_tempRecord]  DEFAULT (0) FOR [tempRecord]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_boundDate]  DEFAULT (getdate()) FOR [boundDate]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_imported]  DEFAULT (0) FOR [imported]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_isManual]  DEFAULT (0) FOR [isManual]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_cancelReason]  DEFAULT (0) FOR [cancelledReason]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_noRestore]  DEFAULT (0) FOR [noRestore]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_receivedContract]  DEFAULT (1) FOR [receivedContract]
GO
ALTER TABLE [dbo].[FinanceContract] ADD  CONSTRAINT [DF_FinanceContract_downPaymentMethod]  DEFAULT (0) FOR [downPaymentMethod]
GO
