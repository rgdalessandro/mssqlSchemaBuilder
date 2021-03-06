USE [Windhaven]
GO
/****** Object:  Table [dbo].[NCF_Reason]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCF_Reason](
	[NCF_ReasonID] [int] IDENTITY(10,1) NOT NULL,
	[NCF_RequestID] [int] NOT NULL,
	[NCF_DetailID] [int] NULL,
	[policyID] [int] NOT NULL,
	[lineNum] [int] NULL,
	[reasonCode] [varchar](5) NULL,
	[reasonText] [varchar](1000) NULL,
	[creditScore] [varchar](5) NULL,
	[creditVendor] [varchar](3) NULL,
	[status] [tinyint] NOT NULL,
	[processingStatus] [varchar](1) NULL,
	[referenceNum] [varchar](100) NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_NCF_Reason] PRIMARY KEY CLUSTERED 
(
	[NCF_ReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_NCF_Reason_adddate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Reason_adddate] ON [dbo].[NCF_Reason]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Reason_NCFDetailID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Reason_NCFDetailID] ON [dbo].[NCF_Reason]
(
	[NCF_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Reason_NCFRequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Reason_NCFRequestID] ON [dbo].[NCF_Reason]
(
	[NCF_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_NCF_Reason_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_NCF_Reason_policyID] ON [dbo].[NCF_Reason]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_NCF_RequestID]  DEFAULT ((1)) FOR [NCF_RequestID]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_NCF_DetailID]  DEFAULT ((1)) FOR [NCF_DetailID]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_lineNum]  DEFAULT ((0)) FOR [lineNum]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[NCF_Reason] ADD  CONSTRAINT [DF_NCF_Reason_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
