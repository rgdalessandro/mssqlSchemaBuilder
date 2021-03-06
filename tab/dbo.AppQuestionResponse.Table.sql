USE [Windhaven]
GO
/****** Object:  Table [dbo].[AppQuestionResponse]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppQuestionResponse](
	[appQuestionResponseID] [int] IDENTITY(10,1) NOT NULL,
	[appQuestionID] [int] NULL,
	[policyID] [int] NULL,
	[response] [tinyint] NULL,
	[comment] [varchar](400) NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AppQuestionResponse] PRIMARY KEY CLUSTERED 
(
	[appQuestionResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AppQuestionResponse_appQuestionID_policyID_fc2784f6afa9b5488d65288a0c7cb658]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppQuestionResponse_appQuestionID_policyID_fc2784f6afa9b5488d65288a0c7cb658] ON [dbo].[AppQuestionResponse]
(
	[policyID] ASC,
	[appQuestionID] ASC
)
INCLUDE ( 	[appQuestionResponseID],
	[response],
	[comment],
	[usersID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppQuestionResponse_policyID_f6e05d1a063c0ef6dc00d639c6ca0f0a]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppQuestionResponse_policyID_f6e05d1a063c0ef6dc00d639c6ca0f0a] ON [dbo].[AppQuestionResponse]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppQuestionResponse] ADD  CONSTRAINT [DF_AppQuestionResponse_appQuestionID]  DEFAULT ((1)) FOR [appQuestionID]
GO
ALTER TABLE [dbo].[AppQuestionResponse] ADD  CONSTRAINT [DF_AppQuestionResponse_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[AppQuestionResponse] ADD  CONSTRAINT [DF_AppQuestionResponse_usersID]  DEFAULT ((3)) FOR [usersID]
GO
ALTER TABLE [dbo].[AppQuestionResponse] ADD  CONSTRAINT [DF_AppQuestionResponse_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
