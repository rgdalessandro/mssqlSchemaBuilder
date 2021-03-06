USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_Charge]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_Charge](
	[HDR_ChargeID] [int] IDENTITY(10,1) NOT NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[DPS_NUMBER] [int] NULL,
	[DOA] [varchar](12) NULL,
	[SEQ] [varchar](5) NULL,
	[TRS] [varchar](5) NULL,
	[DOO] [varchar](15) NULL,
	[AON] [varchar](50) NULL,
	[AOL] [varchar](100) NULL,
	[CIT] [varchar](10) NULL,
	[LDA] [varchar](10) NULL,
	[ADN] [varchar](10) NULL,
	[XADD] [varchar](10) NULL,
	[ADA] [varchar](10) NULL,
	[REF] [varchar](10) NULL,
	[GOC] [varchar](10) NULL,
 CONSTRAINT [PK_HDR_ChargeID] PRIMARY KEY CLUSTERED 
(
	[HDR_ChargeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_Charge_HDRID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Charge_HDRID] ON [dbo].[HDR_Charge]
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_HDR_Charge_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Charge_RequestID] ON [dbo].[HDR_Charge]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR_Charge] ADD  CONSTRAINT [DF_HDR_Charge_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR_Charge] ADD  CONSTRAINT [DF_HDR_Charge_HDR_ID]  DEFAULT ((1)) FOR [HDR_ID]
GO
