USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEP_ClaimPayment]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEP_ClaimPayment](
	[cluep_ClaimPaymentID] [int] IDENTITY(10,1) NOT NULL,
	[CLUEP_RequestID] [int] NULL,
	[CLUEP_DetailID] [int] NULL,
	[clueP_ClaimID] [int] NULL,
	[FileNumber] [varchar](16) NULL,
	[Claim1Type] [varchar](5) NULL,
	[Claim1Amount] [varchar](9) NULL,
	[Claim1Disposition] [varchar](2) NULL,
	[Claim2Type] [varchar](5) NULL,
	[Claim2Amount] [varchar](9) NULL,
	[Claim2Disposition] [varchar](2) NULL,
	[Claim3Type] [varchar](5) NULL,
	[Claim3Amount] [varchar](9) NULL,
	[Claim3Disposition] [varchar](2) NULL,
	[Claim4Type] [varchar](5) NULL,
	[Claim4Amount] [varchar](9) NULL,
	[Claim4Disposition] [varchar](2) NULL,
	[Claim5Type] [varchar](5) NULL,
	[Claim5Amount] [varchar](9) NULL,
	[Claim5Disposition] [varchar](2) NULL,
 CONSTRAINT [PK_CLUEP_ClaimPayment] PRIMARY KEY CLUSTERED 
(
	[cluep_ClaimPaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CLUEP_ClaimPayment_clueP_ClaimID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_ClaimPayment_clueP_ClaimID] ON [dbo].[CLUEP_ClaimPayment]
(
	[clueP_ClaimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CLUEP_ClaimPayment_CLUEP_RequestID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEP_ClaimPayment_CLUEP_RequestID] ON [dbo].[CLUEP_ClaimPayment]
(
	[CLUEP_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLUEP_ClaimPayment] ADD  CONSTRAINT [DF_CLUEP_ClaimPayment_CLUEP_RequestID]  DEFAULT ((1)) FOR [CLUEP_RequestID]
GO
ALTER TABLE [dbo].[CLUEP_ClaimPayment] ADD  CONSTRAINT [DF_CLUEP_ClaimPayment_clueP_ClaimID]  DEFAULT ((1)) FOR [clueP_ClaimID]
GO
