USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEP_Claim]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEP_Claim](
	[cluep_ClaimID] [int] IDENTITY(10,1) NOT NULL,
	[CLUEP_RequestID] [int] NULL,
	[CLUEP_DetailID] [int] NULL,
	[ClaimDate] [varchar](8) NULL,
	[ClaimAgeYears] [int] NULL,
	[ClaimAgeMonths] [int] NULL,
	[ClaimType] [varchar](2) NULL,
	[ClaimDisposition] [varchar](2) NULL,
	[ContributorClaimNum] [varchar](20) NULL,
	[FileNumber] [varchar](16) NULL,
	[Scope] [varchar](1) NULL,
	[AtFault] [varchar](1) NULL,
	[FirstPayDate] [varchar](8) NULL,
	[LastPayDate] [varchar](8) NULL,
	[LocationOfLoss] [varchar](1) NULL,
	[ContributorAMBest] [varchar](5) NULL,
	[DisputeClearanceDate] [varchar](8) NULL,
	[VehicleOperatorIndicator] [varchar](1) NULL,
	[ClaimAssociation] [varchar](1) NULL,
	[PolicyHolderAssociation] [varchar](1) NULL,
	[ClaimAddressMatch] [varchar](1) NULL,
	[ClaimTelelphoneMatch] [varchar](1) NULL,
	[ClaimSSNMatch] [varchar](1) NULL,
	[ClaimDLNumMatch] [varchar](1) NULL,
 CONSTRAINT [PK_CLUEP_Claim] PRIMARY KEY CLUSTERED 
(
	[cluep_ClaimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEP_Claim_ClaimDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_Claim_ClaimDate] ON [dbo].[CLUEP_Claim]
(
	[ClaimDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEP_Claim_CLUEP_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_Claim_CLUEP_RequestID] ON [dbo].[CLUEP_Claim]
(
	[CLUEP_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEP_Claim_DisputeClearanceDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_Claim_DisputeClearanceDate] ON [dbo].[CLUEP_Claim]
(
	[DisputeClearanceDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEP_Claim_FirstPayDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_Claim_FirstPayDate] ON [dbo].[CLUEP_Claim]
(
	[FirstPayDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEP_Claim_LastPayDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_Claim_LastPayDate] ON [dbo].[CLUEP_Claim]
(
	[LastPayDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
