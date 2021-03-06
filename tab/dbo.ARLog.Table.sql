USE [Windhaven]
GO
/****** Object:  Table [dbo].[ARLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARLog](
	[aRLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[arID] [int] NULL,
	[policyID] [int] NULL,
	[arDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[arType] [tinyint] NULL,
	[isDeposit] [bit] NULL,
	[amountCleared] [dbo].[CURRENCY] NULL,
	[invoiced] [tinyint] NULL,
	[invoiceDate] [smalldatetime] NULL,
	[invoiceEndDate] [smalldatetime] NULL,
	[invoiceID] [int] NULL,
	[arSubType] [tinyint] NULL,
	[policyPremiumID] [int] NULL,
	[accountExpenseID] [int] NULL,
	[installmentNumber] [tinyint] NULL,
	[isFinance] [tinyint] NULL,
	[ARGroupType] [tinyint] NULL,
	[debugNote] [varchar](50) NULL,
 CONSTRAINT [PK_ARLog] PRIMARY KEY CLUSTERED 
(
	[aRLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ARLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ARLog_policyID] ON [dbo].[ARLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ARLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
