USE [Windhaven]
GO
/****** Object:  Table [dbo].[ComprehensiveLiability]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprehensiveLiability](
	[ComprehensiveLiabilityID] [int] IDENTITY(10,1) NOT NULL,
	[personalLiabilityLimit] [decimal](19, 2) NULL,
	[medPayLimit] [decimal](19, 2) NULL,
	[premium] [int] NULL,
	[ratingVersionID] [int] NULL,
 CONSTRAINT [PK_ComprehensiveLiability] PRIMARY KEY CLUSTERED 
(
	[ComprehensiveLiabilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
