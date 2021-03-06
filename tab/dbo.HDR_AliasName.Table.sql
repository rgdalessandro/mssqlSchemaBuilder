USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_AliasName]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_AliasName](
	[HDR_AliasNameID] [int] IDENTITY(10,1) NOT NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[DPS_NUMBER] [int] NULL,
	[NAM] [varchar](50) NULL,
 CONSTRAINT [PK_HDR_AliasName] PRIMARY KEY CLUSTERED 
(
	[HDR_AliasNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_AliasName_HDRID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_AliasName_HDRID] ON [dbo].[HDR_AliasName]
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_HDR_AliasName_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_AliasName_RequestID] ON [dbo].[HDR_AliasName]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR_AliasName] ADD  CONSTRAINT [DF_HDR_AliasName_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR_AliasName] ADD  CONSTRAINT [DF_HDR_AliasName_HDR_ID]  DEFAULT ((1)) FOR [HDR_ID]
GO
