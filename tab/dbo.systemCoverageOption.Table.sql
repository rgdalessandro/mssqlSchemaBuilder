USE [Windhaven]
GO
/****** Object:  Table [dbo].[systemCoverageOption]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[systemCoverageOption](
	[systemCoverageOptionID] [int] IDENTITY(10,1) NOT NULL,
	[systemCoverageTypeID] [int] NULL,
	[systemPolicyProgramID] [int] NULL,
	[rate] [money] NULL,
	[perAmount] [money] NULL,
	[minLimit] [dbo].[CURRENCY] NULL,
	[maxLimit] [dbo].[CURRENCY] NULL,
	[displayType] [tinyint] NULL,
	[endorsementList] [varchar](255) NULL,
	[ratingMethod] [tinyint] NULL,
	[displayGroupDec] [tinyint] NULL,
	[displayOrderDec] [tinyint] NULL,
	[ratingOrder] [tinyint] NULL,
 CONSTRAINT [PK_systemCoverageOption] PRIMARY KEY CLUSTERED 
(
	[systemCoverageOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_systemCoverageOption_systemCoverageTypeID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_systemCoverageOption_systemCoverageTypeID] ON [dbo].[systemCoverageOption]
(
	[systemCoverageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_systemCoverageOption_systemPolicyProgramID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_systemCoverageOption_systemPolicyProgramID] ON [dbo].[systemCoverageOption]
(
	[systemPolicyProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_systemCoverageTypeID]  DEFAULT ((1)) FOR [systemCoverageTypeID]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_systemPolicyProgramID]  DEFAULT ((1)) FOR [systemPolicyProgramID]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_rate]  DEFAULT ((0)) FOR [rate]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_perAmount]  DEFAULT ((0)) FOR [perAmount]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_minLimit]  DEFAULT ((0)) FOR [minLimit]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_maxLimit]  DEFAULT ((0)) FOR [maxLimit]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_displayType]  DEFAULT ((1)) FOR [displayType]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_ratingMethod]  DEFAULT ((4)) FOR [ratingMethod]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_displayGroupDec]  DEFAULT ((0)) FOR [displayGroupDec]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_displayOrderDec]  DEFAULT ((0)) FOR [displayOrderDec]
GO
ALTER TABLE [dbo].[systemCoverageOption] ADD  CONSTRAINT [DF_systemCoverageOption_ratingOrder]  DEFAULT ((0)) FOR [ratingOrder]
GO
