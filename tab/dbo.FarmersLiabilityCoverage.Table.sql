USE [Windhaven]
GO
/****** Object:  Table [dbo].[FarmersLiabilityCoverage]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmersLiabilityCoverage](
	[FarmersLiabilityCoverageID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[systemCoverageTypeID] [int] NULL,
	[Address1] [nvarchar](150) NULL,
	[Acreage] [int] NULL,
	[buildingCount] [int] NULL,
	[Description] [nvarchar](250) NULL,
	[Ownership] [tinyint] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_FarmersLiabilityCoverage] PRIMARY KEY CLUSTERED 
(
	[FarmersLiabilityCoverageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FarmersLiabilityCoverage_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FarmersLiabilityCoverage_policyID] ON [dbo].[FarmersLiabilityCoverage]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
