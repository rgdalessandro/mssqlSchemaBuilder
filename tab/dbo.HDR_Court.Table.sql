USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_Court]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_Court](
	[HDR_CourtID] [int] IDENTITY(10,1) NOT NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[DPS_NUMBER] [varchar](15) NULL,
	[DOA] [varchar](10) NULL,
	[SEQ] [varchar](15) NULL,
	[TRN] [varchar](15) NULL,
	[TRS] [varchar](15) NULL,
	[FPO] [varchar](15) NULL,
	[ORIC] [varchar](50) NULL,
	[CDN] [varchar](50) NULL,
	[CAU] [varchar](15) NULL,
	[CDD] [varchar](15) NULL,
	[GOC] [varchar](15) NULL,
	[LDC] [varchar](15) NULL,
	[CIT] [varchar](15) NULL,
	[CON] [varchar](15) NULL,
	[DOS] [varchar](15) NULL,
	[CSS] [varchar](15) NULL,
	[CSF] [varchar](15) NULL,
	[CMT] [varchar](15) NULL,
	[CPR] [varchar](15) NULL,
	[CFN] [varchar](15) NULL,
	[CST] [varchar](15) NULL,
	[CPN] [varchar](15) NULL,
	[CPL] [varchar](15) NULL,
	[DCA] [varchar](15) NULL,
	[DDA] [varchar](15) NULL,
	[FCD] [varchar](15) NULL,
	[ARC] [varchar](15) NULL,
	[MCC] [varchar](15) NULL,
 CONSTRAINT [PK_HDR_Court] PRIMARY KEY CLUSTERED 
(
	[HDR_CourtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_Court_HDRID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Court_HDRID] ON [dbo].[HDR_Court]
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_HDR_Court_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Court_RequestID] ON [dbo].[HDR_Court]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR_Court] ADD  CONSTRAINT [DF_HDR_Court_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR_Court] ADD  CONSTRAINT [DF_HDR_Court_HDR_ID]  DEFAULT ((1)) FOR [HDR_ID]
GO
ALTER TABLE [dbo].[HDR_Court] ADD  CONSTRAINT [DF_HDR_Court_DPS_NUMBER]  DEFAULT ((1)) FOR [DPS_NUMBER]
GO
