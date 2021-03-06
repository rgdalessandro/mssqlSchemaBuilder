USE [Windhaven]
GO
/****** Object:  Table [dbo].[DepositProof]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositProof](
	[depositProofID] [int] IDENTITY(10,1) NOT NULL,
	[depositID] [int] NULL,
	[depositNum] [int] NULL,
	[paymentID] [int] NOT NULL,
	[usersID] [int] NULL,
	[proofBatchNum] [varchar](25) NULL,
	[addDate] [smalldatetime] NULL,
	[status] [tinyint] NULL,
	[isFinance] [tinyint] NULL,
 CONSTRAINT [PK_DepositProof] PRIMARY KEY CLUSTERED 
(
	[depositProofID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_DepositProof_addDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_addDate] ON [dbo].[DepositProof]
(
	[addDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositProof_depositID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_depositID] ON [dbo].[DepositProof]
(
	[depositID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositProof_depositNum]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_depositNum] ON [dbo].[DepositProof]
(
	[depositNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositProof_paymentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_paymentID] ON [dbo].[DepositProof]
(
	[paymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositProof_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_status] ON [dbo].[DepositProof]
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_DepositProof_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DepositProof_usersID] ON [dbo].[DepositProof]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DepositProof] ADD  CONSTRAINT [DF_DepositProof_paymentID]  DEFAULT (1) FOR [paymentID]
GO
ALTER TABLE [dbo].[DepositProof] ADD  CONSTRAINT [DF_DepositProof_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[DepositProof] ADD  CONSTRAINT [DF_DepositProof_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[DepositProof] ADD  CONSTRAINT [DF_DepositProof_inFinance]  DEFAULT (0) FOR [isFinance]
GO
