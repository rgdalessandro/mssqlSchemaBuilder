USE [Windhaven]
GO
/****** Object:  Table [dbo].[AppQuestion]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppQuestion](
	[appQuestionID] [int] IDENTITY(10,1) NOT NULL,
	[ratingVersionID] [int] NULL,
	[ratingGroupID] [int] NULL,
	[type] [char](1) NULL,
	[deny] [char](1) NULL,
	[comment] [char](1) NULL,
	[question] [varchar](500) NULL,
	[doNotBindAnswer] [char](1) NULL,
	[sortOrder] [tinyint] NULL,
	[active] [tinyint] NULL,
	[policyType] [tinyint] NULL,
	[usersID] [int] NULL,
	[addDate] [datetime] NULL,
	[shortID] [varchar](10) NULL,
	[URFlag] [tinyint] NULL,
	[NAOption] [tinyint] NULL,
	[unacceptableAnswerStatement] [varchar](500) NULL,
 CONSTRAINT [PK_AppQuestion] PRIMARY KEY CLUSTERED 
(
	[appQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AppQuestion_raintVersionIDActiveSortorder_covering]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppQuestion_raintVersionIDActiveSortorder_covering] ON [dbo].[AppQuestion]
(
	[ratingVersionID] ASC,
	[sortOrder] ASC,
	[active] ASC
)
INCLUDE ( 	[appQuestionID],
	[deny],
	[comment],
	[question],
	[shortID],
	[NAOption]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppQuestion] ADD  CONSTRAINT [DF_AppQuestion_ratingVersionID]  DEFAULT ((1)) FOR [ratingVersionID]
GO
ALTER TABLE [dbo].[AppQuestion] ADD  CONSTRAINT [DF_AppQuestion_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[AppQuestion] ADD  CONSTRAINT [DF_AppQuestion_policyType]  DEFAULT ((1)) FOR [policyType]
GO
ALTER TABLE [dbo].[AppQuestion] ADD  CONSTRAINT [DF_AppQuestion_usersID]  DEFAULT ((3)) FOR [usersID]
GO
ALTER TABLE [dbo].[AppQuestion] ADD  CONSTRAINT [DF_AppQuestion_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
