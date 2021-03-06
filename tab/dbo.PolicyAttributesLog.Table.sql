USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyAttributesLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyAttributesLog](
	[policyAttributesLogID] [int] IDENTITY(10,1) NOT NULL,
	[policyAttributesID] [int] NOT NULL,
	[policyID] [int] NOT NULL,
	[attributeTypeID] [int] NOT NULL,
	[attributeValue] [varchar](25) NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NOT NULL,
	[addDate] [datetime] NULL,
 CONSTRAINT [PK_PolicyAttributesLog] PRIMARY KEY CLUSTERED 
(
	[policyAttributesLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyAttributesLog_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyAttributesLog_policyID] ON [dbo].[PolicyAttributesLog]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
