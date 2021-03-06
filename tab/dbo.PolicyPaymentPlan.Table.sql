USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyPaymentPlan]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyPaymentPlan](
	[policyPaymentPlanID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[paymentPlanID] [int] NOT NULL,
	[depositAmount] [dbo].[CURRENCY] NULL,
	[installmentAmount] [dbo].[CURRENCY] NULL,
	[firstDueDays] [tinyint] NULL,
	[addDate] [datetime] NULL,
	[usersID] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[modifiedUsersID] [int] NULL,
	[noLogEntry] [bit] NULL,
 CONSTRAINT [PK_PolicyPaymentPlan] PRIMARY KEY CLUSTERED 
(
	[policyPaymentPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyPaymentPlan_coverIndex]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPaymentPlan_coverIndex] ON [dbo].[PolicyPaymentPlan]
(
	[paymentPlanID] ASC,
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPaymentPlan_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPaymentPlan_policyID] ON [dbo].[PolicyPaymentPlan]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((1)) FOR [paymentPlanID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((0)) FOR [depositAmount]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((0)) FOR [installmentAmount]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((0)) FOR [firstDueDays]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT (getdate()) FOR [modifiedDate]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((1)) FOR [modifiedUsersID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlan] ADD  DEFAULT ((0)) FOR [noLogEntry]
GO
