USE [Windhaven]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposit](
	[depositID] [int] IDENTITY(10,1) NOT NULL,
	[depositNum] [int] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[numOfPayments] [int] NULL,
	[startUserID] [int] NULL,
	[endUserID] [int] NULL,
	[exportDate] [smalldatetime] NULL,
	[stopDate] [smalldatetime] NULL,
	[stopUsersID] [int] NULL,
 CONSTRAINT [PK_Deposit] PRIMARY KEY CLUSTERED 
(
	[depositID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DepositAmount]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositAmount] ON [dbo].[Deposit]
(
	[amount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositDepositNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositDepositNum] ON [dbo].[Deposit]
(
	[depositNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositEndDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositEndDate] ON [dbo].[Deposit]
(
	[endDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositNumOfPayments]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositNumOfPayments] ON [dbo].[Deposit]
(
	[numOfPayments] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositStartDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositStartDate] ON [dbo].[Deposit]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_depositNum]  DEFAULT (0) FOR [depositNum]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_startDate]  DEFAULT (getdate()) FOR [startDate]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_numOfPayments]  DEFAULT (0) FOR [numOfPayments]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_startUserID]  DEFAULT (1) FOR [startUserID]
GO
ALTER TABLE [dbo].[Deposit] ADD  CONSTRAINT [DF_Deposit_endUserID]  DEFAULT (1) FOR [endUserID]
GO
