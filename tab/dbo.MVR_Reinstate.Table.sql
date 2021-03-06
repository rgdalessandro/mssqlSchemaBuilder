USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_Reinstate]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_Reinstate](
	[MVR_ReinstateID] [int] IDENTITY(1,1) NOT NULL,
	[MVR_RequestID] [int] NULL,
	[Description] [varchar](50) NULL,
	[EventType] [varchar](15) NULL,
	[EligibleDate] [varchar](12) NULL,
 CONSTRAINT [PK_MVR_Reinstate] PRIMARY KEY CLUSTERED 
(
	[MVR_ReinstateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_MVR_Reinstate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_MVR_Reinstate] ON [dbo].[MVR_Reinstate]
(
	[MVR_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MVR_Reinstate] ADD  CONSTRAINT [DF_MVR_Reinstate_MVR_RequestID]  DEFAULT (1) FOR [MVR_RequestID]
GO
