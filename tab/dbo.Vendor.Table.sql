USE [Windhaven]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[vendorID] [int] IDENTITY(10,1) NOT NULL,
	[code] [varchar](15) NULL,
	[subcode] [varchar](15) NULL,
	[vendorName] [varchar](150) NULL,
	[address1] [varchar](35) NULL,
	[address2] [varchar](35) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[taxID] [varchar](11) NULL,
	[taxType] [tinyint] NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[subVendor] [tinyint] NOT NULL,
	[usersID] [int] NULL,
	[mainVendorID] [int] NULL,
	[mainVendorName] [varchar](65) NULL,
	[branchID] [int] NULL,
	[branchName] [varchar](65) NULL,
	[commissionRate] [smallmoney] NULL,
	[renewalCommissionRate] [smallmoney] NULL,
	[territory] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[commissionCheckMethod] [tinyint] NULL,
	[monitorVendor] [tinyint] NULL,
	[stateLicensing] [varchar](2500) NULL,
	[contactFName] [varchar](35) NULL,
	[contactMiddle] [varchar](35) NULL,
	[contactLName] [varchar](35) NULL,
	[contactTitle] [varchar](65) NULL,
	[addDate] [smalldatetime] NULL,
	[importVendorCode] [varchar](15) NULL,
	[physicalAddress1] [varchar](35) NULL,
	[physicalAddress2] [varchar](35) NULL,
	[physicalCity] [varchar](35) NULL,
	[physicalState] [char](2) NULL,
	[physicalZip] [varchar](10) NULL,
	[vendorType] [tinyint] NULL,
	[W9rcvd] [tinyint] NULL,
 CONSTRAINT [PK_Vendor_vendorID] PRIMARY KEY CLUSTERED 
(
	[vendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Vendor_branchID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_branchID] ON [dbo].[Vendor]
(
	[branchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendor_mainVendorID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_mainVendorID] ON [dbo].[Vendor]
(
	[mainVendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendor_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_status] ON [dbo].[Vendor]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendor_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_usersID] ON [dbo].[Vendor]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendor_vendorType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Vendor_vendorType] ON [dbo].[Vendor]
(
	[vendorType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF_Vendor_vendorType]  DEFAULT (1) FOR [vendorType]
GO
