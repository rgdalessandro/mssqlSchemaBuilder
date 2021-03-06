USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyEndorse]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyEndorse](
	[policyEndorseID] [int] IDENTITY(10,1) NOT NULL,
	[originalPolicyID] [int] NULL,
	[tempPolicyID] [int] NULL,
	[status] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[notes] [varchar](255) NULL,
	[usersID] [int] NULL,
	[addDate] [datetime] NULL,
	[originalTPD] [decimal](19, 6) NULL,
	[endorseTPD] [decimal](19, 6) NULL,
	[ratingData] [text] NULL,
	[customData1] [decimal](15, 5) NULL,
	[customData2] [decimal](15, 5) NULL,
	[policyDataUpdate] [text] NULL,
	[policyDataOld] [text] NULL,
	[policyData] [text] NULL,
 CONSTRAINT [PK_PolicyEndorse_policyEndorseID] PRIMARY KEY CLUSTERED 
(
	[policyEndorseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyEndorse_originalPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorse_originalPolicyID] ON [dbo].[PolicyEndorse]
(
	[originalPolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorse_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorse_status] ON [dbo].[PolicyEndorse]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorse_tempPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorse_tempPolicyID] ON [dbo].[PolicyEndorse]
(
	[tempPolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorse_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorse_usersID] ON [dbo].[PolicyEndorse]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_PolicyEndorse_originalPolicyID]  DEFAULT ((0)) FOR [originalPolicyID]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_PolicyEndorse_tempPolicyID]  DEFAULT ((0)) FOR [tempPolicyID]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_PolicyEndorse_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_PolicyEndorse_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_PolicyEndorse_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_dbo_PolicyEndorse_customData1]  DEFAULT ((0)) FOR [customData1]
GO
ALTER TABLE [dbo].[PolicyEndorse] ADD  CONSTRAINT [DF_dbo_PolicyEndorse_customData2]  DEFAULT ((0)) FOR [customData2]
GO
