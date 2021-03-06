USE [Windhaven]
GO
/****** Object:  Table [dbo].[TreatyCompany]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatyCompany](
	[treatyCompanyID] [int] IDENTITY(10,1) NOT NULL,
	[companyType] [tinyint] NULL,
	[companyName] [varchar](65) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[addDate] [smalldatetime] NULL,
	[companyNumber] [varchar](5) NULL,
 CONSTRAINT [PK_TreatyCompany_treatyCompanyID] PRIMARY KEY CLUSTERED 
(
	[treatyCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TreatyCompany_companyNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyCompany_companyNumber] ON [dbo].[TreatyCompany]
(
	[companyNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatyCompany_companyType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyCompany_companyType] ON [dbo].[TreatyCompany]
(
	[companyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TreatyCompany] ADD  CONSTRAINT [DF_TreatyCompany_companyType]  DEFAULT (1) FOR [companyType]
GO
ALTER TABLE [dbo].[TreatyCompany] ADD  CONSTRAINT [DF_TreatyCompany_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[TreatyCompany] ADD  CONSTRAINT [DF_TreatyCompany_companyNumber]  DEFAULT (0) FOR [companyNumber]
GO
