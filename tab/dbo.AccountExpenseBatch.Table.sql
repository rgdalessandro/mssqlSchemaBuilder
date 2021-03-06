USE [Windhaven]
GO
/****** Object:  Table [dbo].[AccountExpenseBatch]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountExpenseBatch](
	[accountExpenseBatchID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](100) NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyType] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isProcessed] [tinyint] NULL,
	[bankAccountInfo] [varchar](250) NULL,
	[checkPrintedDate] [smalldatetime] NULL,
	[accountType] [smallint] NULL,
	[checkNumberInfo] [varchar](250) NULL,
	[generateUsersID] [int] NULL,
	[printUsersID] [int] NULL,
 CONSTRAINT [PK_accountExpenseBatch] PRIMARY KEY CLUSTERED 
(
	[accountExpenseBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_accountExpenseBatch_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_accountExpenseBatch_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_ExpenseBatch_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_accountExpenseBatch_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_accountExpenseBatch_printComplete]  DEFAULT ((0)) FOR [isProcessed]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_accountExpenseBatch_checkType]  DEFAULT ((0)) FOR [accountType]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_AccountExpenseBatch_generateUsersID]  DEFAULT ((1)) FOR [generateUsersID]
GO
ALTER TABLE [dbo].[AccountExpenseBatch] ADD  CONSTRAINT [DF_AccountExpenseBatch_printUsersID]  DEFAULT ((1)) FOR [printUsersID]
GO
