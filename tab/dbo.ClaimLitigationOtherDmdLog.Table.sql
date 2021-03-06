USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimLitigationOtherDmdLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimLitigationOtherDmdLog](
	[OtherDemandLogID] [int] IDENTITY(10,1) NOT NULL,
	[otherDemandID] [int] NULL,
	[claimLitigationID] [int] NULL,
	[othrDemandTitle] [varchar](80) NULL,
	[othrDemandAmount] [dbo].[CURRENCY] NULL,
	[demandStep] [int] NULL,
	[changeInAmount] [bit] NULL,
 CONSTRAINT [PK_ClaimLitigationOtherDmdLog] PRIMARY KEY CLUSTERED 
(
	[OtherDemandLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
