USE [Windhaven]
GO
/****** Object:  Table [dbo].[Adjuster]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adjuster](
	[adjusterID] [int] IDENTITY(10,1) NOT NULL,
	[code] [varchar](15) NULL,
	[subcode] [varchar](15) NULL,
	[adjusterName] [dbo].[NAME_Business] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[taxID] [dbo].[TAXID_Formatted] NULL,
	[taxType] [tinyint] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[phone2] [dbo].[PHONE_Formatted] NULL,
	[fax] [dbo].[PHONE_Formatted] NULL,
	[tollFree] [dbo].[PHONE_Formatted] NULL,
	[email] [dbo].[EMAIL] NULL,
	[status] [tinyint] NULL,
	[subAdjuster] [tinyint] NOT NULL,
	[usersID] [int] NULL,
	[mainAdjusterID] [int] NULL,
	[mainAdjusterName] [dbo].[NAME_Business] NULL,
	[branchID] [int] NULL,
	[branchName] [dbo].[NAME_Business] NULL,
	[commissionRate] [smallmoney] NULL,
	[renewalCommissionRate] [smallmoney] NULL,
	[territory] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[commissionCheckMethod] [tinyint] NULL,
	[monitorAdjuster] [tinyint] NULL,
	[stateLicensing] [varchar](2500) NULL,
	[contactFName] [dbo].[NAME_Person] NULL,
	[contactMiddle] [dbo].[NAME_Person] NULL,
	[contactLName] [dbo].[NAME_Person] NULL,
	[contactTitle] [dbo].[NAME_Business] NULL,
	[addDate] [smalldatetime] NULL,
	[importAdjusterCode] [varchar](15) NULL,
	[physicalAddress1] [dbo].[ADDRESS] NULL,
	[physicalAddress2] [dbo].[ADDRESS] NULL,
	[physicalCity] [dbo].[CITYCOUNTY] NULL,
	[physicalState] [dbo].[STATE_Abbrev] NULL,
	[physicalZip] [dbo].[ZIP_Formatted] NULL,
 CONSTRAINT [PK_Adjuster] PRIMARY KEY CLUSTERED 
(
	[adjusterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
