USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyImagesIndexAllTemp]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyImagesIndexAllTemp](
	[imgFileNameID] [int] IDENTITY(1,1) NOT NULL,
	[imgFileName] [varchar](50) NULL,
	[policyID] [nvarchar](50) NULL,
 CONSTRAINT [PK_PolicyImagesIndexAllTemp] PRIMARY KEY CLUSTERED 
(
	[imgFileNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyID] ON [dbo].[PolicyImagesIndexAllTemp]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
