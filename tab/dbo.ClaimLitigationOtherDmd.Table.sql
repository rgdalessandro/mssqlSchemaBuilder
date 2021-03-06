USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimLitigationOtherDmd]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimLitigationOtherDmd](
	[otherDemandId] [int] IDENTITY(10,1) NOT NULL,
	[claimLitigationId] [int] NULL,
	[othrDemandTitle] [varchar](80) NULL,
	[othrDemandAmount] [dbo].[CURRENCY] NULL,
	[demandStep] [int] NULL,
	[changeInAmount] [bit] NULL,
 CONSTRAINT [PK_claimLitigationOtherDmd] PRIMARY KEY CLUSTERED 
(
	[otherDemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
