USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimSuspenseType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimSuspenseType](
	[claimSuspenseTypeID] [int] IDENTITY(10,1) NOT NULL,
	[suspenseType] [varchar](50) NULL,
	[suspenseTitle] [varchar](150) NULL,
	[suspenseBody] [varchar](5000) NULL,
	[suspenseDays] [smallint] NULL,
	[suspenseUsersIDTo] [int] NULL,
	[completeID] [int] NULL,
	[claimNoteTypeID] [int] NULL,
	[memoID] [int] NULL,
	[active] [bit] NULL,
	[sortOrder] [smallint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[initPayment] [tinyint] NULL,
	[autoGenerateMemo] [bit] NULL,
	[sendMemo] [bit] NULL,
 CONSTRAINT [PK_ClaimSuspenseType] PRIMARY KEY CLUSTERED 
(
	[claimSuspenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_suspenseUsersIDTo]  DEFAULT ((1)) FOR [suspenseUsersIDTo]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_completeID]  DEFAULT ((0)) FOR [completeID]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_claimNoteTypeID]  DEFAULT ((0)) FOR [claimNoteTypeID]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_memoID]  DEFAULT ((0)) FOR [memoID]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_usersID]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_initPayment]  DEFAULT ((0)) FOR [initPayment]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_autoGenerateMemo]  DEFAULT ((0)) FOR [autoGenerateMemo]
GO
ALTER TABLE [dbo].[ClaimSuspenseType] ADD  CONSTRAINT [DF_ClaimSuspenseType_sendMemo]  DEFAULT ((0)) FOR [sendMemo]
GO
