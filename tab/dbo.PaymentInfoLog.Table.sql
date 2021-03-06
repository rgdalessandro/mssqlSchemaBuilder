USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentInfoLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentInfoLog](
	[paymentInfoLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[paymentInfoID] [int] NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[paymentName] [varchar](100) NULL,
	[paymentInfoType] [tinyint] NULL,
	[bankRoutingNum] [varchar](9) NULL,
	[bankName] [varchar](50) NULL,
	[bankAddress1] [dbo].[ADDRESS] NULL,
	[bankAddress2] [dbo].[ADDRESS] NULL,
	[bankCity] [dbo].[CITYCOUNTY] NULL,
	[bankState] [dbo].[STATE_Abbrev] NULL,
	[bankZip] [dbo].[ZIP_Formatted] NULL,
	[bankAcctNum] [varchar](25) NULL,
	[ccType] [tinyint] NULL,
	[ccNumber] [varchar](32) NULL,
	[ccExpDate] [smalldatetime] NULL,
	[ccSecurity1] [varchar](32) NULL,
	[ccSecurity2] [varchar](50) NULL,
	[ccCountry] [tinyint] NULL,
	[ccProcessingCenter] [tinyint] NULL,
	[lastPaymentDate] [smalldatetime] NULL,
	[recurringPayment] [tinyint] NULL,
	[lastPaymentDetailID] [int] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[status] [tinyint] NULL,
	[producerID] [int] NULL,
	[cardID] [varchar](32) NULL,
	[responseText] [varchar](200) NULL,
	[account_token] [varchar](25) NULL,
 CONSTRAINT [PK_PaymentInfoLog] PRIMARY KEY CLUSTERED 
(
	[paymentInfoLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PaymentInfoLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PaymentInfoLog_policyID] ON [dbo].[PaymentInfoLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PaymentInfoLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
