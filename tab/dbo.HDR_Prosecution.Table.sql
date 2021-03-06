USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_Prosecution]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_Prosecution](
	[HDR_ProsecutionID] [int] IDENTITY(10,1) NOT NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[DPS_NUMBER] [int] NULL,
	[DOA] [varchar](10) NULL,
	[SEQ] [varchar](5) NULL,
	[TRN] [varchar](15) NULL,
	[TRS] [varchar](5) NULL,
	[ORIP] [varchar](15) NULL,
	[DOR] [varchar](5) NULL,
	[PAF] [varchar](15) NULL,
	[PON] [varchar](5) NULL,
	[POL] [varchar](5) NULL,
	[LDP] [varchar](5) NULL,
	[GOCP] [varchar](5) NULL,
 CONSTRAINT [PK_HDR_Prosecution] PRIMARY KEY CLUSTERED 
(
	[HDR_ProsecutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_Prosecution_HDRID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Prosecution_HDRID] ON [dbo].[HDR_Prosecution]
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_HDR_Prosecution_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Prosecution_RequestID] ON [dbo].[HDR_Prosecution]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR_Prosecution] ADD  CONSTRAINT [DF_HDR_Prosecution_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR_Prosecution] ADD  CONSTRAINT [DF_HDR_Prosecution_HDR_ID]  DEFAULT ((1)) FOR [HDR_ID]
GO
