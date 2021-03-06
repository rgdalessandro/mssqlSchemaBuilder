USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR](
	[HDR_ID] [int] IDENTITY(10,1) NOT NULL,
	[batchID] [int] NULL,
	[HDR_RequestID] [int] NULL,
	[Type] [varchar](50) NULL,
	[Policy] [varchar](50) NULL,
	[Reference] [varchar](50) NULL,
	[DLVin] [varchar](50) NULL,
	[Name1] [varchar](150) NULL,
	[Name2] [varchar](150) NULL,
	[Address1] [varchar](150) NULL,
	[Address2] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](12) NULL,
	[DOB] [smalldatetime] NULL,
	[Age] [varchar](10) NULL,
	[LastUpdateType] [varchar](50) NULL,
	[LastUpdateDate] [smalldatetime] NULL,
	[PreviousResidentOwner] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Plate] [varchar](50) NULL,
	[PreviousPlate] [varchar](50) NULL,
	[IssueMonthYear] [varchar](50) NULL,
	[ExpireMonthYear] [varchar](50) NULL,
	[Year] [smallint] NULL,
	[Make] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[LienDate] [smalldatetime] NULL,
	[LienName] [varchar](50) NULL,
	[LienAddress] [varchar](50) NULL,
	[LienCity] [varchar](50) NULL,
	[LienState] [varchar](2) NULL,
	[LienZip] [varchar](50) NULL,
	[Odometer] [varchar](50) NULL,
	[Price] [decimal](10, 2) NULL,
	[SalvageStateCounty] [varchar](50) NULL,
	[SpecialInformation] [varchar](50) NULL,
	[ChangeTransfer] [varchar](50) NULL,
	[Territory] [varchar](5) NULL,
	[fname1] [varchar](100) NULL,
	[middle1] [varchar](50) NULL,
	[lname1] [varchar](100) NULL,
	[fname2] [varchar](100) NULL,
	[middle2] [varchar](50) NULL,
	[lname2] [varchar](100) NULL,
	[reviewStatus] [tinyint] NULL,
 CONSTRAINT [PK_HDR] PRIMARY KEY CLUSTERED 
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_HDR_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_HDR_RequestID] ON [dbo].[HDR]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_HDR_Policy]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Policy] ON [dbo].[HDR]
(
	[Policy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR] ADD  CONSTRAINT [DF_HDR_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR] ADD  CONSTRAINT [DF_HDR_reviewStatus]  DEFAULT ((0)) FOR [reviewStatus]
GO
