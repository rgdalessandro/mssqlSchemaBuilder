USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemAccount]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemAccount](
	[systemAccountID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[bankName] [dbo].[NAME_Business] NULL,
	[accountName] [varchar](25) NULL,
	[accountNum] [varchar](50) NULL,
	[accountType] [tinyint] NULL,
	[notes] [varchar](1000) NULL,
 CONSTRAINT [PK_SystemAccounts] PRIMARY KEY CLUSTERED 
(
	[systemAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_SystemAccountCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_SystemAccountCompanyID] ON [dbo].[SystemAccount]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SystemAccount] ADD  CONSTRAINT [DF_SystemAccounts_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[SystemAccount] ADD  CONSTRAINT [DF_SystemAccounts_accountType]  DEFAULT (0) FOR [accountType]
GO
