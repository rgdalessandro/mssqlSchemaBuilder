USE [Windhaven]
GO
/****** Object:  Table [dbo].[TerminationDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TerminationDetail](
	[terminationDetailID] [int] IDENTITY(10,1) NOT NULL,
	[terminationReasonID] [int] NULL,
	[description] [varchar](255) NULL,
	[noticeToInsured] [tinyint] NULL,
	[noticeDays] [tinyint] NULL,
	[payeeNoticeDays] [tinyint] NULL,
	[proof] [tinyint] NULL,
	[flatCancel] [tinyint] NULL,
	[useProrata] [tinyint] NULL,
	[useShortRate] [tinyint] NULL,
	[useEquity] [tinyint] NULL,
	[stateID] [int] NULL,
	[companyID] [int] NULL,
	[policyType] [int] NULL,
	[policyStatus] [varchar](15) NULL,
	[renewalStatus] [varchar](15) NULL,
	[minDays] [int] NULL,
	[maxDays] [int] NULL,
	[typeCode] [varchar](2) NULL,
	[statementReason] [varchar](3000) NULL,
	[payeeStatementReason] [varchar](3000) NULL,
	[PTSReasonID] [tinyint] NULL,
	[nonRenewal] [tinyint] NULL,
	[allowEdit] [tinyint] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_TerminationDetail] PRIMARY KEY CLUSTERED 
(
	[terminationDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_TerminationDetail_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TerminationDetail_companyID] ON [dbo].[TerminationDetail]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TerminationDetail_pTSReasonID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TerminationDetail_pTSReasonID] ON [dbo].[TerminationDetail]
(
	[PTSReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TerminationDetail_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TerminationDetail_stateID] ON [dbo].[TerminationDetail]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TerminationDetail_terminationReasonID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TerminationDetail_terminationReasonID] ON [dbo].[TerminationDetail]
(
	[terminationReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TerminationDetail] ADD  CONSTRAINT [DF_TerminationDetail_active]  DEFAULT ((1)) FOR [active]
GO
