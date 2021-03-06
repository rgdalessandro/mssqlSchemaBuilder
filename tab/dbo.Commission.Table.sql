USE [Windhaven]
GO
/****** Object:  Table [dbo].[Commission]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commission](
	[commissionID] [int] IDENTITY(10,1) NOT NULL,
	[producerID] [int] NULL,
	[totalPremiums] [dbo].[CURRENCY] NULL,
	[commissionPaid] [dbo].[CURRENCY] NULL,
	[paidDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
	[commissionType] [tinyint] NULL,
	[usersID] [int] NULL,
	[note] [varchar](1000) NULL,
	[displayType] [tinyint] NULL,
	[commissionRate] [smallmoney] NULL,
	[accountExpenseID] [int] NULL,
	[policyID] [int] NULL,
	[paymentID] [int] NULL,
 CONSTRAINT [PK_Commission] PRIMARY KEY CLUSTERED 
(
	[commissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Commission_accountExpenseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Commission_accountExpenseID] ON [dbo].[Commission]
(
	[accountExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Commission_paidDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Commission_paidDate] ON [dbo].[Commission]
(
	[paidDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Commission_totalPremiums]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Commission_totalPremiums] ON [dbo].[Commission]
(
	[totalPremiums] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionDisplayType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionDisplayType] ON [dbo].[Commission]
(
	[displayType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionPolicyID] ON [dbo].[Commission]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionProducerID] ON [dbo].[Commission]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_OLD_CommHist_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_OLD_CommHist_grossprem]  DEFAULT (0) FOR [totalPremiums]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_OLD_CommHist_commissionRate]  DEFAULT (0) FOR [commissionPaid]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_OLD_CommHist_postDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_commissionType]  DEFAULT (0) FOR [commissionType]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_displayType]  DEFAULT (1) FOR [displayType]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_commissionRate]  DEFAULT (0) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_accountExpenseID]  DEFAULT (1) FOR [accountExpenseID]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Commission] ADD  CONSTRAINT [DF_Commission_paymentID]  DEFAULT (1) FOR [paymentID]
GO
