USE [Windhaven]
GO
/****** Object:  Table [dbo].[BankAccountLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountLog](
	[bankAccountLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[bankAccountID] [int] NULL,
	[bankName] [varchar](100) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](22) NULL,
	[routingNumber] [varchar](15) NULL,
	[accountNumber] [varchar](50) NULL,
	[nextCheckNum] [int] NULL,
	[displayName] [varchar](100) NULL,
	[isExternal] [tinyint] NULL,
	[taxID] [varchar](9) NULL,
	[companyIDNum] [varchar](12) NULL,
	[originIDNum] [varchar](12) NULL,
	[description] [varchar](50) NULL,
	[originCompany] [varchar](50) NULL,
 CONSTRAINT [PK_BankAccountLog] PRIMARY KEY CLUSTERED 
(
	[bankAccountLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BankAccountLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
