USE [Windhaven]
GO
/****** Object:  Table [dbo].[HDR_Criminal]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDR_Criminal](
	[HDR_CriminalID] [int] IDENTITY(10,1) NOT NULL,
	[HDR_RequestID] [int] NULL,
	[HDR_ID] [int] NULL,
	[DPS_NUMBER] [varchar](50) NULL,
	[NAM] [varchar](150) NULL,
	[SEX] [varchar](1) NULL,
	[RACE] [varchar](1) NULL,
	[DOB1] [varchar](8) NULL,
	[HGT] [varchar](5) NULL,
	[WGT] [varchar](5) NULL,
	[EYE] [varchar](3) NULL,
	[HAI] [varchar](3) NULL,
 CONSTRAINT [PK_HDR_Criminal] PRIMARY KEY CLUSTERED 
(
	[HDR_CriminalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HDR_Criminal_HDRID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Criminal_HDRID] ON [dbo].[HDR_Criminal]
(
	[HDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [IX_HDR_Criminal_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HDR_Criminal_RequestID] ON [dbo].[HDR_Criminal]
(
	[HDR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HDR_Criminal] ADD  CONSTRAINT [DF_HDR_Criminal_HDR_RequestID]  DEFAULT ((1)) FOR [HDR_RequestID]
GO
ALTER TABLE [dbo].[HDR_Criminal] ADD  CONSTRAINT [DF_HDR_Criminal_HDR_ID]  DEFAULT ((1)) FOR [HDR_ID]
GO
