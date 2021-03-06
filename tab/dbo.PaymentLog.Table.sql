USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentLog](
	[paymentLogID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[policyID] [int] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[applyLateFee] [tinyint] NULL,
 CONSTRAINT [PK_PaymentLog] PRIMARY KEY CLUSTERED 
(
	[paymentLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentLog_policyID] ON [dbo].[PaymentLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
