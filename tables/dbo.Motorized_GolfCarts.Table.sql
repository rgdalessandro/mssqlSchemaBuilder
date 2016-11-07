USE [Windhaven]
GO
/****** Object:  Table [dbo].[Motorized_GolfCarts]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motorized_GolfCarts](
	[Motorized_GolfCartID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[systemCoverageTypeID] [int] NULL,
	[homeownerDwellingCoverageID] [int] NULL,
	[limit] [int] NULL,
	[TypeDescription] [nvarchar](100) NULL,
	[TypeID] [int] NULL,
	[MPH] [int] NULL,
	[HP] [int] NULL,
	[description] [nvarchar](150) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_Motorized_GolfCarts] PRIMARY KEY CLUSTERED 
(
	[Motorized_GolfCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Motorized_GolfCarts_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Motorized_GolfCarts_policyID] ON [dbo].[Motorized_GolfCarts]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
