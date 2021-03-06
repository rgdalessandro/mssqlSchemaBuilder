USE [Windhaven]
GO
/****** Object:  Table [dbo].[NCF_Request]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCF_Request](
	[NCF_RequestID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[fileName] [varchar](100) NULL,
	[orderedDate] [datetime] NOT NULL,
	[receivedDate] [datetime] NULL,
	[usersID] [int] NOT NULL,
	[status] [tinyint] NOT NULL,
	[message] [nvarchar](255) NULL,
	[rawReturn] [text] NULL,
	[cprequesthash] [text] NULL,
	[previousRequestID] [int] NULL,
	[fname] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[taxID] [varchar](15) NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[dob] [smalldatetime] NULL,
	[creditScore] [varchar](3) NULL,
	[orderedOn] [varchar](35) NULL,
	[accountNumber] [varchar](100) NULL,
	[accountSuffix] [varchar](100) NULL,
	[socketIP] [varchar](100) NULL,
	[socketPort] [varchar](100) NULL,
 CONSTRAINT [PK_NCF_Request] PRIMARY KEY CLUSTERED 
(
	[NCF_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_NCF_Request_NCF_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Request_NCF_policyID] ON [dbo].[NCF_Request]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Request_orderedDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Request_orderedDate] ON [dbo].[NCF_Request]
(
	[orderedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Request_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Request_status] ON [dbo].[NCF_Request]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_orderedDate]  DEFAULT (getdate()) FOR [orderedDate]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_usersID]  DEFAULT ((2)) FOR [usersID]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_previousRequestID]  DEFAULT ((1)) FOR [previousRequestID]
GO
ALTER TABLE [dbo].[NCF_Request] ADD  CONSTRAINT [DF_NCF_Request_creditScore]  DEFAULT ((0)) FOR [creditScore]
GO
