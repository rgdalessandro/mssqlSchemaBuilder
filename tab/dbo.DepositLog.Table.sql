USE [Windhaven]
GO
/****** Object:  Table [dbo].[DepositLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepositLog](
	[depositLogID] [int] IDENTITY(10,1) NOT NULL,
	[depositID] [int] NOT NULL,
	[depositNum] [int] NOT NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[amount] [dbo].[CURRENCY] NULL,
	[numOfPayments] [int] NULL,
	[startUserID] [int] NULL,
	[endUserID] [int] NULL,
	[exportDate] [smalldatetime] NULL,
	[stopDate] [smalldatetime] NULL,
	[stopUsersID] [int] NULL,
	[changeType] [varchar](1) NULL,
	[addDate] [datetime] NULL,
	[changeUsersID] [int] NULL,
 CONSTRAINT [PK_DepositLog] PRIMARY KEY CLUSTERED 
(
	[depositLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DepositLog] ADD  CONSTRAINT [DF_DepositLog_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
