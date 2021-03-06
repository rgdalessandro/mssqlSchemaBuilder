USE [Windhaven]
GO
/****** Object:  Table [dbo].[NamedInsuredHouseholds]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamedInsuredHouseholds](
	[NamedInsuredHouseholdsID] [int] IDENTITY(10,1) NOT NULL,
	[name] [dbo].[NAME_Person] NULL,
	[liabilityType] [tinyint] NULL,
	[systemCoverageTypeID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_NamedInsuredHouseholds] PRIMARY KEY CLUSTERED 
(
	[NamedInsuredHouseholdsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_NamedInsuredHouseholds_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NamedInsuredHouseholds_policyID] ON [dbo].[NamedInsuredHouseholds]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NamedInsuredHouseholds] ADD  CONSTRAINT [DF_NamedInsuredHouseholds_systemCoverageTypeID]  DEFAULT (1) FOR [systemCoverageTypeID]
GO
ALTER TABLE [dbo].[NamedInsuredHouseholds] ADD  CONSTRAINT [DF_NamedInsuredHouseholds_policyID]  DEFAULT (1) FOR [policyID]
GO
