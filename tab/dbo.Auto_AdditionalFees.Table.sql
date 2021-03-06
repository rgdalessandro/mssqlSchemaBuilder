USE [Windhaven]
GO
/****** Object:  Table [dbo].[Auto_AdditionalFees]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auto_AdditionalFees](
	[auto_AdditionalFees_ID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[vehicleID] [int] NULL,
	[arType] [tinyint] NULL,
	[arSubType] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[usersID] [int] NULL,
	[arID] [int] NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_Auto_AdditionalFees] PRIMARY KEY CLUSTERED 
(
	[auto_AdditionalFees_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Auto_AdditionalFees_arID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_arID] ON [dbo].[Auto_AdditionalFees]
(
	[arID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_arSubType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_arSubType] ON [dbo].[Auto_AdditionalFees]
(
	[arSubType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_arType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_arType] ON [dbo].[Auto_AdditionalFees]
(
	[arType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_driverID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_driverID] ON [dbo].[Auto_AdditionalFees]
(
	[driverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_policyID] ON [dbo].[Auto_AdditionalFees]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_status] ON [dbo].[Auto_AdditionalFees]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_usersID] ON [dbo].[Auto_AdditionalFees]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Auto_AdditionalFees_vehicleID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Auto_AdditionalFees_vehicleID] ON [dbo].[Auto_AdditionalFees]
(
	[vehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_driverID]  DEFAULT (1) FOR [driverID]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_vehicleID]  DEFAULT (1) FOR [vehicleID]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[Auto_AdditionalFees] ADD  CONSTRAINT [DF_Auto_AdditionalFees_arID]  DEFAULT (1) FOR [arID]
GO
