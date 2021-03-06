USE [Windhaven]
GO
/****** Object:  Table [dbo].[PDF_DataOverflow]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDF_DataOverflow](
	[PDF_DataOverFlowID] [int] IDENTITY(10,1) NOT NULL,
	[serverPath] [varchar](50) NULL,
	[tableJoin] [varchar](150) NULL,
	[whereStatement] [varchar](150) NULL,
	[amountGT] [varchar](25) NULL,
	[originalServerPath] [varchar](50) NULL,
 CONSTRAINT [PK_PDF_DataOverflow] PRIMARY KEY CLUSTERED 
(
	[PDF_DataOverFlowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
