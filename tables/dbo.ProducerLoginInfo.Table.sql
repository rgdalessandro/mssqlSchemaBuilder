USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerLoginInfo]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerLoginInfo](
	[Account Name] [nvarchar](255) NOT NULL,
	[Account Code] [nvarchar](255) NOT NULL,
	[Username] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[ProducerID] [nvarchar](255) NULL,
	[Update Statements] [nvarchar](255) NOT NULL,
	[enPassword] [varchar](150) NULL
) ON [PRIMARY]

GO
