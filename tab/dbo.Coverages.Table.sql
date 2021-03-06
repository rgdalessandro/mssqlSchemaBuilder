USE [Windhaven]
GO
/****** Object:  Table [dbo].[Coverages]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coverages](
	[coveragesID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[policyType] [int] NOT NULL,
	[objectName] [varchar](75) NOT NULL,
	[objectID] [int] NOT NULL,
	[policyCoveragesID] [int] NOT NULL,
	[coverage] [varchar](10) NULL,
	[limit1] [int] NOT NULL,
	[limit2] [int] NOT NULL,
	[limit3] [int] NOT NULL,
	[deductible] [int] NOT NULL,
	[premium] [decimal](19, 6) NOT NULL,
	[premiumChange] [decimal](18, 6) NULL,
	[limitDescription] [varchar](700) NULL,
	[addDate] [datetime] NOT NULL,
	[initialInsert] [tinyint] NULL,
	[isTempered] [bit] NULL,
 CONSTRAINT [PK_Coverages_coverageID] PRIMARY KEY CLUSTERED 
(
	[coveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Coverages_objectID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_objectID] ON [dbo].[Coverages]
(
	[objectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coverages_objectID_objectName_policyCoveragesID_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_objectID_objectName_policyCoveragesID_Includes] ON [dbo].[Coverages]
(
	[objectID] ASC,
	[objectName] ASC,
	[policyCoveragesID] ASC
)
INCLUDE ( 	[limit1],
	[limit2],
	[limit3],
	[deductible]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coverages_objectName_objectID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_objectName_objectID] ON [dbo].[Coverages]
(
	[objectName] ASC,
	[objectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coverages_objectName_objectID_policyCoveragesID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_objectName_objectID_policyCoveragesID] ON [dbo].[Coverages]
(
	[objectName] ASC,
	[objectID] ASC,
	[policyCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Coverages_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_policyID] ON [dbo].[Coverages]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Coverages_policyID_policyCoveragesID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Coverages_policyID_policyCoveragesID] ON [dbo].[Coverages]
(
	[policyID] ASC,
	[policyCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__limit__48CDA243]  DEFAULT ((0)) FOR [limit1]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__limit__49C1C67C]  DEFAULT ((0)) FOR [limit2]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__limit__4AB5EAB5]  DEFAULT ((0)) FOR [limit3]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__deduc__4BAA0EEE]  DEFAULT ((0)) FOR [deductible]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__premi__4C9E3327]  DEFAULT ((0)) FOR [premium]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__premi__71EFB367]  DEFAULT ((0)) FOR [premiumChange]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF__Coverages__addDa__193E8AB2]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Coverages] ADD  CONSTRAINT [DF_dbo_Coverages_isTempered]  DEFAULT ((0)) FOR [isTempered]
GO
ALTER TABLE [dbo].[Coverages]  WITH CHECK ADD  CONSTRAINT [CK_Coverages_Coverages_policyType] CHECK  (([policyType]<>(0)))
GO
ALTER TABLE [dbo].[Coverages] CHECK CONSTRAINT [CK_Coverages_Coverages_policyType]
GO
ALTER TABLE [dbo].[Coverages]  WITH CHECK ADD  CONSTRAINT [CK_Coverages_objectID] CHECK  (([objectID]<>(0)))
GO
ALTER TABLE [dbo].[Coverages] CHECK CONSTRAINT [CK_Coverages_objectID]
GO
ALTER TABLE [dbo].[Coverages]  WITH CHECK ADD  CONSTRAINT [CK_Coverages_policyCoveragesID] CHECK  (([policyCoveragesID]<>(0)))
GO
ALTER TABLE [dbo].[Coverages] CHECK CONSTRAINT [CK_Coverages_policyCoveragesID]
GO
ALTER TABLE [dbo].[Coverages]  WITH CHECK ADD  CONSTRAINT [CK_Coverages_policyID] CHECK  (([policyID]<>(0)))
GO
ALTER TABLE [dbo].[Coverages] CHECK CONSTRAINT [CK_Coverages_policyID]
GO
