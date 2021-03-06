USE [Windhaven]
GO
/****** Object:  Table [dbo].[AdditionalInsuredCoverage]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalInsuredCoverage](
	[AdditionalInsuredCoverageID] [int] IDENTITY(10,1) NOT NULL,
	[personalLiabilityLimit] [decimal](19, 2) NULL,
	[medPayLimit] [decimal](19, 2) NULL,
	[premium] [int] NULL,
	[ratingVersionID] [int] NULL,
 CONSTRAINT [PK_AdditionalInsuredCoverage] PRIMARY KEY CLUSTERED 
(
	[AdditionalInsuredCoverageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
