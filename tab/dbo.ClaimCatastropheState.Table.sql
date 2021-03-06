USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimCatastropheState]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCatastropheState](
	[claimCatastropheStateID] [int] IDENTITY(10,1) NOT NULL,
	[claimCatastropheID] [int] NULL,
	[stateID] [int] NULL,
 CONSTRAINT [PK_ClaimCatastropheState] PRIMARY KEY CLUSTERED 
(
	[claimCatastropheStateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
