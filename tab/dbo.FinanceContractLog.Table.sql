USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceContractLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceContractLog](
	[financeContractLogID] [int] IDENTITY(10,1) NOT NULL,
	[financeContractID] [int] NULL,
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
	[status] [tinyint] NULL,
	[serviceCharge] [dbo].[CURRENCY] NULL,
	[APR] [dbo].[CURRENCY] NULL,
	[financePercent] [money] NULL,
	[docStamps] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[boundDate] [smalldatetime] NULL,
	[imported] [tinyint] NULL,
	[isManual] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[cancelledReason] [tinyint] NULL,
	[downPaymentMethod] [tinyint] NULL,
	[noRestore] [tinyint] NULL,
	[receivedContract] [tinyint] NULL,
	[firstPaymentDue] [smalldatetime] NULL,
 CONSTRAINT [PK_FinanceContractLog] PRIMARY KEY CLUSTERED 
(
	[financeContractLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceContractLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceContractLog_policyID] ON [dbo].[FinanceContractLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContract_financeContractID]  DEFAULT (1) FOR [financeContractID]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_effectiveDate]  DEFAULT (getdate()) FOR [effectiveDate]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_cashPrice]  DEFAULT (0) FOR [cashPrice]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_cashDownPayment]  DEFAULT (0) FOR [cashDownPayment]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_depositPercent]  DEFAULT (0) FOR [depositPercent]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_installmentCount]  DEFAULT (0) FOR [installmentCount]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_policyTerm]  DEFAULT (12) FOR [contractTerm]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_installmentInterval]  DEFAULT (1) FOR [installmentInterval]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_serviceCharge]  DEFAULT (20) FOR [serviceCharge]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_APR]  DEFAULT (12) FOR [APR]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_fiancePercent]  DEFAULT (0) FOR [financePercent]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_taxRate]  DEFAULT (35) FOR [docStamps]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_boundDate]  DEFAULT (getdate()) FOR [boundDate]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_imported]  DEFAULT (0) FOR [imported]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_isManual]  DEFAULT (0) FOR [isManual]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_cancelledReason]  DEFAULT (0) FOR [cancelledReason]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_downPaymentMethod]  DEFAULT (0) FOR [downPaymentMethod]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_noRestore]  DEFAULT (0) FOR [noRestore]
GO
ALTER TABLE [dbo].[FinanceContractLog] ADD  CONSTRAINT [DF_FinanceContractLog_receivedContract]  DEFAULT (0) FOR [receivedContract]
GO
