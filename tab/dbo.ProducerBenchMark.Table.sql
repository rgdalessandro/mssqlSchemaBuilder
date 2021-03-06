USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerBenchMark]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerBenchMark](
	[producerBenchmarkID] [int] IDENTITY(10,1) NOT NULL,
	[mainProducerID] [int] NULL,
	[branchID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyType] [tinyint] NULL,
	[benchmarkMonth] [tinyint] NULL,
	[benchmarkYear] [smallint] NULL,
	[totalEarned] [decimal](19, 2) NULL,
	[writtenPremiums] [decimal](19, 2) NULL,
	[lossReserves] [decimal](19, 2) NULL,
	[lossReservesWO] [decimal](19, 2) NULL,
	[expenseReserves] [decimal](19, 2) NULL,
	[expenseReservesWO] [decimal](19, 2) NULL,
	[claimLegalExpenseReserve] [decimal](19, 2) NULL,
	[claimLegalExpenseReserveWO] [decimal](19, 2) NULL,
	[claimRecoveryReserve] [decimal](19, 2) NULL,
	[claimRecoveryReserveWO] [decimal](19, 2) NULL,
	[lossPayments] [decimal](19, 2) NULL,
	[lossPaymentsWO] [decimal](19, 2) NULL,
	[expensePayments] [decimal](19, 2) NULL,
	[expensePaymentsWO] [decimal](19, 2) NULL,
	[claimLegalExpensePaid] [decimal](19, 2) NULL,
	[claimLegalExpensePaidWO] [decimal](19, 2) NULL,
	[recoveries] [decimal](19, 2) NULL,
	[recoveriesWO] [decimal](19, 2) NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ProducerBenchMark_1] PRIMARY KEY CLUSTERED 
(
	[producerBenchmarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_mainProducerID]  DEFAULT ((0)) FOR [mainProducerID]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_branchID]  DEFAULT ((0)) FOR [branchID]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_producerID]  DEFAULT ((0)) FOR [producerID]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_totalEarned]  DEFAULT ((0)) FOR [totalEarned]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_writtenPremiums]  DEFAULT ((0)) FOR [writtenPremiums]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_lossReserves]  DEFAULT ((0)) FOR [lossReserves]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_lossReservesWO]  DEFAULT ((0)) FOR [lossReservesWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_expenseReserves]  DEFAULT ((0)) FOR [expenseReserves]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_expenseReservesWO]  DEFAULT ((0)) FOR [expenseReservesWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimLegalExpenseReserve]  DEFAULT ((0)) FOR [claimLegalExpenseReserve]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimLegalExpenseReserveWO]  DEFAULT ((0)) FOR [claimLegalExpenseReserveWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimRecoveryReserve]  DEFAULT ((0)) FOR [claimRecoveryReserve]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimRecoveryReserveWO]  DEFAULT ((0)) FOR [claimRecoveryReserveWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_lossPayments]  DEFAULT ((0)) FOR [lossPayments]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_lossPaymentsWO]  DEFAULT ((0)) FOR [lossPaymentsWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_expensePayments]  DEFAULT ((0)) FOR [expensePayments]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_expensePaymentsWO]  DEFAULT ((0)) FOR [expensePaymentsWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimLegalExpensePaid]  DEFAULT ((0)) FOR [claimLegalExpensePaid]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_claimLegalExpensePaidWO]  DEFAULT ((0)) FOR [claimLegalExpensePaidWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_recoveries]  DEFAULT ((0)) FOR [recoveries]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_recoveriesWO]  DEFAULT ((0)) FOR [recoveriesWO]
GO
ALTER TABLE [dbo].[ProducerBenchMark] ADD  CONSTRAINT [DF_ProducerBenchMark_addDate_1]  DEFAULT (getdate()) FOR [addDate]
GO
