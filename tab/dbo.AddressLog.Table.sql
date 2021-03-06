USE [Windhaven]
GO
/****** Object:  Table [dbo].[AddressLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressLog](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeDate] [datetime] NULL,
	[usersID] [int] NULL,
	[addressID] [int] NULL,
	[street] [varchar](64) NULL,
	[street2] [varchar](64) NULL,
	[city] [varchar](64) NULL,
	[state] [varchar](32) NULL,
	[zipcode] [varchar](16) NULL,
	[county] [varchar](64) NULL,
	[validated] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AddressLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
