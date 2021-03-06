USE [Windhaven]
GO
/****** Object:  Table [dbo].[Estimator_MaterialCategory]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estimator_MaterialCategory](
	[estimator_materialCategoryID] [int] IDENTITY(10,1) NOT NULL,
	[category] [varchar](50) NULL,
	[displayStatus] [tinyint] NULL,
 CONSTRAINT [PK_Estimator_MaterialCategory] PRIMARY KEY CLUSTERED 
(
	[estimator_materialCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Estimator_MaterialCategory_displayStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Estimator_MaterialCategory_displayStatus] ON [dbo].[Estimator_MaterialCategory]
(
	[displayStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Estimator_MaterialCategory] ADD  CONSTRAINT [DF_Estimator_MaterialCategory_displayStatus]  DEFAULT (0) FOR [displayStatus]
GO
