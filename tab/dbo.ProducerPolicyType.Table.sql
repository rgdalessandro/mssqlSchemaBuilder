USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerPolicyType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerPolicyType](
	[producerPolicyTypeID] [int] IDENTITY(10,1) NOT NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyType] [int] NULL,
	[quoteStatus] [tinyint] NULL,
	[endorsementStatus] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[notes] [varchar](5000) NULL,
	[usersID] [int] NULL,
	[paymentStatus] [tinyint] NULL,
	[bindingStatus] [tinyint] NULL,
	[suspenseEndorsement] [tinyint] NULL,
 CONSTRAINT [PK_ProducerPolicyType] PRIMARY KEY CLUSTERED 
(
	[producerPolicyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ProducerPolicyType_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerPolicyType_companyID] ON [dbo].[ProducerPolicyType]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerPolicyType_policyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerPolicyType_policyType] ON [dbo].[ProducerPolicyType]
(
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerPolicyType_producerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerPolicyType_producerID] ON [dbo].[ProducerPolicyType]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerPolicyType_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerPolicyType_stateID] ON [dbo].[ProducerPolicyType]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProducerPolicyType_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerPolicyType_usersID] ON [dbo].[ProducerPolicyType]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_stateID]  DEFAULT (1) FOR [stateID]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_policyType]  DEFAULT (1) FOR [policyType]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_quoteStatus]  DEFAULT (1) FOR [quoteStatus]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_endorsementStatus]  DEFAULT (0) FOR [endorsementStatus]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_paymentStatus]  DEFAULT (0) FOR [paymentStatus]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_bindingStatus]  DEFAULT (0) FOR [bindingStatus]
GO
ALTER TABLE [dbo].[ProducerPolicyType] ADD  CONSTRAINT [DF_ProducerPolicyType_suspenseEndorsement]  DEFAULT ((0)) FOR [suspenseEndorsement]
GO
