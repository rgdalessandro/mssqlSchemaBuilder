USE [Windhaven]
GO
/****** Object:  Table [dbo].[Lockout]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lockout](
	[lockoutID] [int] IDENTITY(10,1) NOT NULL,
	[county] [int] NULL,
	[zip] [int] NULL,
	[territory] [int] NULL,
	[companyID] [int] NULL,
	[policyType] [int] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[notes] [varchar](255) NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[stateID] [int] NULL,
	[reason] [int] NULL,
 CONSTRAINT [PK_Lockout] PRIMARY KEY CLUSTERED 
(
	[lockoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
