USE [Windhaven]
GO
/****** Object:  Table [dbo].[BuildingAdditionsAlterationAddresses]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingAdditionsAlterationAddresses](
	[BuildingAdditionsAlterationAddressesID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[limit] [int] NULL,
	[address] [dbo].[ADDRESS] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[cityLimits] [tinyint] NULL,
	[protectionClass] [int] NULL,
	[constructionType] [int] NULL,
	[premiumGroup] [int] NULL,
 CONSTRAINT [PK_BuildingAdditionsAlterationAddresses] PRIMARY KEY CLUSTERED 
(
	[BuildingAdditionsAlterationAddressesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_BuildingAdditionsAlterationAddresses_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_BuildingAdditionsAlterationAddresses_policyID] ON [dbo].[BuildingAdditionsAlterationAddresses]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
