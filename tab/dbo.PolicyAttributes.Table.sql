USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyAttributes]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyAttributes](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NOT NULL,
	[attributeTypeID] [int] NOT NULL,
	[attributeValue] [varchar](25) NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PolicyAttributes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyAttributes_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyAttributes_policyID] ON [dbo].[PolicyAttributes]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyAttributes] ADD  DEFAULT (getdate()) FOR [addDate]
GO
