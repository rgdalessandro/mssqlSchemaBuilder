USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_PaymentAttempt]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_PaymentAttempt](
	[IVR_PaymentAttemptID] [int] IDENTITY(10,1) NOT NULL,
	[insuredID] [int] NULL,
	[usersID] [int] NULL,
	[policyHolderLoginID] [int] NULL,
	[timeAtInitiation] [smalldatetime] NULL,
	[isPayment] [tinyint] NULL,
	[message] [varchar](80) NULL,
 CONSTRAINT [PK_IVR_PaymentAttempt] PRIMARY KEY CLUSTERED 
(
	[IVR_PaymentAttemptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_IVR_PaymentAttempt_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PaymentAttempt_insuredID] ON [dbo].[IVR_PaymentAttempt]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_PaymentAttempt_policyHolderLoginID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PaymentAttempt_policyHolderLoginID] ON [dbo].[IVR_PaymentAttempt]
(
	[policyHolderLoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_PaymentAttempt_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_PaymentAttempt_usersID] ON [dbo].[IVR_PaymentAttempt]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_PaymentAttempt] ADD  CONSTRAINT [DF_IVR_PaymentAttempt_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[IVR_PaymentAttempt] ADD  CONSTRAINT [DF_IVR_PaymentAttempt_usersID]  DEFAULT ((1)) FOR [usersID]
GO
