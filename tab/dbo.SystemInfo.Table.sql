USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemInfo]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemInfo](
	[webAdminColor] [varchar](25) NULL,
	[webUnderColor] [varchar](25) NULL,
	[webUserColor] [varchar](25) NULL,
	[webProducerColor] [varchar](25) NULL,
	[webAdjusterColor] [varchar](25) NULL,
	[currentDepositNum] [int] NULL,
	[stopPayments] [bit] NOT NULL,
	[qbClaims] [varchar](25) NULL,
	[qbGeneral] [varchar](25) NULL,
	[qbCommissions] [varchar](25) NULL,
	[qbDeposit] [varchar](25) NULL,
	[qbPolicyFees] [varchar](25) NULL,
	[qbPolicyFees_I] [varchar](25) NULL,
	[qbServiceCharges] [varchar](25) NULL,
	[qbServiceCharges_I] [varchar](25) NULL,
	[qbPremiums] [varchar](25) NULL,
	[qbPremiums_I] [varchar](25) NULL,
	[qbCommissions_E] [varchar](25) NULL,
	[qbClaims_E] [varchar](25) NULL,
	[qbPolicyCharges] [varchar](25) NULL,
	[qbPolicyCharges_I] [varchar](25) NULL,
	[qbMiscFees] [varchar](25) NULL,
	[qbMiscFees_I] [varchar](25) NULL,
	[lastInvoiceDate] [smalldatetime] NULL,
	[companyName] [varchar](100) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[paymentPhone] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[link] [varchar](50) NULL,
	[lateGracePeriod] [tinyint] NULL,
	[reinstatementPeriod] [tinyint] NULL,
	[naicCode] [varchar](25) NULL,
	[notes] [varchar](3000) NULL,
	[depositGrace] [decimal](19, 2) NULL,
	[invoiceDueDate] [tinyint] NULL,
	[invoiceAdvance] [tinyint] NULL,
	[filingBatchNum] [smallint] NULL,
	[patriotCommissionRate] [smallmoney] NULL,
	[presidentialCommissionRate] [smallmoney] NULL,
	[qbRefunds] [varchar](25) NULL,
	[qbRefunds_E] [varchar](25) NULL,
	[bindingCutoff] [tinyint] NULL,
	[bindingCutoffReason] [varchar](500) NULL,
	[billMethods] [tinyint] NULL,
	[postProducerAdj] [tinyint] NULL,
	[allowRecurPayment] [tinyint] NULL,
	[installmentGraceAmount] [dbo].[CURRENCY] NULL,
	[invoicePeriod] [tinyint] NULL,
	[invoiceDeposit] [tinyint] NULL,
	[invoiceAP] [tinyint] NULL,
	[stopQuotes] [tinyint] NULL,
	[policyHeaderControl] [tinyint] NOT NULL,
	[claimsHeaderControl] [tinyint] NOT NULL,
	[claimsPayableTo] [varchar](65) NULL,
	[claimsPaymentAddress1] [varchar](35) NULL,
	[claimsPaymentAddress2] [varchar](35) NULL,
	[claimsPaymentCity] [varchar](35) NULL,
	[claimsPaymentState] [char](2) NULL,
	[claimsPaymentZip] [varchar](10) NULL,
	[claimsDepartmentPhone] [varchar](22) NULL,
	[claimsDepartmentPhone2] [varchar](22) NULL,
	[claimsDepartmentFax] [varchar](22) NULL,
	[claimsPaymentTollFree] [varchar](22) NULL,
	[claimsPaymentPhone] [varchar](22) NULL,
	[claimsDepartmentEmail] [varchar](50) NULL,
	[logoFile] [varchar](50) NULL,
	[HDR_status] [tinyint] NULL,
	[systemInfoID] [int] IDENTITY(10,1) NOT NULL,
	[isShutdown] [tinyint] NULL,
	[listAllowedUsersID] [varchar](250) NULL,
	[shutDownStart] [datetime] NULL,
	[shutDownEnd] [datetime] NULL,
	[shutDownReason] [varchar](200) NULL,
	[shutDownScheduleName] [varchar](30) NULL,
	[restartScheduleName] [varchar](30) NULL,
	[allowDraft] [tinyint] NULL,
	[MVR_Status] [tinyint] NULL,
	[MVR_Type] [tinyint] NULL,
	[passwordInterval] [int] NULL,
	[passwordReuseInterval] [int] NULL,
	[setAdjusterAtIncident] [tinyint] NULL,
	[invoiceText] [varchar](1000) NULL,
	[ACEMessaging] [varchar](1000) NULL,
	[autoAssignByFeature] [tinyint] NULL,
	[pswd_requireSpChar] [tinyint] NULL,
	[shortRateFactor] [money] NULL,
	[pswd_requireNumber] [tinyint] NULL,
	[pswd_minLength] [tinyint] NULL,
	[pswd_maxLength] [tinyint] NULL,
	[usePrimorisCC] [tinyint] NULL,
	[allowRecurringCC] [tinyint] NULL,
	[credit_Status] [int] NULL,
	[documentDrive] [varchar](5) NULL,
	[autoQueueBatch] [tinyint] NULL,
	[autoForceBatch] [tinyint] NULL,
	[eSignBeforePay] [tinyint] NULL,
	[useRecoveryReserve] [tinyint] NULL,
	[useEmessaging] [tinyint] NULL,
	[rackSpaceCloudUser] [varchar](50) NULL,
	[rackSpaceCloudKey] [varchar](125) NULL,
	[batchStorageMethod] [varchar](25) NULL,
	[batchStorageInfo] [varchar](25) NULL,
	[usePrimorisEcheck] [tinyint] NULL,
	[allowRecurringEcheck] [tinyint] NULL,
	[allowFinancing] [tinyint] NULL,
	[appUrl] [varchar](50) NULL,
	[zp4Url] [varchar](50) NULL,
	[APLUS_Status] [tinyint] NULL,
 CONSTRAINT [PK_SystemInfo] PRIMARY KEY CLUSTERED 
(
	[systemInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_SystemInfo_MVR_Type]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemInfo_MVR_Type] ON [dbo].[SystemInfo]
(
	[MVR_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_currentDepositNum]  DEFAULT (1) FOR [currentDepositNum]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_stopPayments]  DEFAULT (0) FOR [stopPayments]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_lateGracePeriod]  DEFAULT (0) FOR [lateGracePeriod]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_reinstatementPeriod]  DEFAULT (0) FOR [reinstatementPeriod]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_depositGrace]  DEFAULT (0) FOR [depositGrace]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_filingBatchNum]  DEFAULT (0) FOR [filingBatchNum]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_billMethods]  DEFAULT (0) FOR [billMethods]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_postProducerAdj]  DEFAULT (0) FOR [postProducerAdj]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_allowRecurPayment]  DEFAULT (0) FOR [allowRecurPayment]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_installmentGraceAmount]  DEFAULT (0) FOR [installmentGraceAmount]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_invoicePeriod]  DEFAULT (0) FOR [invoicePeriod]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_invoiceDeposit]  DEFAULT (0) FOR [invoiceDeposit]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_invoiceAP]  DEFAULT (0) FOR [invoiceAP]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_stopQuotes]  DEFAULT (0) FOR [stopQuotes]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_policyHeaderControl]  DEFAULT (0) FOR [policyHeaderControl]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_claimsHeaderControl]  DEFAULT (0) FOR [claimsHeaderControl]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_isShutdown]  DEFAULT (0) FOR [isShutdown]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_allowDraft]  DEFAULT (0) FOR [allowDraft]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_MVR_Status]  DEFAULT (0) FOR [MVR_Status]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_MVR_Type]  DEFAULT (0) FOR [MVR_Type]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_setAdjusterAtIncident]  DEFAULT (0) FOR [setAdjusterAtIncident]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_autoAssignByFeature]  DEFAULT (0) FOR [autoAssignByFeature]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_shortRateFactor]  DEFAULT ((0.9)) FOR [shortRateFactor]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_usePrimorisCC]  DEFAULT ((0)) FOR [usePrimorisCC]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_allowRecurringCC]  DEFAULT ((0)) FOR [allowRecurringCC]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF__SystemInf__docum__4BB4FBE6]  DEFAULT ('D') FOR [documentDrive]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_eSignBeforePay]  DEFAULT ((0)) FOR [eSignBeforePay]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [useRecoveryReserve]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [useEmessaging]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [usePrimorisEcheck]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [allowRecurringEcheck]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [allowFinancing]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  DEFAULT ((0)) FOR [APLUS_Status]
GO
