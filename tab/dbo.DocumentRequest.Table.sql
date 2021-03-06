USE [Windhaven]
GO
/****** Object:  Table [dbo].[DocumentRequest]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentRequest](
	[documentRequestID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[description] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[otherID] [varchar](25) NULL,
	[documentType] [tinyint] NULL,
	[batchPrint] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[recipientType] [tinyint] NULL,
	[itemID] [int] NULL,
	[ChangeDate] [smalldatetime] NULL,
	[itemType] [tinyint] NULL,
 CONSTRAINT [PK_DocumentRequest] PRIMARY KEY CLUSTERED 
(
	[documentRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DocumentRequest]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DocumentRequest] ON [dbo].[DocumentRequest]
(
	[policyID] ASC,
	[status] ASC,
	[documentType] ASC,
	[recipientType] ASC,
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DocumentRequest_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DocumentRequest_policyID] ON [dbo].[DocumentRequest]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentRequest] ADD  CONSTRAINT [DF_DocumentRequest_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[DocumentRequest] ADD  CONSTRAINT [DF_DocumentRequest_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[DocumentRequest] ADD  CONSTRAINT [DF_DocumentRequest_itemID]  DEFAULT (1) FOR [itemID]
GO
ALTER TABLE [dbo].[DocumentRequest] ADD  CONSTRAINT [DF_DocumentRequest_ChangeDate]  DEFAULT (getdate()) FOR [ChangeDate]
GO
ALTER TABLE [dbo].[DocumentRequest] ADD  CONSTRAINT [DF_DocumentRequest_itemType_1]  DEFAULT (0) FOR [itemType]
GO
