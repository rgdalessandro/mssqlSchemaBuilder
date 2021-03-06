USE [Windhaven]
GO
/****** Object:  Table [dbo].[State_Reporting_ImportDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State_Reporting_ImportDetail](
	[state_Reporting_ImportDetailID] [int] IDENTITY(10,1) NOT NULL,
	[state_Reporting_ImportID] [int] NULL,
	[lineNum] [int] NULL,
	[lineContent] [varchar](400) NULL,
	[status] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[errorList] [varchar](30) NULL,
	[State_ReportingLog_DetailID] [int] NULL,
	[trackingNumber] [varchar](9) NULL,
	[secondaryVIN] [varchar](25) NULL,
	[usersID] [int] NULL,
	[errorCode] [varchar](50) NULL,
	[fname] [varchar](75) NULL,
	[middle] [varchar](50) NULL,
	[lname] [varchar](75) NULL,
	[suffix] [varchar](50) NULL,
	[insuredQualifier] [varchar](5) NULL,
	[insuredIDCode] [varchar](25) NULL,
	[insuredAddress] [varchar](100) NULL,
	[insuredCity] [varchar](50) NULL,
	[insuredState] [varchar](10) NULL,
	[insuredZip] [varchar](12) NULL,
	[policyNum] [varchar](25) NULL,
	[VIN] [varchar](50) NULL,
	[vehicleYear] [varchar](6) NULL,
	[vehicleMake] [varchar](50) NULL,
	[vehicleModel] [varchar](50) NULL,
	[HLID] [int] NULL,
	[HLParentID] [int] NULL,
	[policyID] [int] NULL,
	[InsuredID] [int] NULL,
	[VehicleID] [int] NULL,
	[policyEffectiveDate] [varchar](12) NULL,
	[expirationDate] [varchar](12) NULL,
	[dob] [varchar](12) NULL,
 CONSTRAINT [PK_State_Reporting_ImportDetail] PRIMARY KEY CLUSTERED 
(
	[state_Reporting_ImportDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_State_Reporting_ImportDetail_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_ImportDetail_policyID] ON [dbo].[State_Reporting_ImportDetail]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_State_Reporting_ImportDetail_state_Reporting_ImportID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_ImportDetail_state_Reporting_ImportID] ON [dbo].[State_Reporting_ImportDetail]
(
	[state_Reporting_ImportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_State_Reporting_ImportDetail_state_ReportingLog_DetailID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_ImportDetail_state_ReportingLog_DetailID] ON [dbo].[State_Reporting_ImportDetail]
(
	[State_ReportingLog_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_State_Reporting_ImportDetail_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_ImportDetail_status] ON [dbo].[State_Reporting_ImportDetail]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_State_Reporting_ImportDetail_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_State_Reporting_ImportDetail_usersID] ON [dbo].[State_Reporting_ImportDetail]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_state_Reporting_ImportID]  DEFAULT (1) FOR [state_Reporting_ImportID]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_lineNum]  DEFAULT (0) FOR [lineNum]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_State_ReportingLog_DetailID]  DEFAULT (1) FOR [State_ReportingLog_DetailID]
GO
ALTER TABLE [dbo].[State_Reporting_ImportDetail] ADD  CONSTRAINT [DF_State_Reporting_ImportDetail_usersID]  DEFAULT (2) FOR [usersID]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Space is licnum N is unique ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'State_Reporting_ImportDetail', @level2type=N'COLUMN',@level2name=N'insuredQualifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LicNum or InsuredID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'State_Reporting_ImportDetail', @level2type=N'COLUMN',@level2name=N'insuredIDCode'
GO
