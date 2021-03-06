USE [Windhaven]
GO
/****** Object:  Table [dbo].[TreatyState]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatyState](
	[treatyStateID] [int] IDENTITY(10,1) NOT NULL,
	[treatyID] [int] NOT NULL,
	[stateID] [int] NOT NULL,
 CONSTRAINT [PK_TreatyState] PRIMARY KEY CLUSTERED 
(
	[treatyStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_TreatyStateStateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyStateStateID] ON [dbo].[TreatyState]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatyStateTreatyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyStateTreatyID] ON [dbo].[TreatyState]
(
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TreatyState] ADD  CONSTRAINT [DF_TreatyState_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[TreatyState] ADD  CONSTRAINT [DF_TreatyState_stateID]  DEFAULT (1) FOR [stateID]
GO
