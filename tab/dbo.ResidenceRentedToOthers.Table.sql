USE [Windhaven]
GO
/****** Object:  Table [dbo].[ResidenceRentedToOthers]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidenceRentedToOthers](
	[ResidenceRentedToOthersID] [int] IDENTITY(10,1) NOT NULL,
	[homeownerID] [int] NULL,
	[homeownerDwellingID] [int] NULL,
	[policyID] [int] NULL,
	[dwellingCount] [int] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[familyCount] [int] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_ResidenceRentedToOthers] PRIMARY KEY CLUSTERED 
(
	[ResidenceRentedToOthersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ResidenceRentedToOthers_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ResidenceRentedToOthers_policyID] ON [dbo].[ResidenceRentedToOthers]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
