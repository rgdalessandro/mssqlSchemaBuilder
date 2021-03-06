USE [Windhaven]
GO
/****** Object:  Table [dbo].[FarmsRentedToInsured]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmsRentedToInsured](
	[FarmsRentedToInsuredID] [int] IDENTITY(10,1) NOT NULL,
	[homeownerID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[policyID] [int] NULL,
	[dwellingCount] [int] NULL,
	[address1] [varchar](150) NULL,
	[address2] [varchar](150) NULL,
	[Acres] [int] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_FarmsRentedToInsured] PRIMARY KEY CLUSTERED 
(
	[FarmsRentedToInsuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FarmsRentedToInsured_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FarmsRentedToInsured_policyID] ON [dbo].[FarmsRentedToInsured]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
