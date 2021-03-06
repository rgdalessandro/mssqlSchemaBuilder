USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimCode]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCode](
	[claimCodeID] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](8) NULL,
	[codeDescription] [varchar](500) NULL,
	[policyType] [tinyint] NULL,
	[displayOrder] [tinyint] NULL,
	[claimCodeCategoryID] [int] NULL,
 CONSTRAINT [PK_ClaimCode] PRIMARY KEY CLUSTERED 
(
	[claimCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimCode] ADD  CONSTRAINT [DF_ClaimCode_codeType]  DEFAULT ((1)) FOR [policyType]
GO
ALTER TABLE [dbo].[ClaimCode] ADD  CONSTRAINT [DF_ClaimCode_displayOrder]  DEFAULT ((0)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[ClaimCode]  WITH CHECK ADD  CONSTRAINT [FK_ClaimCode_ClaimCodeCategories] FOREIGN KEY([claimCodeCategoryID])
REFERENCES [dbo].[ClaimCodeCategories] ([id])
GO
ALTER TABLE [dbo].[ClaimCode] CHECK CONSTRAINT [FK_ClaimCode_ClaimCodeCategories]
GO
