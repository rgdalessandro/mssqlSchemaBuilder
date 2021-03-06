USE [Windhaven]
GO
/****** Object:  Table [dbo].[AttributeAlertLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeAlertLog](
	[ID] [int] IDENTITY(10,1) NOT NULL,
	[AttributeAlertID] [int] NOT NULL,
	[attributeTypeID] [int] NOT NULL,
	[attributeAlertmessage] [varchar](100) NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
 CONSTRAINT [PK_AttributeAlertLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
