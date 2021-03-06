USE [Windhaven]
GO
/****** Object:  Table [dbo].[QuoteLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuoteLog](
	[quoteLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[companyID] [int] NULL,
	[ratingVersion] [money] NULL,
	[ratingVersionID] [int] NULL,
	[premiumTotal] [decimal](19, 2) NULL,
	[policyCharge] [decimal](19, 2) NULL,
	[otherCharge] [decimal](19, 2) NULL,
	[policyProgram] [tinyint] NULL,
	[strPolicyProgram] [varchar](25) NULL,
	[isValid] [tinyint] NULL,
	[notes] [varchar](500) NULL,
	[addDate] [smalldatetime] NULL,
	[quoteStatus] [tinyint] NULL,
	[forceLimitUpdate] [tinyint] NULL,
	[noLimitUpdate] [tinyint] NULL,
	[stateID] [int] NULL,
	[marketingChannelID] [int] NULL,
 CONSTRAINT [PK_QuoteLog] PRIMARY KEY CLUSTERED 
(
	[quoteLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_QuoteLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuoteLog_policyID] ON [dbo].[QuoteLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
