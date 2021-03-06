USE [Windhaven]
GO
/****** Object:  Table [dbo].[AgencyFee]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgencyFee](
	[agencyFeeID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[agencyFeeDate] [smalldatetime] NULL,
	[amount] [decimal](19, 2) NULL,
	[agencyFeeType] [tinyint] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[paymentID] [int] NULL,
 CONSTRAINT [PK_AgencyFee] PRIMARY KEY CLUSTERED 
(
	[agencyFeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AgencyFee_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyFee_paymentID] ON [dbo].[AgencyFee]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyFee_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyFee_policyID] ON [dbo].[AgencyFee]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AgencyFee_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AgencyFee_usersID] ON [dbo].[AgencyFee]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_agencyFeeDate]  DEFAULT (getdate()) FOR [agencyFeeDate]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_agencyFeeType]  DEFAULT (0) FOR [agencyFeeType]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AgencyFee] ADD  CONSTRAINT [DF_AgencyFee_paymentID]  DEFAULT (1) FOR [paymentID]
GO
