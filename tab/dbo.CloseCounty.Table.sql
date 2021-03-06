USE [Windhaven]
GO
/****** Object:  Table [dbo].[CloseCounty]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloseCounty](
	[closeCountyID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NULL,
	[countyID] [int] NULL,
	[closeType] [tinyint] NULL,
	[reason] [tinyint] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CloseCounty] PRIMARY KEY CLUSTERED 
(
	[closeCountyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CloseCountyCompanyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CloseCountyCompanyID] ON [dbo].[CloseCounty]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CloseCountyCountyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CloseCountyCountyID] ON [dbo].[CloseCounty]
(
	[countyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CloseCountyEndDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CloseCountyEndDate] ON [dbo].[CloseCounty]
(
	[endDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CloseCountyReason]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CloseCountyReason] ON [dbo].[CloseCounty]
(
	[reason] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CloseCountyStartDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CloseCountyStartDate] ON [dbo].[CloseCounty]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CloseCounty] ADD  CONSTRAINT [DF_CloseCounty_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[CloseCounty] ADD  CONSTRAINT [DF_CloseCounty_countyID]  DEFAULT (1) FOR [countyID]
GO
ALTER TABLE [dbo].[CloseCounty] ADD  CONSTRAINT [DF_CloseCounty_closeType]  DEFAULT (0) FOR [closeType]
GO
ALTER TABLE [dbo].[CloseCounty] ADD  CONSTRAINT [DF_CloseCounty_reason]  DEFAULT (0) FOR [reason]
GO
ALTER TABLE [dbo].[CloseCounty] ADD  CONSTRAINT [DF_CloseCounty_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
