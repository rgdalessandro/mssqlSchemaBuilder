USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimNumber]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimNumber](
	[claimNumberID] [int] IDENTITY(10,1) NOT NULL,
	[claimNum] [varchar](25) NULL,
	[claimIncidentID] [int] NULL,
	[companyID] [int] NULL,
	[policyID] [int] NULL,
	[status] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[activeDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_ClaimNumber] PRIMARY KEY CLUSTERED 
(
	[claimNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClaimNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNumber] ON [dbo].[ClaimNumber]
(
	[claimNum] ASC,
	[claimNumberID] ASC,
	[claimIncidentID] ASC,
	[policyID] ASC,
	[status] ASC,
	[activeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimNumber_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimNumber_policyID] ON [dbo].[ClaimNumber]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
