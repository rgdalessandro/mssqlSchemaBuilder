USE [Windhaven]
GO
/****** Object:  Table [dbo].[APlus_Auto_Party]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APlus_Auto_Party](
	[aplus_Auto_PartyID] [int] IDENTITY(10,1) NOT NULL,
	[aplus_RequestID] [int] NULL,
	[policyID] [int] NULL,
	[gender] [nvarchar](50) NULL,
	[dob] [varchar](50) NULL,
	[dlNum] [varchar](50) NULL,
	[dlState] [varchar](50) NULL,
	[partyType] [varchar](5) NULL,
	[fName] [varchar](50) NULL,
	[lName] [varchar](50) NULL,
	[address1] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[claimNumber] [varchar](50) NULL,
 CONSTRAINT [PK_APlus_Auto_Party] PRIMARY KEY CLUSTERED 
(
	[aplus_Auto_PartyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
