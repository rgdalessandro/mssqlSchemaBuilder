USE [Windhaven]
GO
/****** Object:  Table [dbo].[ValidateARTrans]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValidateARTrans](
	[validateArTransID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[policyNum] [varchar](20) NULL,
	[effectiveDate] [smalldatetime] NULL,
	[expirationDate] [smalldatetime] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[type] [tinyint] NULL,
	[premium] [dbo].[CURRENCY] NULL,
	[install] [dbo].[CURRENCY] NULL,
	[policy] [dbo].[CURRENCY] NULL,
	[reinstate] [dbo].[CURRENCY] NULL,
	[late] [dbo].[CURRENCY] NULL,
	[nsf] [dbo].[CURRENCY] NULL,
	[sr22] [dbo].[CURRENCY] NULL,
	[expense] [dbo].[CURRENCY] NULL,
	[other] [dbo].[CURRENCY] NULL,
	[unapplied] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ValidateARTrans] PRIMARY KEY CLUSTERED 
(
	[validateArTransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_ValidateARTrans]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ValidateARTrans] ON [dbo].[ValidateARTrans]
(
	[policyID] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_ValidateARTrans_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ValidateARTrans_policyID] ON [dbo].[ValidateARTrans]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ValidateARTrans] ADD  CONSTRAINT [DF_ValidateARTrans_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
