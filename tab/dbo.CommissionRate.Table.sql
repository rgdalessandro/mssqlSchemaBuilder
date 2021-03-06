USE [Windhaven]
GO
/****** Object:  Table [dbo].[CommissionRate]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionRate](
	[commissionRateID] [int] IDENTITY(10,1) NOT NULL,
	[policyType] [tinyint] NULL,
	[companyID] [int] NULL,
	[producerID] [int] NULL,
	[stateID] [int] NULL,
	[policyTerm] [tinyint] NULL,
	[description] [varchar](255) NULL,
	[newRate] [smallmoney] NULL,
	[renewalRate] [smallmoney] NULL,
	[newRateEffDate] [smalldatetime] NULL,
	[commissionMethod] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[modifiedDate] [smalldatetime] NULL,
	[modifiedUsersID] [int] NULL,
 CONSTRAINT [PK_CommissionRate_commissionRateID] PRIMARY KEY CLUSTERED 
(
	[commissionRateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CommissionRate_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_addDate] ON [dbo].[CommissionRate]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionRate_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_companyID] ON [dbo].[CommissionRate]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionRate_newRateEffDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_newRateEffDate] ON [dbo].[CommissionRate]
(
	[newRateEffDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionRate_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_producerID] ON [dbo].[CommissionRate]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionRate_productType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_productType] ON [dbo].[CommissionRate]
(
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommissionRate_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CommissionRate_usersID] ON [dbo].[CommissionRate]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_productType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_producerID]  DEFAULT ((0)) FOR [producerID]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_policyTerm]  DEFAULT ((0)) FOR [policyTerm]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_newRate]  DEFAULT ((0)) FOR [newRate]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_renewalRate]  DEFAULT ((1)) FOR [renewalRate]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_newRateEffDate]  DEFAULT (getdate()) FOR [newRateEffDate]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_commissionMethod]  DEFAULT ((0)) FOR [commissionMethod]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_usersID]  DEFAULT ((2)) FOR [usersID]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_modifiedDate]  DEFAULT (getdate()) FOR [modifiedDate]
GO
ALTER TABLE [dbo].[CommissionRate] ADD  CONSTRAINT [DF_CommissionRate_modifiedUsersID]  DEFAULT ((2)) FOR [modifiedUsersID]
GO
