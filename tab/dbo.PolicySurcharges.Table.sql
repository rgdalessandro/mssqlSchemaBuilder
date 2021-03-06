USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicySurcharges]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySurcharges](
	[policySurchargesID] [int] IDENTITY(10,1) NOT NULL,
	[surchargeTypesID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[parentID] [int] NOT NULL,
	[parentTable] [varchar](25) NOT NULL,
	[surchargeMask] [bigint] NOT NULL,
	[description] [varchar](200) NOT NULL,
	[type] [varchar](15) NOT NULL,
 CONSTRAINT [PK_PolicySurcharges_policySurchargesID] PRIMARY KEY CLUSTERED 
(
	[policySurchargesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicySurcharges_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicySurcharges_policyID] ON [dbo].[PolicySurcharges]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
