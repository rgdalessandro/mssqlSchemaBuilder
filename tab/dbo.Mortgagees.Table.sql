USE [Windhaven]
GO
/****** Object:  Table [dbo].[Mortgagees]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mortgagees](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[name] [dbo].[NAME_Business] NOT NULL,
	[name2] [dbo].[NAME_Business] NULL,
	[address1] [varchar](65) NULL,
	[address2] [varchar](65) NULL,
	[city] [dbo].[CITYCOUNTY] NOT NULL,
	[state] [dbo].[STATE_Abbrev] NOT NULL,
	[zip] [dbo].[ZIP_Formatted] NOT NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[phone2] [dbo].[PHONE_Formatted] NULL,
	[fax] [dbo].[PHONE_Formatted] NULL,
	[isActive] [bit] NOT NULL,
	[notes] [varchar](500) NULL,
	[addDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Mortgagees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Mortgagees] ADD  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Mortgagees] ADD  DEFAULT (getdate()) FOR [addDate]
GO
