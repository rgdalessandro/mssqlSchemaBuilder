USE [Windhaven]
GO
/****** Object:  Table [dbo].[Trans_Log]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trans_Log](
	[trans_LogID] [int] IDENTITY(10,1) NOT NULL,
	[transID] [int] NULL,
	[paymentID] [int] NULL,
	[transDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[transType] [tinyint] NULL,
	[expenseAccountName] [varchar](75) NULL,
	[expenseAccountNum] [varchar](35) NULL,
	[incomeAccountName] [varchar](75) NULL,
	[incomeAccountNum] [varchar](35) NULL,
	[depositNum] [int] NULL,
	[policyID] [int] NULL,
	[isRenewal] [bit] NOT NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[commissionID] [int] NULL,
	[commissionRate] [smallmoney] NULL,
	[transSubType] [tinyint] NULL,
	[noLogEntry] [tinyint] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_Trans_Log] PRIMARY KEY CLUSTERED 
(
	[trans_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Trans_Log_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Trans_Log_policyID] ON [dbo].[Trans_Log]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
