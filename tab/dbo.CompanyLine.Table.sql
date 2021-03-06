USE [Windhaven]
GO
/****** Object:  Table [dbo].[CompanyLine]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyLine](
	[companyLineID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[policyType] [int] NULL,
	[stateID] [int] NULL,
	[billingMethod] [tinyint] NULL,
	[invoiceAdvance] [tinyint] NULL,
 CONSTRAINT [PK_CompanyLine] PRIMARY KEY CLUSTERED 
(
	[companyLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CompanyLine]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyLine] ON [dbo].[CompanyLine]
(
	[companyID] ASC,
	[policyType] ASC,
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyLine] ADD  CONSTRAINT [DF_CompanyLine_companyID]  DEFAULT (0) FOR [companyID]
GO
ALTER TABLE [dbo].[CompanyLine] ADD  CONSTRAINT [DF_CompanyLine_policyType]  DEFAULT (0) FOR [policyType]
GO
ALTER TABLE [dbo].[CompanyLine] ADD  CONSTRAINT [DF_CompanyLine_stateID]  DEFAULT (1) FOR [stateID]
GO
ALTER TABLE [dbo].[CompanyLine] ADD  CONSTRAINT [DF_CompanyLine_billingMethod]  DEFAULT (0) FOR [billingMethod]
GO
ALTER TABLE [dbo].[CompanyLine] ADD  CONSTRAINT [DF_CompanyLine_invoiceAdvance]  DEFAULT (0) FOR [invoiceAdvance]
GO
