USE [Windhaven]
GO
/****** Object:  Table [dbo].[CreditCardTrans]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCardTrans](
	[ccTransID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[usersID] [int] NULL,
	[paymentInfoID] [int] NULL,
	[paymentID] [int] NULL,
	[paymentDetailID] [int] NULL,
	[manualTrans] [tinyint] NULL,
	[paymentName] [varchar](100) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[ccType] [tinyint] NULL,
	[ccNumber] [varchar](50) NULL,
	[ccExpMonth] [varchar](2) NULL,
	[ccExpYear] [varchar](4) NULL,
	[cvv] [varchar](32) NULL,
	[paymentAmount] [dbo].[CURRENCY] NULL,
	[preAuthorized] [tinyint] NULL,
	[preAuthorizeDate] [smalldatetime] NULL,
	[captured] [tinyint] NULL,
	[capturedDate] [smalldatetime] NULL,
	[voided] [tinyint] NULL,
	[voidedDate] [smalldatetime] NULL,
	[voidedUsersID] [int] NULL,
	[credit] [tinyint] NULL,
	[creditDate] [smalldatetime] NULL,
	[creditAmount] [dbo].[CURRENCY] NULL,
	[creditRefNum] [int] NULL,
	[creditUsersID] [int] NULL,
	[processCommand] [varchar](15) NULL,
	[UMStatus] [varchar](25) NULL,
	[UMAuthCode] [varchar](50) NULL,
	[UMRefNum] [varchar](50) NULL,
	[UMBatch] [varchar](50) NULL,
	[UMavsResult] [varchar](150) NULL,
	[UMavsResultCode] [varchar](10) NULL,
	[UMcvv2Result] [varchar](150) NULL,
	[UMcvv2ResultCode] [varchar](10) NULL,
	[UMpasResultCode] [varchar](50) NULL,
	[UMResult] [varchar](50) NULL,
	[UMError] [varchar](150) NULL,
	[UMerrorCode] [varchar](10) NULL,
	[UMacsURL] [varchar](50) NULL,
	[UMpayload] [varchar](50) NULL,
	[UMisDuplicate] [varchar](2) NULL,
	[rawReturn] [varchar](1000) NULL,
	[addDate] [smalldatetime] NULL,
	[isECheck] [tinyint] NULL,
	[SSN] [varchar](15) NULL,
	[DLNum] [varchar](50) NULL,
	[DLState] [varchar](2) NULL,
 CONSTRAINT [PK_CreditCardTrans] PRIMARY KEY CLUSTERED 
(
	[ccTransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CreditCardTrans_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreditCardTrans_policyID] ON [dbo].[CreditCardTrans]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_paymentInfoID]  DEFAULT ((1)) FOR [paymentInfoID]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_paymentID]  DEFAULT ((1)) FOR [paymentID]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_paymentDetailID]  DEFAULT ((1)) FOR [paymentDetailID]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_manualTransID]  DEFAULT ((0)) FOR [manualTrans]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_ccNumber]  DEFAULT ((0)) FOR [ccNumber]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_preAuthorized]  DEFAULT ((99)) FOR [preAuthorized]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_preAuthorizeDate]  DEFAULT (getdate()) FOR [preAuthorizeDate]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_captured]  DEFAULT ((99)) FOR [captured]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_voided]  DEFAULT ((0)) FOR [voided]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_voidedUsersID]  DEFAULT ((1)) FOR [voidedUsersID]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_credit]  DEFAULT ((0)) FOR [credit]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_creditUsersID]  DEFAULT ((1)) FOR [creditUsersID]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CreditCardTrans] ADD  CONSTRAINT [DF_CreditCardTrans_isECheck]  DEFAULT ((0)) FOR [isECheck]
GO
