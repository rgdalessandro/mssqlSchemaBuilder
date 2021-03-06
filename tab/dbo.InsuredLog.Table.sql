USE [Windhaven]
GO
/****** Object:  Table [dbo].[InsuredLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuredLog](
	[insuredLogID] [int] IDENTITY(10,1) NOT NULL,
	[changeUsersID] [int] NULL,
	[dropDate] [datetime] NOT NULL,
	[insuredID] [int] NULL,
	[insuredName] [dbo].[NAME_Business] NULL,
	[fname1] [dbo].[NAME_Person] NULL,
	[middle1] [dbo].[NAME_Person] NULL,
	[lname1] [dbo].[NAME_Person] NULL,
	[fname2] [dbo].[NAME_Person] NULL,
	[middle2] [dbo].[NAME_Person] NULL,
	[lname2] [dbo].[NAME_Person] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [dbo].[STATE_Abbrev] NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[county] [dbo].[CITYCOUNTY] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[phone2] [dbo].[PHONE_Formatted] NULL,
	[fax] [dbo].[PHONE_Formatted] NULL,
	[tollFree] [dbo].[PHONE_Formatted] NULL,
	[pager] [dbo].[PHONE_Formatted] NULL,
	[email] [dbo].[EMAIL] NULL,
	[notes] [varchar](3000) NULL,
	[taxID] [dbo].[TAXID_Formatted] NULL,
	[businessType] [tinyint] NULL,
	[dbaName] [dbo].[NAME_Business] NULL,
	[addDate] [smalldatetime] NULL,
	[countryCode] [tinyint] NULL,
	[billingAddress1] [dbo].[ADDRESS] NULL,
	[billingAddress2] [dbo].[ADDRESS] NULL,
	[billingCity] [dbo].[CITYCOUNTY] NULL,
	[billingState] [dbo].[STATE_Abbrev] NULL,
	[billingZip] [dbo].[ZIP_Formatted] NULL,
	[billTo] [dbo].[NAME_Business] NULL,
	[creditScore] [int] NULL,
	[noLogEntry] [tinyint] NULL,
	[tempRecord] [tinyint] NULL,
	[creditStatus] [tinyint] NULL,
	[creditScoreTable] [tinyint] NULL,
	[taxID2] [dbo].[TAXID_Formatted] NULL,
	[creditStatus2] [tinyint] NULL,
	[creditScoreTable2] [tinyint] NULL,
	[creditScore2] [int] NULL,
	[dob1] [smalldatetime] NULL,
	[dob2] [smalldatetime] NULL,
	[MaritalStatus1] [tinyint] NULL,
	[MaritalStatus2] [tinyint] NULL,
	[policyEndorseID] [int] NULL,
	[actionType] [varchar](1) NULL,
	[changeDate] [datetime] NULL,
	[securityQuestionID1] [tinyint] NULL,
	[securityQuestionID2] [tinyint] NULL,
	[securityAnswer1] [varchar](70) NULL,
	[securityAnswer2] [varchar](70) NULL,
	[sendEDocs] [tinyint] NULL,
	[occupation] [varchar](50) NULL,
	[occupation2] [varchar](50) NULL,
	[mailingAddressID] [int] NULL,
	[billingAddressID] [int] NULL,
 CONSTRAINT [PK_InsuredLog_insuredLogID] PRIMARY KEY CLUSTERED 
(
	[insuredLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[InsuredLog] ADD  CONSTRAINT [DF__InsuredLog__dropDate__471A63FB]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[InsuredLog] ADD  CONSTRAINT [DF__InsuredLo__chang__7E0B7189]  DEFAULT (getdate()) FOR [changeDate]
GO
ALTER TABLE [dbo].[InsuredLog] ADD  DEFAULT ((0)) FOR [sendEDocs]
GO
