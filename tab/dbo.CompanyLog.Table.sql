USE [Windhaven]
GO
/****** Object:  Table [dbo].[CompanyLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyLog](
	[companyLogID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[companyName] [varchar](65) NULL,
	[carrierName] [varchar](65) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[paymentPhone] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[paymentsPayableTo] [varchar](65) NULL,
	[usePaymentAddress] [bit] NULL,
	[paymentAddress1] [varchar](35) NULL,
	[paymentAddress2] [varchar](35) NULL,
	[paymentCity] [varchar](35) NULL,
	[paymentState] [char](2) NULL,
	[paymentZip] [varchar](10) NULL,
	[assignsPolicyNum] [varchar](25) NULL,
	[producerNumber] [varchar](25) NULL,
	[installmentFee] [decimal](18, 0) NULL,
	[policyCharge] [decimal](18, 0) NULL,
	[cashCharge] [decimal](18, 0) NULL,
	[checkCharge] [decimal](18, 0) NULL,
	[returnedCheckCharge] [decimal](18, 0) NULL,
	[reinstatementFee] [decimal](18, 0) NULL,
	[lateFee] [decimal](18, 0) NULL,
	[lateGracePeriod] [tinyint] NULL,
	[reinstatementPeriod] [tinyint] NULL,
	[enableMiscCharge] [bit] NULL,
	[naicCode] [varchar](25) NULL,
	[facilityCode] [char](25) NULL,
	[notes] [varchar](3000) NULL,
	[IBMServAgt] [varchar](5) NULL,
	[invoice] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[renewalPeriod] [int] NULL,
	[renewalCompanyID] [int] NULL,
	[admitted] [tinyint] NULL,
	[submissionDisableDate] [smalldatetime] NULL,
	[assignsClaimNum] [tinyint] NULL,
 CONSTRAINT [PK_CompanyLog] PRIMARY KEY CLUSTERED 
(
	[companyLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CompanyLog_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyLog_companyID] ON [dbo].[CompanyLog]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
