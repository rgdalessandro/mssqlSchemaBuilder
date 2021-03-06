USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyRequiredDocumentQuestion]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyRequiredDocumentQuestion](
	[PolicyRequiredDocumentQuestionID] [int] NOT NULL,
	[Question] [varchar](200) NOT NULL,
	[DisplayOrder] [smallint] NOT NULL,
 CONSTRAINT [PK__PolicyRe__F1C849ADFD915EB1] PRIMARY KEY CLUSTERED 
(
	[PolicyRequiredDocumentQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
