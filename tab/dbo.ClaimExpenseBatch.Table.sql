USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimExpenseBatch]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimExpenseBatch](
	[claimExpenseBatchID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](100) NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyType] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[isProcessed] [tinyint] NULL,
	[bankAccountInfo] [varchar](250) NULL,
	[checkPrintedDate] [smalldatetime] NULL,
	[vendorChecks] [tinyint] NULL,
	[isExpense] [tinyint] NULL,
	[checkNumberInfo] [varchar](250) NULL,
	[generateUsersID] [int] NULL,
	[printUsersID] [int] NULL,
 CONSTRAINT [PK_ClaimExpenseBatch] PRIMARY KEY CLUSTERED 
(
	[claimExpenseBatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_printComplete]  DEFAULT ((0)) FOR [isProcessed]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_checkType]  DEFAULT ((0)) FOR [vendorChecks]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_generateUsersID]  DEFAULT ((1)) FOR [generateUsersID]
GO
ALTER TABLE [dbo].[ClaimExpenseBatch] ADD  CONSTRAINT [DF_ClaimExpenseBatch_printUsersID]  DEFAULT ((1)) FOR [printUsersID]
GO
