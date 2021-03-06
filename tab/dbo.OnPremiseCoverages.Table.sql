USE [Windhaven]
GO
/****** Object:  Table [dbo].[OnPremiseCoverages]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnPremiseCoverages](
	[OnPremiseCoveragesID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[systemCoverageTypeID] [int] NULL,
	[limit] [int] NULL,
	[status] [tinyint] NULL,
	[description] [nvarchar](150) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_OnPremiseCoverages] PRIMARY KEY CLUSTERED 
(
	[OnPremiseCoveragesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_OnPremiseCoverages_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_OnPremiseCoverages_policyID] ON [dbo].[OnPremiseCoverages]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
