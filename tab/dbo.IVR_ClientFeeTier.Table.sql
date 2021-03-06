USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_ClientFeeTier]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_ClientFeeTier](
	[clientFeeTierID] [int] IDENTITY(10,1) NOT NULL,
	[clientID] [int] NOT NULL,
	[minimum] [dbo].[CURRENCY] NOT NULL,
	[maximum] [dbo].[CURRENCY] NOT NULL,
	[primorisFee] [dbo].[CURRENCY] NOT NULL,
 CONSTRAINT [PK_IVR_ClientFeeTier] PRIMARY KEY CLUSTERED 
(
	[clientFeeTierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
