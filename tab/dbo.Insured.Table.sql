USE [Windhaven]
GO
/****** Object:  Table [dbo].[Insured]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insured](
	[insuredID] [int] IDENTITY(10,1) NOT NULL,
	[insuredName] [dbo].[NAME_Business] NULL,
	[fname1] [dbo].[NAME_Person] NULL,
	[middle1] [dbo].[NAME_Person] NULL,
	[lname1] [dbo].[NAME_Person] NULL,
	[suffix1] [varchar](10) NULL,
	[fname2] [dbo].[NAME_Person] NULL,
	[middle2] [dbo].[NAME_Person] NULL,
	[lname2] [dbo].[NAME_Person] NULL,
	[suffix2] [varchar](10) NULL,
	[address1] [varchar](100) NULL,
	[address2] [varchar](100) NULL,
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
	[billingAddress1] [varchar](100) NULL,
	[billingAddress2] [varchar](100) NULL,
	[billingCity] [dbo].[CITYCOUNTY] NULL,
	[billingState] [dbo].[STATE_Abbrev] NULL,
	[billingZip] [dbo].[ZIP_Formatted] NULL,
	[billingCountry] [dbo].[ADDRESS] NULL,
	[billingCountryCode] [tinyint] NULL,
	[billTo] [dbo].[NAME_Business] NULL,
	[creditScore] [int] NULL,
	[creditAddress1] [varchar](100) NULL,
	[creditAddress2] [varchar](100) NULL,
	[creditCity] [dbo].[CITYCOUNTY] NULL,
	[creditState] [dbo].[STATE_Abbrev] NULL,
	[creditZip] [dbo].[ZIP_Formatted] NULL,
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
	[unincorporated] [tinyint] NULL,
	[mobileStatus] [tinyint] NULL,
	[mobilePrefix] [varchar](50) NULL,
	[preferredContactMethod] [tinyint] NULL,
	[country] [varchar](255) NULL,
	[countryCode1] [tinyint] NULL,
	[isVIP] [tinyint] NULL,
	[securityQuestionID1] [tinyint] NULL,
	[securityQuestionID2] [tinyint] NULL,
	[securityAnswer1] [varchar](70) NULL,
	[securityAnswer2] [varchar](70) NULL,
	[sendEDocs] [tinyint] NULL,
	[occupation] [varchar](50) NULL,
	[occupation2] [varchar](50) NULL,
	[mailingAddressID] [int] NULL,
	[billingAddressID] [int] NULL,
	[mailingAddressValidated] [tinyint] NULL,
 CONSTRAINT [PK_Insured_insuredID] PRIMARY KEY CLUSTERED 
(
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Search_Insured_fname1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Insured_fname1] ON [dbo].[Insured]
(
	[fname1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Search_Insured_insuredName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Insured_insuredName] ON [dbo].[Insured]
(
	[insuredName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Search_Insured_lname1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Insured_lname1] ON [dbo].[Insured]
(
	[lname1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__busines__46263FC2]  DEFAULT ((0)) FOR [businessType]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__addDate__471A63FB]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__country__480E8834]  DEFAULT ((0)) FOR [countryCode]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4902AC6D]  DEFAULT ((0)) FOR [creditScore]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__noLogEn__49F6D0A6]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__tempRec__4AEAF4DF]  DEFAULT ((1)) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4BDF1918]  DEFAULT ((0)) FOR [creditStatus]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4CD33D51]  DEFAULT ((0)) FOR [creditScoreTable]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4DC7618A]  DEFAULT ((0)) FOR [creditStatus2]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4EBB85C3]  DEFAULT ((0)) FOR [creditScoreTable2]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__creditS__4FAFA9FC]  DEFAULT ((0)) FOR [creditScore2]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__policyE__50A3CE35]  DEFAULT ((1)) FOR [policyEndorseID]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF__Insured__unincor__231CFAA7]  DEFAULT ((0)) FOR [unincorporated]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_mobileStatus]  DEFAULT ((0)) FOR [mobileStatus]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_preferredContactMethod]  DEFAULT ((0)) FOR [preferredContactMethod]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_countryCode1]  DEFAULT ((0)) FOR [countryCode1]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_isVIP]  DEFAULT ((0)) FOR [isVIP]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_sendEDocs]  DEFAULT ((0)) FOR [sendEDocs]
GO
ALTER TABLE [dbo].[Insured] ADD  CONSTRAINT [DF_Insured_mailingAddressValidated]  DEFAULT ((0)) FOR [mailingAddressValidated]
GO
