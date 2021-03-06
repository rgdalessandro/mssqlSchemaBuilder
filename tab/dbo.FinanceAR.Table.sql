USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceAR]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceAR](
	[financeARID] [int] IDENTITY(10,1) NOT NULL,
	[financeContractID] [int] NULL,
	[arDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[arType] [tinyint] NULL,
	[isDeposit] [bit] NOT NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[amountCleared] [dbo].[CURRENCY] NULL,
	[invoiced] [tinyint] NULL,
	[invoiceDate] [smalldatetime] NULL,
	[invoiceEndDate] [smalldatetime] NULL,
	[subPrinciple] [dbo].[CURRENCY] NULL,
	[subInterest] [dbo].[CURRENCY] NULL,
	[subMiscCharge] [dbo].[CURRENCY] NULL,
	[arSubType] [tinyint] NULL,
	[installmentNumber] [tinyint] NULL,
	[invoiceID] [int] NULL,
 CONSTRAINT [PK_FinanceAR] PRIMARY KEY CLUSTERED 
(
	[financeARID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_arDate]  DEFAULT (getdate()) FOR [arDate]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_amount]  DEFAULT (0) FOR [amount]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_arType]  DEFAULT (1) FOR [arType]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_isDeposit]  DEFAULT (0) FOR [isDeposit]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_amountCleared]  DEFAULT (0) FOR [amountCleared]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_invoice]  DEFAULT (0) FOR [invoiced]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_subPremium]  DEFAULT (0) FOR [subPrinciple]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_subInterest]  DEFAULT (0) FOR [subInterest]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_subInterest1]  DEFAULT (0) FOR [subMiscCharge]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_arSubType]  DEFAULT (0) FOR [arSubType]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_installmentNumber]  DEFAULT (0) FOR [installmentNumber]
GO
ALTER TABLE [dbo].[FinanceAR] ADD  CONSTRAINT [DF_FinanceAR_invoiceID]  DEFAULT (1) FOR [invoiceID]
GO
