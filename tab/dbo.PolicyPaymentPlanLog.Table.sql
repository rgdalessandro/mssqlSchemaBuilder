USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyPaymentPlanLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyPaymentPlanLog](
	[policyPaymentPlanLogID] [int] IDENTITY(10,1) NOT NULL,
	[changeUsersID] [int] NULL,
	[dropDate] [datetime] NULL,
	[policyPaymentPlanID] [int] NULL,
	[policyID] [int] NOT NULL,
	[paymentPlanID] [int] NOT NULL,
	[depositAmount] [dbo].[CURRENCY] NULL,
	[installmentAmount] [dbo].[CURRENCY] NULL,
	[firstDueDays] [tinyint] NULL,
 CONSTRAINT [PK_PolicyPaymentPlanLog] PRIMARY KEY CLUSTERED 
(
	[policyPaymentPlanLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyPaymentPlanLog_coverIndex]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPaymentPlanLog_coverIndex] ON [dbo].[PolicyPaymentPlanLog]
(
	[policyPaymentPlanID] ASC,
	[policyID] ASC,
	[paymentPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyPaymentPlanLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyPaymentPlanLog_policyID] ON [dbo].[PolicyPaymentPlanLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((1)) FOR [changeUsersID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((1)) FOR [policyPaymentPlanID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((1)) FOR [paymentPlanID]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((0)) FOR [depositAmount]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((0)) FOR [installmentAmount]
GO
ALTER TABLE [dbo].[PolicyPaymentPlanLog] ADD  DEFAULT ((0)) FOR [firstDueDays]
GO
