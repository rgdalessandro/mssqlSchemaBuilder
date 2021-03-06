USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicySuspenseType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicySuspenseType](
	[policySuspenseTypeID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[body] [varchar](3000) NULL,
	[suspenseType] [tinyint] NULL,
	[expiresDays] [tinyint] NULL,
	[usersIDFrom] [int] NULL,
	[usersIDTo] [int] NULL,
	[suspenseRecipient] [tinyint] NULL,
	[variable] [varchar](20) NULL,
	[sortOrder] [tinyint] NULL,
	[type] [tinyint] NULL,
	[policyType] [varchar](50) NULL,
	[companyID] [varchar](50) NULL,
	[stateID] [varchar](100) NULL,
	[policyTerm] [varchar](50) NULL,
	[userType] [varchar](50) NULL,
	[businessType] [varchar](25) NULL,
	[value1] [int] NULL,
	[value2] [int] NULL,
	[terminationDetailID] [int] NULL,
	[active] [tinyint] NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[sendRFI] [tinyint] NULL,
	[listOther] [varchar](150) NULL,
 CONSTRAINT [PK_PolicySuspenseType] PRIMARY KEY CLUSTERED 
(
	[policySuspenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [CK_variable] UNIQUE NONCLUSTERED 
(
	[variable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = OFF, ALLOW_PAGE_LOCKS = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__suspe__2CFB6A9C]  DEFAULT ((0)) FOR [suspenseType]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__expir__2DEF8ED5]  DEFAULT ((0)) FOR [expiresDays]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__users__2EE3B30E]  DEFAULT ((2)) FOR [usersIDFrom]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__users__2FD7D747]  DEFAULT ((1)) FOR [usersIDTo]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__sortO__30CBFB80]  DEFAULT ((1)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySusp__type__31C01FB9]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__polic__32B443F2]  DEFAULT ('1,2,3,6,12') FOR [policyTerm]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__userT__33A8682B]  DEFAULT ('3') FOR [userType]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__busin__349C8C64]  DEFAULT ('0,1') FOR [businessType]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__termi__3590B09D]  DEFAULT ((1)) FOR [terminationDetailID]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__activ__3684D4D6]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__users__3778F90F]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF__PolicySus__addDa__386D1D48]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PolicySuspenseType] ADD  CONSTRAINT [DF_PolicySuspenseType_sendRFI]  DEFAULT ((0)) FOR [sendRFI]
GO
