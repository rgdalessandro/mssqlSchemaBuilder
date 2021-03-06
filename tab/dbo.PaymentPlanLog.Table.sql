USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentPlanLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentPlanLog](
	[paymentPlanLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[paymentPlanID] [int] NULL,
	[planName] [varchar](50) NULL,
	[policyType] [tinyint] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyTerm] [int] NULL,
	[noticeDays] [tinyint] NULL,
	[invoiceDeposit] [tinyint] NULL,
	[invoiceAP] [tinyint] NULL,
	[installmentCharge] [dbo].[CURRENCY] NULL,
	[renewalFee] [decimal](18, 0) NULL,
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
	[renewalPaymentPlanID] [int] NULL,
	[policyChargeInstallment] [tinyint] NULL,
	[policyChargeDepositPercent] [dbo].[CURRENCY] NULL,
	[requiresEFT] [tinyint] NULL,
	[preferredPlan] [tinyint] NULL,
	[preferredPaymentPlanID] [int] NULL,
	[EFTInstallmentCharge] [dbo].[CURRENCY] NULL,
	[depositDueDays] [tinyint] NULL,
	[isRenewal] [tinyint] NULL,
	[APNoticeDays] [tinyint] NULL,
	[customizable] [tinyint] NULL,
 CONSTRAINT [PK_PaymentPlanLog] PRIMARY KEY CLUSTERED 
(
	[paymentPlanLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PaymentPlanLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[PaymentPlanLog] ADD  DEFAULT ((0)) FOR [APNoticeDays]
GO
