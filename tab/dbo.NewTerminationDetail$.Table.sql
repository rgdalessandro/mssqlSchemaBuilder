USE [Windhaven]
GO
/****** Object:  Table [dbo].[NewTerminationDetail$]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewTerminationDetail$](
	[terminationDetailID] [int] NULL,
	[description] [varchar](255) NULL,
	[policyType] [int] NULL,
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
	[policyStatus] [varchar](15) NULL,
	[renewalStatus] [varchar](15) NULL,
	[minDays] [int] NULL,
	[maxDays] [int] NULL,
	[typeCode] [varchar](2) NULL,
	[statementReason] [varchar](3000) NULL,
	[payeeStatementReason] [varchar](3000) NULL,
	[PTSReasonID] [tinyint] NULL,
	[nonRenewal] [tinyint] NULL,
	[lastModified] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[terminationReasonID] [int] NULL,
	[allowEdit] [tinyint] NULL
) ON [PRIMARY]

GO
