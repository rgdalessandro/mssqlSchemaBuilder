USE [Windhaven]
GO
/****** Object:  Table [dbo].[Estimator_Material]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estimator_Material](
	[estimator_materialID] [int] IDENTITY(10,1) NOT NULL,
	[code] [varchar](5) NULL,
	[description] [varchar](50) NULL,
	[UOM] [varchar](15) NULL,
	[minValue] [float] NULL,
	[maxValue] [float] NULL,
	[displayStatus] [tinyint] NULL,
	[materialCategoryID] [int] NULL,
 CONSTRAINT [PK_Estimator_Material] PRIMARY KEY CLUSTERED 
(
	[estimator_materialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Estimator_Material_description]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Estimator_Material_description] ON [dbo].[Estimator_Material]
(
	[description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Estimator_Material_displayStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Estimator_Material_displayStatus] ON [dbo].[Estimator_Material]
(
	[displayStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Estimator_Material_materialCategoryID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Estimator_Material_materialCategoryID] ON [dbo].[Estimator_Material]
(
	[materialCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Estimator_Material] ADD  CONSTRAINT [DF_Estimator_Material_minValue]  DEFAULT (0) FOR [minValue]
GO
ALTER TABLE [dbo].[Estimator_Material] ADD  CONSTRAINT [DF_Estimator_Material_maxValue]  DEFAULT (0) FOR [maxValue]
GO
ALTER TABLE [dbo].[Estimator_Material] ADD  CONSTRAINT [DF_Estimator_Material_displayStatus]  DEFAULT (0) FOR [displayStatus]
GO
ALTER TABLE [dbo].[Estimator_Material] ADD  CONSTRAINT [DF_Estimator_Material_materialCategoryID]  DEFAULT (1) FOR [materialCategoryID]
GO
