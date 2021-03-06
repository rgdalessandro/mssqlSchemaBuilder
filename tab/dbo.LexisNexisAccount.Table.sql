USE [Windhaven]
GO
/****** Object:  Table [dbo].[LexisNexisAccount]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LexisNexisAccount](
	[lexisNexisAccountID] [int] IDENTITY(10,1) NOT NULL,
	[locationID] [int] NULL,
	[companyID] [int] NULL,
	[accountType] [varchar](50) NULL,
	[accountNumber] [varchar](10) NULL,
	[accountNode] [varchar](3) NULL,
	[status] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[modDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_LexisNexisAccount] PRIMARY KEY CLUSTERED 
(
	[lexisNexisAccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_producerID]  DEFAULT ((1)) FOR [locationID]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_accountType]  DEFAULT ('Agency') FOR [accountType]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_modDate]  DEFAULT (getdate()) FOR [modDate]
GO
ALTER TABLE [dbo].[LexisNexisAccount] ADD  CONSTRAINT [DF_LexisNexisAccount_usersID]  DEFAULT ((1)) FOR [usersID]
GO
