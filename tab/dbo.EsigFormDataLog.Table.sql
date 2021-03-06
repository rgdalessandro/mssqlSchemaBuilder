USE [Windhaven]
GO
/****** Object:  Table [dbo].[EsigFormDataLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EsigFormDataLog](
	[EsigFormDataLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[templateName] [varchar](25) NULL,
	[EsigName] [varchar](60) NULL,
	[EsigInitials] [varchar](3) NULL,
	[EsigDateTime] [datetime] NULL,
	[usersID] [int] NULL,
	[EsigUserType] [tinyint] NULL,
	[masterSessionData] [varchar](255) NULL,
	[sessionData] [varchar](255) NULL,
 CONSTRAINT [PK_EsigFormDataLog] PRIMARY KEY CLUSTERED 
(
	[EsigFormDataLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_EsigFormDataLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_EsigFormDataLog_policyID] ON [dbo].[EsigFormDataLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
