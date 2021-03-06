USE [Windhaven]
GO
/****** Object:  Table [dbo].[CoveragesLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoveragesLog](
	[coveragesLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NOT NULL,
	[changeDate] [datetime] NOT NULL,
	[usersID] [int] NOT NULL,
	[addDate] [datetime] NOT NULL,
	[coveragesID] [int] NOT NULL,
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
	[premiumChange] [decimal](19, 6) NOT NULL,
	[limitDescription] [varchar](700) NULL,
	[initialInsert] [tinyint] NULL,
	[isTempered] [bit] NULL,
 CONSTRAINT [PK_CoveragesLog_coveragesLogID] PRIMARY KEY CLUSTERED 
(
	[coveragesLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CoveragesLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CoveragesLog_policyID] ON [dbo].[CoveragesLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__change__4F7A9FD2]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__addDat__506EC40B]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__limit1__5162E844]  DEFAULT ((0)) FOR [limit1]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__limit2__52570C7D]  DEFAULT ((0)) FOR [limit2]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__limit3__534B30B6]  DEFAULT ((0)) FOR [limit3]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCo__deduct__543F54EF]  DEFAULT ((0)) FOR [deductible]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCov__premi__55337928]  DEFAULT ((0)) FOR [premium]
GO
ALTER TABLE [dbo].[CoveragesLog] ADD  CONSTRAINT [DF__VehicleCov__premi__56279D61]  DEFAULT ((0)) FOR [premiumChange]
GO
