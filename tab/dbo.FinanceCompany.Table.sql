USE [Windhaven]
GO
/****** Object:  Table [dbo].[FinanceCompany]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceCompany](
	[financeCompanyID] [int] IDENTITY(10,1) NOT NULL,
	[companyName] [varchar](65) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[notes] [varchar](1000) NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[depositPercent] [varchar](50) NULL,
	[installmentCount] [varchar](50) NULL,
	[installmentInterval] [tinyint] NULL,
	[serviceCharge] [decimal](19, 2) NULL,
	[APR] [money] NULL,
	[docStamps] [decimal](19, 2) NULL,
	[createContract] [tinyint] NULL,
	[paymentsPayableTo] [varchar](65) NULL,
	[usePaymentAddress] [tinyint] NULL,
	[paymentAddress1] [varchar](35) NULL,
	[paymentAddress2] [varchar](35) NULL,
	[paymentCity] [varchar](35) NULL,
	[paymentState] [char](2) NULL,
	[paymentZip] [varchar](10) NULL,
	[lateFeeMin] [decimal](19, 2) NULL,
	[lateFeeMax] [decimal](19, 2) NULL,
	[lateFeePercent] [money] NULL,
	[lateGracePeriod] [tinyint] NULL,
	[reinstatementFee] [decimal](19, 2) NULL,
	[reinstatementPeriod] [tinyint] NULL,
	[returnedCheckCharge] [decimal](19, 2) NULL,
 CONSTRAINT [PK_FinanceCompany_FinanceCompanyID] PRIMARY KEY CLUSTERED 
(
	[financeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_FinanceCompany_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_FinanceCompany_status] ON [dbo].[FinanceCompany]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_status]  DEFAULT (1) FOR [status]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_installmentInterval]  DEFAULT (1) FOR [installmentInterval]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_serviceCharge]  DEFAULT (0) FOR [serviceCharge]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_APR]  DEFAULT (0) FOR [APR]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_docStamps]  DEFAULT (0) FOR [docStamps]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_createContract]  DEFAULT (0) FOR [createContract]
GO
ALTER TABLE [dbo].[FinanceCompany] ADD  CONSTRAINT [DF_FinanceCompany_usePaymentAddress]  DEFAULT (0) FOR [usePaymentAddress]
GO
