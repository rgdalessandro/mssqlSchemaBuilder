USE [Windhaven]
GO
/****** Object:  Table [dbo].[BankAccountCheckType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountCheckType](
	[bankAccountCheckTypeID] [int] IDENTITY(10,1) NOT NULL,
	[stateID] [int] NULL,
	[checkType] [int] NULL,
	[companyID] [int] NULL,
	[bankAccountID] [int] NULL,
	[usersID] [int] NULL,
	[lastModified] [smalldatetime] NULL,
 CONSTRAINT [PK_BankAccountCheckType] PRIMARY KEY CLUSTERED 
(
	[bankAccountCheckTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_stateID]  DEFAULT (1) FOR [stateID]
GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_checkType]  DEFAULT (0) FOR [checkType]
GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_bankAccountID]  DEFAULT (1) FOR [bankAccountID]
GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[BankAccountCheckType] ADD  CONSTRAINT [DF_BankAccountCheckType_lastModified]  DEFAULT (getdate()) FOR [lastModified]
GO
