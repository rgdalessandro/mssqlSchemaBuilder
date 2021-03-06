USE [Windhaven]
GO
/****** Object:  Table [dbo].[License]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[License](
	[licenseID] [int] IDENTITY(10,1) NOT NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[policyLine] [tinyint] NULL,
	[licenseState] [dbo].[STATE_Abbrev] NULL,
	[licenseNum] [varchar](50) NULL,
	[effectiveDate] [smalldatetime] NULL,
	[expirationDate] [smalldatetime] NULL,
	[dateAdded] [smalldatetime] NULL,
	[resident] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[noRenew] [tinyint] NULL,
	[licenseCarrier] [dbo].[NAME_Business] NULL,
	[carrierAddressID] [int] NULL,
	[carrierPhone] [dbo].[PHONE_Formatted] NULL,
	[policyLimit] [int] NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[licenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_LicenseCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseCompanyID] ON [dbo].[License]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicenseEffectiveDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseEffectiveDate] ON [dbo].[License]
(
	[effectiveDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicenseExpirationDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseExpirationDate] ON [dbo].[License]
(
	[expirationDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_LicenseLicenseState]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseLicenseState] ON [dbo].[License]
(
	[licenseState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicenseNoRenew]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseNoRenew] ON [dbo].[License]
(
	[noRenew] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicensePolicyLine]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicensePolicyLine] ON [dbo].[License]
(
	[policyLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicenseProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseProducerID] ON [dbo].[License]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_LicenseResident]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_LicenseResident] ON [dbo].[License]
(
	[resident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_policyLine]  DEFAULT (1) FOR [policyLine]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_dateAdded]  DEFAULT (getdate()) FOR [dateAdded]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_resident]  DEFAULT (1) FOR [resident]
GO
ALTER TABLE [dbo].[License] ADD  CONSTRAINT [DF_License_noRenew]  DEFAULT (0) FOR [noRenew]
GO
