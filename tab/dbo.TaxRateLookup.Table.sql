USE [Windhaven]
GO
/****** Object:  Table [dbo].[TaxRateLookup]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxRateLookup](
	[taxRateLookupID] [int] IDENTITY(10,1) NOT NULL,
	[stateID] [int] NULL,
	[county] [varchar](25) NULL,
	[city] [varchar](25) NULL,
	[unincorporated] [tinyint] NULL,
	[startDate] [smalldatetime] NULL,
	[stopDate] [smalldatetime] NULL,
	[stateRate] [smallmoney] NULL,
	[countyRate] [smallmoney] NULL,
	[cityRate] [smallmoney] NULL,
	[collectionRate] [smallmoney] NULL,
	[addDate] [datetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_TaxRateLookup_taxRateLookupID] PRIMARY KEY CLUSTERED 
(
	[taxRateLookupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TaxRateLookup_city]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_city] ON [dbo].[TaxRateLookup]
(
	[city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TaxRateLookup_county]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_county] ON [dbo].[TaxRateLookup]
(
	[county] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxRateLookup_startDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_startDate] ON [dbo].[TaxRateLookup]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxRateLookup_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_stateID] ON [dbo].[TaxRateLookup]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxRateLookup_stopDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_stopDate] ON [dbo].[TaxRateLookup]
(
	[stopDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxRateLookup_unincorporated]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TaxRateLookup_unincorporated] ON [dbo].[TaxRateLookup]
(
	[unincorporated] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__uninc__331E5846]  DEFAULT ((0)) FOR [unincorporated]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__start__34127C7F]  DEFAULT (getdate()) FOR [startDate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF_TaxRateLookup_stateRate]  DEFAULT ((0)) FOR [stateRate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__count__3506A0B8]  DEFAULT ((0)) FOR [countyRate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__cityR__35FAC4F1]  DEFAULT ((0)) FOR [cityRate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__colle__36EEE92A]  DEFAULT ((1)) FOR [collectionRate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__addDa__37E30D63]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[TaxRateLookup] ADD  CONSTRAINT [DF__TaxRateLo__users__38D7319C]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[TaxRateLookup]  WITH CHECK ADD  CONSTRAINT [FK_TaxRateLookup_stateID] FOREIGN KEY([stateID])
REFERENCES [dbo].[State] ([stateID])
GO
ALTER TABLE [dbo].[TaxRateLookup] CHECK CONSTRAINT [FK_TaxRateLookup_stateID]
GO
