USE [Windhaven]
GO
/****** Object:  Table [dbo].[Lawyer]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lawyer](
	[lawyerID] [int] IDENTITY(10,1) NOT NULL,
	[firmName] [varchar](100) NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[county] [dbo].[CITYCOUNTY] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[mobile] [dbo].[PHONE_Formatted] NULL,
	[fax] [dbo].[PHONE_Formatted] NULL,
	[tollfree] [dbo].[PHONE_Formatted] NULL,
	[pager] [dbo].[PHONE_Formatted] NULL,
	[email] [dbo].[EMAIL] NULL,
	[fname] [dbo].[NAME_Person] NULL,
	[middle] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[lawyerRep] [int] NULL,
 CONSTRAINT [PK_Lawyer] PRIMARY KEY CLUSTERED 
(
	[lawyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Lawyer]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lawyer] ON [dbo].[Lawyer]
(
	[lawyerRep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
