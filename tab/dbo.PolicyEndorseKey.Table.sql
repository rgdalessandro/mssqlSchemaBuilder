USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyEndorseKey]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyEndorseKey](
	[policyEndorseKeyID] [int] IDENTITY(10,1) NOT NULL,
	[policyEndorseID] [int] NULL,
	[keyName] [varchar](100) NULL,
	[oldID] [int] NULL,
	[newID] [int] NULL,
 CONSTRAINT [PK_PolicyEndorseKey] PRIMARY KEY CLUSTERED 
(
	[policyEndorseKeyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PolicyEndorseKey_keyName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseKey_keyName] ON [dbo].[PolicyEndorseKey]
(
	[keyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorseKey_newID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseKey_newID] ON [dbo].[PolicyEndorseKey]
(
	[newID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorseKey_oldID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseKey_oldID] ON [dbo].[PolicyEndorseKey]
(
	[oldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorseKey_policyEndorseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseKey_policyEndorseID] ON [dbo].[PolicyEndorseKey]
(
	[policyEndorseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyEndorseKey] ADD  CONSTRAINT [DF_PolicyEndorseKey_PolicyEndorseID]  DEFAULT (1) FOR [policyEndorseID]
GO
ALTER TABLE [dbo].[PolicyEndorseKey] ADD  CONSTRAINT [DF_PolicyEndorseKey_oldID]  DEFAULT (1) FOR [oldID]
GO
ALTER TABLE [dbo].[PolicyEndorseKey] ADD  CONSTRAINT [DF_PolicyEndorseKey_newID]  DEFAULT (1) FOR [newID]
GO
