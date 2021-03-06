USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_ViolationType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_ViolationType](
	[MVR_ViolationTypeID] [int] IDENTITY(10,1) NOT NULL,
	[ACD] [varchar](5) NULL,
	[vendorViolationCode] [varchar](25) NULL,
	[Description] [varchar](150) NULL,
	[autoViolationID] [int] NULL,
	[companyID] [int] NULL,
	[vendorName] [varchar](50) NULL,
	[PTSDescription] [varchar](150) NULL,
	[active] [tinyint] NULL,
	[previousAutoViolationID] [int] NULL,
	[changeDate] [smalldatetime] NULL,
	[userID] [int] NULL,
	[DMVCode] [varchar](25) NULL,
	[vendorViolationCode2] [varchar](25) NULL,
	[MVRVendor] [int] NULL,
	[policyProgram] [int] NULL,
	[stateID] [int] NULL,
 CONSTRAINT [PK_MVR_ViolationType] PRIMARY KEY CLUSTERED 
(
	[MVR_ViolationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MVR_ViolationType_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_ViolationType_companyID] ON [dbo].[MVR_ViolationType]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MVR_ViolationType_vendorViolationCode]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_ViolationType_vendorViolationCode] ON [dbo].[MVR_ViolationType]
(
	[vendorViolationCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVR_ViolationType] ADD  CONSTRAINT [DF_MVR_ViolationType_MCViolationID]  DEFAULT (1) FOR [autoViolationID]
GO
ALTER TABLE [dbo].[MVR_ViolationType] ADD  CONSTRAINT [DF_MVR_ViolationType_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[MVR_ViolationType] ADD  CONSTRAINT [DF_MVR_ViolationType_active]  DEFAULT (1) FOR [active]
GO
