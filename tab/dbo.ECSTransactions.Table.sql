USE [Windhaven]
GO
/****** Object:  Table [dbo].[ECSTransactions]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ECSTransactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[policyID] [int] NULL,
	[invoiceID] [int] NULL,
	[paymentID] [int] NULL,
	[userID] [int] NULL,
	[transactionID] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[payment] [varchar](15) NULL,
	[amount] [smallmoney] NULL,
	[ccNumber] [varchar](4) NULL,
	[ccExp] [varchar](4) NULL,
	[checkaba] [varchar](9) NULL,
	[checkaccount] [varchar](25) NULL,
	[account_type] [varchar](15) NULL,
	[payment_name] [varchar](100) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip] [varchar](10) NULL,
	[country] [varchar](50) NULL,
	[phone] [varchar](15) NULL,
	[fax] [varchar](15) NULL,
	[email] [varchar](100) NULL,
	[customer_vault] [varchar](15) NULL,
	[customer_vault_id] [varchar](25) NULL,
	[ipAddress] [varchar](15) NULL,
	[response] [tinyint] NULL,
	[responseText] [varchar](250) NULL,
	[response_code] [smallint] NULL,
	[authCode] [varchar](50) NULL,
	[avsResponse] [varchar](50) NULL,
	[cvvResponse] [varchar](50) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_ECSTransactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ECSTransactions] ADD  CONSTRAINT [DF_ECSTransactions_amount]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[ECSTransactions] ADD  CONSTRAINT [DF_ECSTransactions_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ECSTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ECSTransactions_Invoice] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoice] ([invoiceID])
GO
ALTER TABLE [dbo].[ECSTransactions] CHECK CONSTRAINT [FK_ECSTransactions_Invoice]
GO
ALTER TABLE [dbo].[ECSTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ECSTransactions_Payment] FOREIGN KEY([paymentID])
REFERENCES [dbo].[Payment] ([paymentID])
GO
ALTER TABLE [dbo].[ECSTransactions] CHECK CONSTRAINT [FK_ECSTransactions_Payment]
GO
ALTER TABLE [dbo].[ECSTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ECSTransactions_Policy] FOREIGN KEY([policyID])
REFERENCES [dbo].[Policy] ([policyID])
GO
ALTER TABLE [dbo].[ECSTransactions] CHECK CONSTRAINT [FK_ECSTransactions_Policy]
GO
ALTER TABLE [dbo].[ECSTransactions]  WITH CHECK ADD  CONSTRAINT [FK_ECSTransactions_Users] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([usersID])
GO
ALTER TABLE [dbo].[ECSTransactions] CHECK CONSTRAINT [FK_ECSTransactions_Users]
GO
