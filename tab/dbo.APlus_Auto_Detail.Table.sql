USE [Windhaven]
GO
/****** Object:  Table [dbo].[APlus_Auto_Detail]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APlus_Auto_Detail](
	[aplus_Auto_DetailID] [int] IDENTITY(10,1) NOT NULL,
	[aplus_RequestID] [int] NULL,
	[policyID] [int] NULL,
	[lossCoverageCD] [varchar](50) NULL,
	[lossTypeCD] [varchar](50) NULL,
	[claimStatus] [varchar](10) NULL,
	[lossAmount] [varchar](50) NULL,
	[claimCode] [varchar](50) NULL,
	[claimNumber] [varchar](50) NULL,
	[lossDesc] [varchar](50) NULL,
	[modelYear] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[VINInfo] [varchar](50) NULL,
	[lossAddress] [varchar](50) NULL,
	[lossCity] [varchar](50) NULL,
	[lossState] [varchar](50) NULL,
	[lossPostal] [varchar](50) NULL,
	[lossCatastrophe] [varchar](50) NULL,
 CONSTRAINT [PK_APlus_Auto_Detail] PRIMARY KEY CLUSTERED 
(
	[aplus_Auto_DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
