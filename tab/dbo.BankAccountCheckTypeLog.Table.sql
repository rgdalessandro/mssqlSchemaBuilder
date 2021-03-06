USE [Windhaven]
GO
/****** Object:  Table [dbo].[BankAccountCheckTypeLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountCheckTypeLog](
	[bankAccountCheckTypeLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[bankAccountCheckTypeID] [int] NULL,
	[stateID] [int] NULL,
	[checkType] [int] NULL,
	[companyID] [int] NULL,
	[bankAccountID] [int] NULL,
	[lastModified] [smalldatetime] NULL,
 CONSTRAINT [PK_BankAccountCheckTypeLog] PRIMARY KEY CLUSTERED 
(
	[bankAccountCheckTypeLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BankAccountCheckTypeLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
