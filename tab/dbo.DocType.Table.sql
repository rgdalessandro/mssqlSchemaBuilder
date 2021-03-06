USE [Windhaven]
GO
/****** Object:  Table [dbo].[DocType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocType](
	[docTypeID] [int] IDENTITY(1,1) NOT NULL,
	[docType] [nvarchar](50) NULL,
	[docProcessFlow] [int] NULL,
	[docColor] [nvarchar](50) NULL,
	[docTypeNum] [int] NULL,
	[docGroup] [nvarchar](50) NULL,
 CONSTRAINT [PK_DocType] PRIMARY KEY CLUSTERED 
(
	[docTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
