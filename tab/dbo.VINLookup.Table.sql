USE [Windhaven]
GO
/****** Object:  Table [dbo].[VINLookup]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VINLookup](
	[VINLookupID] [int] NOT NULL,
	[VIN] [varchar](10) NOT NULL,
	[vehYear] [smallint] NULL,
	[make] [varchar](15) NULL,
	[model] [varchar](20) NULL,
	[body] [varchar](20) NULL,
	[performance] [varchar](1) NULL,
	[symbolGroup] [tinyint] NULL,
	[cylinder] [tinyint] NULL,
	[engineSize] [varchar](6) NULL,
	[engineSizeUnit] [varchar](1) NULL,
	[turbo] [varchar](1) NULL,
	[passengerRestraint] [bit] NOT NULL,
	[oneTon] [bit] NOT NULL,
	[fourWheel] [bit] NOT NULL,
	[isForeign] [bit] NOT NULL,
	[diesel] [bit] NOT NULL,
	[MSRPValue] [varchar](6) NULL,
 CONSTRAINT [PK_VINLookup] PRIMARY KEY CLUSTERED 
(
	[VINLookupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_VINLookup]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VINLookup] ON [dbo].[VINLookup]
(
	[VIN] ASC,
	[vehYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
