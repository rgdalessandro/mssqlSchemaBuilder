USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerGroup]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerGroup](
	[producerGroupID] [int] IDENTITY(10,1) NOT NULL,
	[groupName] [varchar](100) NULL,
	[description] [varchar](255) NULL,
	[notes] [varchar](3000) NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ProducerGroup] PRIMARY KEY CLUSTERED 
(
	[producerGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProducerGroupDescription]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerGroupDescription] ON [dbo].[ProducerGroup]
(
	[description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ProducerGroupGroupName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProducerGroupGroupName] ON [dbo].[ProducerGroup]
(
	[groupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProducerGroup] ADD  CONSTRAINT [DF_ProducerGroup_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
