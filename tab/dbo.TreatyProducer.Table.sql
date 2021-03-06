USE [Windhaven]
GO
/****** Object:  Table [dbo].[TreatyProducer]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatyProducer](
	[treatyProducerID] [int] IDENTITY(10,1) NOT NULL,
	[treatyID] [int] NOT NULL,
	[producerID] [int] NOT NULL,
 CONSTRAINT [PK_TreatyProducer] PRIMARY KEY CLUSTERED 
(
	[treatyProducerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_TreatyProducerProducerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyProducerProducerID] ON [dbo].[TreatyProducer]
(
	[producerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_TreatyProducerTreatyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_TreatyProducerTreatyID] ON [dbo].[TreatyProducer]
(
	[treatyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TreatyProducer] ADD  CONSTRAINT [DF_TreatyProducer_treatyID]  DEFAULT (1) FOR [treatyID]
GO
ALTER TABLE [dbo].[TreatyProducer] ADD  CONSTRAINT [DF_TreatyProducer_producerID]  DEFAULT (1) FOR [producerID]
GO
