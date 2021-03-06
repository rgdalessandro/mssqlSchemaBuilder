USE [Windhaven]
GO
/****** Object:  Table [dbo].[AdditionalInsured]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdditionalInsured](
	[additionalInsuredID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[insuredName] [dbo].[NAME_Business] NULL,
	[lineDetailID] [int] NULL,
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
	[insuredType] [tinyint] NULL,
	[policyInterest] [varchar](1000) NULL,
	[insuredID] [int] NULL,
 CONSTRAINT [PK_AdditionalInsured] PRIMARY KEY CLUSTERED 
(
	[additionalInsuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AdditionalInsured_insuredType]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AdditionalInsured_insuredType] ON [dbo].[AdditionalInsured]
(
	[insuredType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AdditionalInsuredInsuredName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AdditionalInsuredInsuredName] ON [dbo].[AdditionalInsured]
(
	[insuredName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_AdditionalInsuredPolicyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AdditionalInsuredPolicyID] ON [dbo].[AdditionalInsured]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdditionalInsured] ADD  CONSTRAINT [DF_AdditionalInsured_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[AdditionalInsured] ADD  CONSTRAINT [DF_AdditionalInsured_lineDetailID]  DEFAULT (1) FOR [lineDetailID]
GO
ALTER TABLE [dbo].[AdditionalInsured] ADD  CONSTRAINT [DF_AdditionalInsured_businessType]  DEFAULT (0) FOR [businessType]
GO
ALTER TABLE [dbo].[AdditionalInsured] ADD  CONSTRAINT [DF_AdditionalInsured_insuredType]  DEFAULT (0) FOR [insuredType]
GO
ALTER TABLE [dbo].[AdditionalInsured] ADD  CONSTRAINT [DF_AdditionalInsured_insuredID]  DEFAULT (1) FOR [insuredID]
GO
