USE [Windhaven]
GO
/****** Object:  Table [dbo].[ESigFormData_SecurityQuestions]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESigFormData_SecurityQuestions](
	[securityQuestionID] [int] IDENTITY(10,1) NOT NULL,
	[securityQuestion] [varchar](250) NULL,
	[active] [tinyint] NULL,
	[dateAdded] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[securityQuestionNum] [int] NULL,
 CONSTRAINT [PK_ESigFormData_SecurityQuestions] PRIMARY KEY CLUSTERED 
(
	[securityQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ESigFormData_SecurityQuestions] ADD  CONSTRAINT [DF_FormData_SecurityQuestions_dateAdded]  DEFAULT (getdate()) FOR [dateAdded]
GO
ALTER TABLE [dbo].[ESigFormData_SecurityQuestions] ADD  CONSTRAINT [DF_FormData_SecurityQuestions_usersID]  DEFAULT ((2)) FOR [usersID]
GO
ALTER TABLE [dbo].[ESigFormData_SecurityQuestions] ADD  CONSTRAINT [DF_FormData_SecurityQuestions_securityQuestionNum]  DEFAULT ((1)) FOR [securityQuestionNum]
GO
