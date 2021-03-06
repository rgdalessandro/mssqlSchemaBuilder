USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimExpenseTransaction]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimExpenseTransaction](
	[ClaimExpenseTransactionID] [int] IDENTITY(10,1) NOT NULL,
	[ClaimExpenseID] [int] NULL,
	[investigativeFees] [dbo].[CURRENCY] NULL,
	[expertFees] [dbo].[CURRENCY] NULL,
	[mediatorFees] [dbo].[CURRENCY] NULL,
	[pretrialLegalFees] [dbo].[CURRENCY] NULL,
	[trialLegalFees] [dbo].[CURRENCY] NULL,
	[arbitrationFees] [dbo].[CURRENCY] NULL,
	[pretrialAttorneyFees] [dbo].[CURRENCY] NULL,
	[trialAttorneyFees] [dbo].[CURRENCY] NULL,
	[miscellaneousFees] [dbo].[CURRENCY] NULL,
	[amount] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_ClaimExpenseTransaction] PRIMARY KEY CLUSTERED 
(
	[ClaimExpenseTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ClaimExpenseTransaction]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimExpenseTransaction] ON [dbo].[ClaimExpenseTransaction]
(
	[ClaimExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
