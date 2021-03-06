USE [Windhaven]
GO
/****** Object:  Table [dbo].[DataPreFillDriver]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPreFillDriver](
	[DataPreFillDriverID] [int] IDENTITY(10,1) NOT NULL,
	[fake] [tinyint] NULL,
	[source] [varchar](50) NULL,
	[prefix] [varchar](50) NULL,
	[first] [varchar](50) NULL,
	[middle] [varchar](50) NULL,
	[last] [varchar](50) NULL,
	[suffix] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[licenseNumber] [varchar](50) NULL,
	[licenseState] [varchar](50) NULL,
	[issueDate] [varchar](50) NULL,
	[expirationDate] [varchar](50) NULL,
	[DataPrefillRequestID] [int] NULL,
 CONSTRAINT [PK_DataPreFillDriver] PRIMARY KEY CLUSTERED 
(
	[DataPreFillDriverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DataPreFillDriver] ADD  CONSTRAINT [DF_DataPreFillDriver_DataPrefillRequestID]  DEFAULT (1) FOR [DataPrefillRequestID]
GO
