USE [Windhaven]
GO
/****** Object:  Table [dbo].[ZipCounty]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCounty](
	[ZIP] [nvarchar](5) NULL,
	[FIPS] [nvarchar](5) NULL,
	[PERCENTAGE] [float] NULL,
	[COUNT] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZipCounty_ZIP_d148ccfe5b495e0c51b02831ce6bee3e]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZipCounty_ZIP_d148ccfe5b495e0c51b02831ce6bee3e] ON [dbo].[ZipCounty]
(
	[ZIP] ASC
)
INCLUDE ( 	[FIPS]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
