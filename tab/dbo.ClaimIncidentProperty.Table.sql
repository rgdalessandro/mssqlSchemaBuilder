USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimIncidentProperty]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimIncidentProperty](
	[claimIncidentPropertyID] [int] IDENTITY(10,1) NOT NULL,
	[claimIncidentID] [int] NULL,
	[propertyAddress1] [varchar](100) NULL,
	[propertyAddress2] [varchar](35) NULL,
	[propertyCity] [varchar](35) NULL,
	[propertyState] [char](2) NULL,
	[propertyZip] [varchar](10) NULL,
 CONSTRAINT [PK_ClaimIncidentProperty] PRIMARY KEY CLUSTERED 
(
	[claimIncidentPropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimIncidentProperty_claimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimIncidentProperty_claimIncidentID] ON [dbo].[ClaimIncidentProperty]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimIncidentProperty] ADD  CONSTRAINT [DF_ClaimIncidentProperty_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
