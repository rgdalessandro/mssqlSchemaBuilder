USE [Windhaven]
GO
/****** Object:  Table [dbo].[InsuredLocationsOccupied]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuredLocationsOccupied](
	[InsuredLocationOccupiedID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[systemCoverageTypeID] [int] NOT NULL,
	[Address] [nvarchar](250) NULL,
	[family] [int] NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_InsuredLocationsOccupied] PRIMARY KEY CLUSTERED 
(
	[InsuredLocationOccupiedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_InsuredLocationsOccupied_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_InsuredLocationsOccupied_policyID] ON [dbo].[InsuredLocationsOccupied]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InsuredLocationsOccupied] ADD  CONSTRAINT [DF_InsuredLocationOccupied_homeownerID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[InsuredLocationsOccupied] ADD  CONSTRAINT [DF_InsuredLocationOccupied_homeownerDwellingID]  DEFAULT (1) FOR [systemCoverageTypeID]
GO
ALTER TABLE [dbo].[InsuredLocationsOccupied] ADD  CONSTRAINT [DF_InsuredLocationOccupied_PolicyID]  DEFAULT (1) FOR [Address]
GO
ALTER TABLE [dbo].[InsuredLocationsOccupied] ADD  CONSTRAINT [DF_InsuredLocationOccupied_active]  DEFAULT (0) FOR [active]
GO
