USE [Windhaven]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[companyID] [int] IDENTITY(10,1) NOT NULL,
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
	[usePaymentAddress] [tinyint] NOT NULL,
	[paymentAddress1] [varchar](35) NULL,
	[paymentAddress2] [varchar](35) NULL,
	[paymentCity] [varchar](35) NULL,
	[paymentState] [char](2) NULL,
	[paymentZip] [varchar](10) NULL,
	[assignsPolicyNum] [tinyint] NOT NULL,
	[producerNumber] [varchar](25) NULL,
	[naicCode] [varchar](25) NULL,
	[facilityCode] [char](25) NULL,
	[notes] [varchar](3000) NULL,
	[IBMServAgt] [varchar](5) NULL,
	[invoice] [tinyint] NULL,
	[status] [tinyint] NULL,
	[renewalCompanyID] [int] NULL,
	[admitted] [tinyint] NULL,
	[submissionDisableDate] [smalldatetime] NULL,
	[assignsClaimNum] [tinyint] NULL,
	[claimsPayableTo] [varchar](65) NULL,
	[claimsPaymentAddress1] [varchar](35) NULL,
	[claimsPaymentAddress2] [varchar](35) NULL,
	[claimsPaymentCity] [varchar](35) NULL,
	[claimsPaymentState] [char](2) NULL,
	[claimsPaymentZip] [varchar](10) NULL,
	[claimsDepartmentPhone] [varchar](22) NULL,
	[claimsDepartmentPhone2] [varchar](22) NULL,
	[claimsDepartmentFax] [varchar](22) NULL,
	[claimsPaymentTollFree] [varchar](22) NULL,
	[claimsPaymentPhone] [varchar](22) NULL,
	[claimsDepartmentEmail] [varchar](50) NULL,
	[companyLogo] [varchar](50) NULL,
	[folderName] [varchar](50) NULL,
	[allowGap] [tinyint] NULL,
	[addDate] [datetime] NOT NULL,
	[companyShort] [varchar](10) NULL,
 CONSTRAINT [PK_Company_companyID] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__allowGa__6317842B]  DEFAULT ((0)) FOR [allowGap]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF__Company__addDate__640BA864]  DEFAULT (getdate()) FOR [addDate]
GO
