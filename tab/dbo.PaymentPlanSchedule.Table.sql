USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentPlanSchedule]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentPlanSchedule](
	[PaymentPlanScheduleID] [int] IDENTITY(10,1) NOT FOR REPLICATION NOT NULL,
	[paymentPlanID] [int] NOT NULL,
	[installmentNumber] [tinyint] NOT NULL,
	[installmentInterval] [smallint] NOT NULL,
	[paymentPercent] [dbo].[CURRENCY] NOT NULL,
	[paymentAmount] [dbo].[CURRENCY] NOT NULL,
	[noticeDays] [tinyint] NOT NULL,
	[isDeposit] [tinyint] NOT NULL,
	[agentProcessFee] [decimal](19, 2) NULL,
	[ATPFFee] [decimal](19, 6) NULL,
	[agentEndorsementFee] [decimal](19, 2) NULL,
	[agentRenewalFee] [decimal](19, 2) NULL,
	[policyFeeAmount] [decimal](19, 6) NULL,
	[policyFeeRate] [dbo].[CURRENCY] NULL,
	[installmentIntervalType] [tinyint] NULL,
	[policyChargeInstallment] [tinyint] NULL,
 CONSTRAINT [PK_PaymentPlanSchedule] PRIMARY KEY CLUSTERED 
(
	[PaymentPlanScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentPlanSchedule_installmentNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlanSchedule_installmentNumber] ON [dbo].[PaymentPlanSchedule]
(
	[installmentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PaymentPlanSchedule_paymentPlanID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentPlanSchedule_paymentPlanID] ON [dbo].[PaymentPlanSchedule]
(
	[paymentPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_paymentPlanID]  DEFAULT ((1)) FOR [paymentPlanID]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_installmentNumber]  DEFAULT ((0)) FOR [installmentNumber]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_installmentInterval]  DEFAULT ((0)) FOR [installmentInterval]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_paymentPercent]  DEFAULT ((0)) FOR [paymentPercent]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_paymentAmount]  DEFAULT ((0)) FOR [paymentAmount]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_noticeDays]  DEFAULT ((0)) FOR [noticeDays]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_isDeposit]  DEFAULT ((0)) FOR [isDeposit]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_agentFee]  DEFAULT ((0)) FOR [agentProcessFee]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_ATPFFee]  DEFAULT ((0)) FOR [ATPFFee]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_policyFeeAmount]  DEFAULT ((0)) FOR [policyFeeAmount]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  DEFAULT ((0)) FOR [policyFeeRate]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  DEFAULT ((1)) FOR [installmentIntervalType]
GO
ALTER TABLE [dbo].[PaymentPlanSchedule] ADD  CONSTRAINT [DF_PaymentPlanSchedule_policyChargeInstallment]  DEFAULT ((0)) FOR [policyChargeInstallment]
GO
