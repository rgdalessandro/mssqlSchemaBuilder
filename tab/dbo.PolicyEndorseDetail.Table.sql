USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyEndorseDetail]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyEndorseDetail](
	[policyEndorseDetailID] [int] IDENTITY(10,1) NOT NULL,
	[policyEndorseID] [int] NULL,
	[status] [tinyint] NULL,
	[description] [varchar](8000) NULL,
 CONSTRAINT [PK_PolicyEndorseDetail] PRIMARY KEY CLUSTERED 
(
	[policyEndorseDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyEndorseDetail_policyEndorseID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseDetail_policyEndorseID] ON [dbo].[PolicyEndorseDetail]
(
	[policyEndorseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyEndorseDetail_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyEndorseDetail_status] ON [dbo].[PolicyEndorseDetail]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyEndorseDetail] ADD  CONSTRAINT [DF_PolicyEndorseDetail_policyEndorseID]  DEFAULT (1) FOR [policyEndorseID]
GO
ALTER TABLE [dbo].[PolicyEndorseDetail] ADD  CONSTRAINT [DF_PolicyEndorseDetail_status]  DEFAULT (0) FOR [status]
GO
