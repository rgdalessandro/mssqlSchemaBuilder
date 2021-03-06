USE [Windhaven]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode](
	[zipCodeID] [int] IDENTITY(1,1) NOT NULL,
	[zipCode] [varchar](5) NULL,
	[stateID] [int] NULL,
	[stateShort] [varchar](3) NULL,
	[city] [varchar](100) NULL,
	[LL] [char](1) NULL,
	[FAC] [char](1) NULL,
	[cityAbbreviated] [varchar](13) NULL,
	[countyFIPS] [int] NULL,
	[areaCode] [smallint] NULL,
	[version] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[inflationGuardFactor] [decimal](18, 4) NULL,
 CONSTRAINT [PK_ZipCode_1] PRIMARY KEY CLUSTERED 
(
	[zipCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZipCode_zipCode_city_4cd3d86f61a5dca60483be1b8051f307]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZipCode_zipCode_city_4cd3d86f61a5dca60483be1b8051f307] ON [dbo].[ZipCode]
(
	[zipCode] ASC,
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZipCode_zipCode_da912c51ddf324098faef90c20b7a7bb]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZipCode_zipCode_da912c51ddf324098faef90c20b7a7bb] ON [dbo].[ZipCode]
(
	[zipCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZipCode_zipCode_FAC_7b21d7a1faf0df966a94265cb829ab2a]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZipCode_zipCode_FAC_7b21d7a1faf0df966a94265cb829ab2a] ON [dbo].[ZipCode]
(
	[zipCode] ASC,
	[FAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ZipCode_zipCode_stateID_311a4e9808dd1db1a9d10ed28d4d6f43]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ZipCode_zipCode_stateID_311a4e9808dd1db1a9d10ed28d4d6f43] ON [dbo].[ZipCode]
(
	[zipCode] ASC,
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
