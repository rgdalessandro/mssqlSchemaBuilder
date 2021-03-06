USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentPlan]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentPlan](
	[paymentPlanID] [int] IDENTITY(10,1) NOT NULL,
	[planName] [varchar](50) NULL,
	[policyType] [tinyint] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyTerm] [int] NULL,
	[noticeDays] [tinyint] NULL,
	[invoiceDeposit] [tinyint] NULL,
	[invoiceAP] [tinyint] NULL,
	[installmentCharge] [dbo].[CURRENCY] NULL,
	[renewalFee] [decimal](19, 2) NULL,
	[installmentCount] [tinyint] NULL,
	[depositPercent] [dbo].[CURRENCY] NULL,
	[depositAmount] [dbo].[CURRENCY] NULL,
	[APDepositPercent] [dbo].[CURRENCY] NULL,
	[APDepositAmount] [dbo].[CURRENCY] NULL,
	[minAPAmount] [dbo].[CURRENCY] NULL,
	[maxAPAmount] [dbo].[CURRENCY] NULL,
	[lateFee] [dbo].[CURRENCY] NULL,
	[lateGracePeriod] [tinyint] NULL,
	[firstDueDays] [tinyint] NULL,
	[firstDueIncrement] [tinyint] NULL,
	[startDate] [smalldatetime] NULL,
	[stopDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[lastModified] [smalldatetime] NULL,
	[addFeePremium] [dbo].[CURRENCY] NULL,
	[addFeeIncrement] [dbo].[CURRENCY] NULL,
	[addFeePerAmount] [dbo].[CURRENCY] NULL,
	[graceAmount] [tinyint] NULL,
	[installmentIncrement] [tinyint] NULL,
	[locked] [tinyint] NULL,
	[ProRatePolicyFee] [tinyint] NULL,
	[feeInDeposit] [tinyint] NULL,
	[useEquityDating] [tinyint] NULL,
	[renewalDays] [tinyint] NULL,
	[renewalReview] [tinyint] NULL,
	[renewalDepositDays] [smallint] NULL,
	[renewalFirstDueDays] [int] NULL,
	[renewalPaymentPlanID] [int] NOT NULL,
	[policyChargeInstallment] [tinyint] NOT NULL,
	[policyChargeDepositPercent] [dbo].[CURRENCY] NOT NULL,
	[requiresEFT] [tinyint] NULL,
	[preferredPlan] [tinyint] NULL,
	[preferredPaymentPlanID] [int] NULL,
	[EFTInstallmentCharge] [dbo].[CURRENCY] NULL,
	[depositDueDays] [tinyint] NULL,
	[isRenewal] [tinyint] NOT NULL,
	[spreadStateTax] [tinyint] NULL,
	[spreadCityTax] [tinyint] NULL,
	[spreadCountyTax] [tinyint] NULL,
	[active] [tinyint] NOT NULL,
	[APNoticeDays] [tinyint] NULL,
	[customizable] [tinyint] NULL,
	[serviceCharge] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_PaymentPlan] PRIMARY KEY CLUSTERED 
(
	[paymentPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentPlan_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_companyID] ON [dbo].[PaymentPlan]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_effectiveDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_effectiveDate] ON [dbo].[PaymentPlan]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_policyChargeInstallment]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_policyChargeInstallment] ON [dbo].[PaymentPlan]
(
	[policyChargeDepositPercent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_policyTerm]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_policyTerm] ON [dbo].[PaymentPlan]
(
	[policyTerm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_policyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_policyType] ON [dbo].[PaymentPlan]
(
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_stateID] ON [dbo].[PaymentPlan]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlan_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlan_usersID] ON [dbo].[PaymentPlan]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_policyTerm]  DEFAULT ((1)) FOR [policyTerm]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_noticeDays]  DEFAULT ((0)) FOR [noticeDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_invoiceDeposit]  DEFAULT ((0)) FOR [invoiceDeposit]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_invoiceAP]  DEFAULT ((0)) FOR [invoiceAP]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_installmentCharge]  DEFAULT ((0)) FOR [installmentCharge]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_installmentCount]  DEFAULT ((0)) FOR [installmentCount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_depositPercent]  DEFAULT ((0)) FOR [depositPercent]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_depositAmount]  DEFAULT ((0)) FOR [depositAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_APDepositPercent]  DEFAULT ((0)) FOR [APDepositPercent]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_APDepositAmount]  DEFAULT ((0)) FOR [APDepositAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_minAPAmount]  DEFAULT ((0)) FOR [minAPAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_maxAPAmount]  DEFAULT ((0)) FOR [maxAPAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_lateFee]  DEFAULT ((0)) FOR [lateFee]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_lateGracePeriod]  DEFAULT ((0)) FOR [lateGracePeriod]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_firstDueDays]  DEFAULT ((0)) FOR [firstDueDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_firstDueIncrement]  DEFAULT ((0)) FOR [firstDueIncrement]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_dbo_PaymentPlan_stopDate]  DEFAULT (dateadd(year,(5),getdate())) FOR [stopDate]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_dbo_PaymentPlan_lastModified]  DEFAULT (getdate()) FOR [lastModified]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_installmentMax]  DEFAULT ((0)) FOR [addFeePremium]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_installmentIncrement]  DEFAULT ((0)) FOR [addFeeIncrement]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_perInstallmentAmount]  DEFAULT ((0)) FOR [addFeePerAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_graceAmount]  DEFAULT ((0)) FOR [graceAmount]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_installmentIncrement_1]  DEFAULT ((0)) FOR [installmentIncrement]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_locked]  DEFAULT ((0)) FOR [locked]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_ProRatePolicyFee]  DEFAULT ((0)) FOR [ProRatePolicyFee]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_feeInDeposit]  DEFAULT ((0)) FOR [feeInDeposit]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_useCheckEquity]  DEFAULT ((0)) FOR [useEquityDating]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_renewalDays]  DEFAULT ((0)) FOR [renewalDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_renewalDepositDays]  DEFAULT ((0)) FOR [renewalDepositDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_renewalFirstDueDays]  DEFAULT ((0)) FOR [renewalFirstDueDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_renewalPaymentPlanID]  DEFAULT ((1)) FOR [renewalPaymentPlanID]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_policyChargeInstallment]  DEFAULT ((0)) FOR [policyChargeInstallment]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_policyChargeDepositPercent]  DEFAULT ((0)) FOR [policyChargeDepositPercent]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_requiresEFT]  DEFAULT ((0)) FOR [requiresEFT]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_preferredPlan]  DEFAULT ((0)) FOR [preferredPlan]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_dbo_PaymentPlan_preferredPaymentPlanID]  DEFAULT ((0)) FOR [preferredPaymentPlanID]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_EFTInstallmentCharge]  DEFAULT ((0)) FOR [EFTInstallmentCharge]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__isRen__3056FA34]  DEFAULT ((0)) FOR [isRenewal]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__sprea__4AF5E1D7]  DEFAULT ((0)) FOR [spreadStateTax]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__sprea__4BEA0610]  DEFAULT ((0)) FOR [spreadCityTax]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__sprea__4CDE2A49]  DEFAULT ((0)) FOR [spreadCountyTax]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__activ__67280C31]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__APNot__14EED6E1]  DEFAULT ((0)) FOR [APNoticeDays]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF__PaymentPl__custo__1FF67539]  DEFAULT ((0)) FOR [customizable]
GO
ALTER TABLE [dbo].[PaymentPlan] ADD  CONSTRAINT [DF_PaymentPlan_serviceCharge]  DEFAULT ((0)) FOR [serviceCharge]
GO
