USE [Windhaven]
GO
/****** Object:  Table [dbo].[LienHolder]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHolder](
	[lienHolderID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[lienName] [dbo].[NAME_Business] NULL,
	[lienNumber] [int] NULL,
	[lienType] [tinyint] NULL,
	[lienAccountNum] [varchar](50) NULL,
	[address1] [varchar](65) NULL,
	[address2] [varchar](65) NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[billingStatus] [tinyint] NULL,
	[lienName2] [dbo].[NAME_Business] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[removedDate] [smalldatetime] NULL,
	[removedUsersID] [int] NULL,
	[lienDetailID] [varchar](50) NULL,
	[mortgageeID] [int] NULL,
 CONSTRAINT [PK_LienHolder] PRIMARY KEY CLUSTERED 
(
	[lienHolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_LienHolder_adddate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienHolder_adddate] ON [dbo].[LienHolder]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LienHolderBillingStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienHolderBillingStatus] ON [dbo].[LienHolder]
(
	[billingStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LienHolderLienName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienHolderLienName] ON [dbo].[LienHolder]
(
	[lienName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LienHolderLienName2]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienHolderLienName2] ON [dbo].[LienHolder]
(
	[lienName2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LienHolderPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LienHolderPolicyID] ON [dbo].[LienHolder]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LienHolder] ADD  CONSTRAINT [DF_LienHolder_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[LienHolder] ADD  CONSTRAINT [DF_LienHolder_billingStatus]  DEFAULT ((0)) FOR [billingStatus]
GO
ALTER TABLE [dbo].[LienHolder] ADD  CONSTRAINT [DF_LienHolder_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[LienHolder] ADD  CONSTRAINT [DF_LienHolder_status]  DEFAULT ((1)) FOR [status]
GO
