USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEEXPORT]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEEXPORT](
	[clueID] [int] IDENTITY(1,1) NOT NULL,
	[recordID] [varchar](50) NULL,
	[claimincidentID] [int] NULL,
	[claimIncidentAutoID] [int] NULL,
	[policyID] [int] NULL,
	[autoID] [int] NULL,
	[claimid] [int] NULL,
	[adddate] [datetime] NULL,
	[lname1] [varchar](50) NULL,
	[fname1] [varchar](50) NULL,
	[middle1] [varchar](50) NULL,
	[housenumber] [varchar](50) NULL,
	[address1] [varchar](50) NULL,
	[apartmentnumber] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[ssnum] [varchar](50) NULL,
	[DOB] [smalldatetime] NULL,
	[licnum] [varchar](15) NULL,
	[licstate] [varchar](50) NULL,
	[sex] [varchar](1) NULL,
	[ssnum2] [varchar](50) NULL,
	[dob2] [smalldatetime] NULL,
	[licnum2] [varchar](50) NULL,
	[licstate2] [varchar](2) NULL,
	[sex2] [varchar](1) NULL,
	[driverDescription] [varchar](50) NULL,
	[driverlname] [char](35) NULL,
	[driverfname] [char](35) NULL,
	[drivermiddle] [char](35) NULL,
	[driverssn] [varchar](50) NULL,
	[driverdob] [smalldatetime] NULL,
	[driverlic] [varchar](15) NULL,
	[driverLicState] [char](2) NULL,
	[driverSex] [varchar](1) NULL,
	[driverRelation] [varchar](50) NULL,
	[driveraddress] [char](35) NULL,
	[drivercity] [char](35) NULL,
	[driverstate] [char](2) NULL,
	[driverzip] [char](10) NULL,
	[policynum] [varchar](20) NULL,
	[policytype] [varchar](50) NULL,
	[claimincidentnum] [varchar](50) NULL,
	[type] [varchar](8) NULL,
	[dateofloss] [smalldatetime] NULL,
	[claimamount] [dbo].[CURRENCY] NULL,
	[reportStatus] [varchar](1) NULL,
	[vin] [varchar](17) NULL,
	[vehicleyear] [smallint] NULL,
	[make] [varchar](15) NULL,
	[model] [varchar](20) NULL,
	[status] [varchar](1) NULL,
	[fault] [varchar](1) NULL,
	[firstPaymentDate] [datetime] NULL,
	[updated] [varchar](1) NULL,
	[julianDate] [int] NULL,
	[lname2] [varchar](50) NULL,
	[fname2] [varchar](50) NULL,
	[middle2] [varchar](50) NULL,
	[vehicleID] [int] NULL,
	[driverID] [int] NULL,
 CONSTRAINT [PK_CLUEEXPORT] PRIMARY KEY CLUSTERED 
(
	[clueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CLUEEXPORT_adddate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_adddate] ON [dbo].[CLUEEXPORT]
(
	[adddate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_autoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_autoID] ON [dbo].[CLUEEXPORT]
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_claimid]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_claimid] ON [dbo].[CLUEEXPORT]
(
	[claimid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_claimIncidentAutoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_claimIncidentAutoID] ON [dbo].[CLUEEXPORT]
(
	[claimIncidentAutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_claimincidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_claimincidentID] ON [dbo].[CLUEEXPORT]
(
	[claimincidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_driverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_driverID] ON [dbo].[CLUEEXPORT]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_firstPaymentDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_firstPaymentDate] ON [dbo].[CLUEEXPORT]
(
	[firstPaymentDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_julianDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_julianDate] ON [dbo].[CLUEEXPORT]
(
	[julianDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_policyID] ON [dbo].[CLUEEXPORT]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEEXPORT_reportStatus]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_reportStatus] ON [dbo].[CLUEEXPORT]
(
	[reportStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CLUEEXPORT_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_status] ON [dbo].[CLUEEXPORT]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEEXPORT_vehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEEXPORT_vehicleID] ON [dbo].[CLUEEXPORT]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLUEEXPORT] ADD  CONSTRAINT [DF_CLUEEXPORT_adddate]  DEFAULT (getdate()) FOR [adddate]
GO
ALTER TABLE [dbo].[CLUEEXPORT] ADD  CONSTRAINT [DF_CLUEEXPORT_updated]  DEFAULT ('N') FOR [updated]
GO
