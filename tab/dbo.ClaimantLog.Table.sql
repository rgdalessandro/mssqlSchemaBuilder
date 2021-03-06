USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimantLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimantLog](
	[claimantLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[claimantID] [int] NULL,
	[claimantName] [dbo].[NAME_Business] NULL,
	[claimIncidentID] [int] NULL,
	[fname1] [dbo].[NAME_Person] NULL,
	[middle1] [dbo].[NAME_Person] NULL,
	[lname1] [dbo].[NAME_Person] NULL,
	[dob] [smalldatetime] NULL,
	[address1] [dbo].[ADDRESS] NULL,
	[address2] [dbo].[ADDRESS] NULL,
	[city] [dbo].[CITYCOUNTY] NULL,
	[state] [varchar](3) NULL,
	[zip] [dbo].[ZIP_Formatted] NULL,
	[county] [dbo].[CITYCOUNTY] NULL,
	[phone] [dbo].[PHONE_Formatted] NULL,
	[phone2] [dbo].[PHONE_Formatted] NULL,
	[fax] [dbo].[PHONE_Formatted] NULL,
	[tollFree] [dbo].[PHONE_Formatted] NULL,
	[pager] [dbo].[PHONE_Formatted] NULL,
	[email] [dbo].[EMAIL] NULL,
	[notes] [varchar](2000) NULL,
	[taxID] [dbo].[TAXID_Formatted] NULL,
	[lawyerID] [int] NULL,
	[insuranceCompany] [varchar](100) NULL,
	[policyNumber] [varchar](20) NULL,
	[insuranceRepresentative] [varchar](100) NULL,
	[isInsured] [tinyint] NULL,
	[individualType] [tinyint] NULL,
	[partyType] [tinyint] NULL,
	[injured] [tinyint] NULL,
	[injuryDescription] [varchar](200) NULL,
	[relationToInsured] [varchar](25) NULL,
	[priorCarrier] [dbo].[NAME_Business] NULL,
	[priorPolicyNum] [varchar](25) NULL,
	[participantType] [tinyint] NULL,
	[typeNotes] [varchar](50) NULL,
	[doctor] [varchar](50) NULL,
 CONSTRAINT [PK_ClaimantLog] PRIMARY KEY CLUSTERED 
(
	[claimantLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimantLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
