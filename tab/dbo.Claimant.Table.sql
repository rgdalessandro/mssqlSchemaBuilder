USE [Windhaven]
GO
/****** Object:  Table [dbo].[Claimant]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claimant](
	[claimantID] [int] IDENTITY(10,1) NOT NULL,
	[claimantName] [dbo].[NAME_Business] NULL,
	[claimIncidentID] [int] NOT NULL,
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
	[addDate] [smalldatetime] NULL,
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
	[medicareClaimNum] [varchar](20) NULL,
 CONSTRAINT [PK_Claimant] PRIMARY KEY CLUSTERED 
(
	[claimantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IN_7_Claimantfname1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_7_Claimantfname1] ON [dbo].[Claimant]
(
	[fname1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IN_9_Claimantlname1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_9_Claimantlname1] ON [dbo].[Claimant]
(
	[lname1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Claimant_claimIncidentID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Claimant_claimIncidentID] ON [dbo].[Claimant]
(
	[claimIncidentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Claimant_lawyerID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Claimant_lawyerID] ON [dbo].[Claimant]
(
	[lawyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClaimantClaimantName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimantClaimantName] ON [dbo].[Claimant]
(
	[claimantName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_lawyerID]  DEFAULT ((0)) FOR [lawyerID]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_isInsured]  DEFAULT ((0)) FOR [isInsured]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_individualType]  DEFAULT ((0)) FOR [individualType]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_partyType]  DEFAULT ((0)) FOR [partyType]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_injured]  DEFAULT ((0)) FOR [injured]
GO
ALTER TABLE [dbo].[Claimant] ADD  CONSTRAINT [DF_Claimant_participantType]  DEFAULT ((0)) FOR [participantType]
GO
