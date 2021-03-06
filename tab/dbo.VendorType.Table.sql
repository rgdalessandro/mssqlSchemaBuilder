USE [Windhaven]
GO
/****** Object:  Table [dbo].[VendorType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorType](
	[vendorTypeID] [int] IDENTITY(10,1) NOT NULL,
	[vendorDescription] [varchar](50) NULL,
	[vendorType] [int] NULL,
	[policyType] [int] NULL,
 CONSTRAINT [PK_VendorType] PRIMARY KEY CLUSTERED 
(
	[vendorTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_VendorType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_VendorType] ON [dbo].[VendorType]
(
	[vendorType] ASC,
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendorType] ADD  CONSTRAINT [DF_VendorType_vendorType]  DEFAULT (1) FOR [vendorType]
GO
ALTER TABLE [dbo].[VendorType] ADD  CONSTRAINT [DF_VendorType_policyType]  DEFAULT (0) FOR [policyType]
GO
