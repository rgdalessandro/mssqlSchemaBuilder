USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyholderLoginLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyholderLoginLog](
	[policyHolderLoginLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyHolderLoginID] [int] NULL,
	[insuredID] [int] NULL,
	[policyID] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[emailInvoice] [bit] NULL,
	[emailCancelNotice] [bit] NULL,
	[emailDocuments] [bit] NULL,
	[subscribedDate] [datetime] NULL,
	[unsubscribedDate] [datetime] NULL,
	[logDate] [datetime] NULL,
	[logUsersID] [int] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_PolicyholderLoginLog] PRIMARY KEY CLUSTERED 
(
	[policyHolderLoginLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyholderLoginLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyholderLoginLog_policyID] ON [dbo].[PolicyholderLoginLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyholderLoginLog] ADD  CONSTRAINT [DF_PolicyholderLoginLog_emailDocuments]  DEFAULT ((0)) FOR [emailDocuments]
GO
ALTER TABLE [dbo].[PolicyholderLoginLog] ADD  CONSTRAINT [DF_dbo_PolicyholderLoginLog_logDate]  DEFAULT (getdate()) FOR [logDate]
GO
ALTER TABLE [dbo].[PolicyholderLoginLog] ADD  CONSTRAINT [DF_dbo_PolicyholderLoginLog_logUsersID]  DEFAULT ((1)) FOR [logUsersID]
GO
