USE [Windhaven]
GO
/****** Object:  Table [dbo].[ValidateSystem]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidateSystem](
	[validateSystemID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[issueType] [tinyint] NOT NULL,
	[issueSubType] [tinyint] NULL,
	[description] [varchar](200) NULL,
	[addDate] [smalldatetime] NOT NULL,
	[claimIncidentID] [int] NOT NULL,
	[claimID] [int] NOT NULL,
 CONSTRAINT [PK_ValidateSystem] PRIMARY KEY CLUSTERED 
(
	[validateSystemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ValidateSystem_IssueType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ValidateSystem_IssueType] ON [dbo].[ValidateSystem]
(
	[issueType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ValidateSystem_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ValidateSystem_policyID] ON [dbo].[ValidateSystem]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ValidateSystem] ADD  CONSTRAINT [DF_ValidateSystem_issueSubType]  DEFAULT ((0)) FOR [issueSubType]
GO
ALTER TABLE [dbo].[ValidateSystem] ADD  CONSTRAINT [DF_ValidateSystem_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ValidateSystem] ADD  CONSTRAINT [DF__ValidateS__claim__166D0AFF]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ValidateSystem] ADD  CONSTRAINT [DF__ValidateS__claim__17612F38]  DEFAULT ((1)) FOR [claimID]
GO
