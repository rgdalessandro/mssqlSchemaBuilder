USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyRequiredDocumentResponse]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyRequiredDocumentResponse](
	[PolicyRequiredDocumentResponseID] [int] IDENTITY(1,1) NOT NULL,
	[PolicyID] [int] NOT NULL,
	[PolicyRequiredDocumentQuestionID] [int] NOT NULL,
	[Answer] [tinyint] NOT NULL,
	[UserId] [int] NULL,
	[dateAdded] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[dateModified] [datetime] NULL,
 CONSTRAINT [PK__PolicyRe__B0C3E433B8BE5FC7] PRIMARY KEY CLUSTERED 
(
	[PolicyRequiredDocumentResponseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyRequiredDocumentResponse_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyRequiredDocumentResponse_policyID] ON [dbo].[PolicyRequiredDocumentResponse]
(
	[PolicyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
