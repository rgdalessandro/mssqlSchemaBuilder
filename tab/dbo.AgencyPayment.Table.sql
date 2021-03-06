USE [Windhaven]
GO
/****** Object:  Table [dbo].[AgencyPayment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgencyPayment](
	[agencyPaymentID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[paymentDate] [smalldatetime] NULL,
	[amount] [decimal](19, 2) NULL,
	[paymentType] [tinyint] NULL,
	[method] [tinyint] NULL,
	[checkNum] [varchar](50) NULL,
	[depositNum] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[financeCompanyID] [int] NULL,
	[paymentID] [int] NULL,
 CONSTRAINT [PK_AgencyPayment] PRIMARY KEY CLUSTERED 
(
	[agencyPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AgencyPayment_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_companyID] ON [dbo].[AgencyPayment]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_depositNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_depositNum] ON [dbo].[AgencyPayment]
(
	[depositNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_financeCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_financeCompanyID] ON [dbo].[AgencyPayment]
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_insuredID] ON [dbo].[AgencyPayment]
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_paymentID] ON [dbo].[AgencyPayment]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_policyID] ON [dbo].[AgencyPayment]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_producerID] ON [dbo].[AgencyPayment]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyPayment_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyPayment_usersID] ON [dbo].[AgencyPayment]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_paymentDate]  DEFAULT (getdate()) FOR [paymentDate]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_paymentType]  DEFAULT (0) FOR [paymentType]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_method]  DEFAULT (0) FOR [method]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_financeCompanyID]  DEFAULT (1) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[AgencyPayment] ADD  CONSTRAINT [DF_AgencyPayment_paymentID]  DEFAULT (1) FOR [paymentID]
GO
