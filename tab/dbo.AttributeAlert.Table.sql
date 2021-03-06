USE [Windhaven]
GO
/****** Object:  Table [dbo].[AttributeAlert]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeAlert](
	[ID] [int] IDENTITY(10,1) NOT NULL,
	[attributeTypeID] [int] NOT NULL,
	[attributeAlertMessage] [varchar](100) NULL,
 CONSTRAINT [PK_AttributeAlert] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
