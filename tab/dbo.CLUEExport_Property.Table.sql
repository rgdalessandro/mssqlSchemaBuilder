USE [Windhaven]
GO
/****** Object:  Table [dbo].[CLUEExport_Property]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLUEExport_Property](
	[clueExportID] [int] IDENTITY(1,1) NOT NULL,
	[recordID] [varchar](50) NULL,
	[claimincidentID] [int] NULL,
	[policyID] [int] NULL,
	[lineID] [int] NULL,
	[claimID] [int] NULL,
	[adddate] [datetime] NULL,
	[lname1] [varchar](50) NULL,
	[fname1] [varchar](50) NULL,
	[middle1] [varchar](50) NULL,
	[housenumber] [varchar](50) NULL,
	[streetName] [varchar](50) NULL,
	[apartmentNumber] [varchar](50) NULL,
	[address1] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[phone] [varchar](25) NULL,
	[ssnum1] [varchar](50) NULL,
	[DOB1] [smalldatetime] NULL,
	[sex1] [varchar](1) NULL,
	[ssnum2] [varchar](50) NULL,
	[lname2] [varchar](50) NULL,
	[fname2] [varchar](50) NULL,
	[middle2] [varchar](50) NULL,
	[dob2] [smalldatetime] NULL,
	[sex2] [varchar](1) NULL,
	[strCatastrophe] [varchar](1) NULL,
	[disposition] [varchar](1) NULL,
	[policynum] [varchar](20) NULL,
	[policytype] [varchar](50) NULL,
	[strPolicyType] [varchar](1) NULL,
	[claimIncidentNum] [varchar](50) NULL,
	[type] [varchar](8) NULL,
	[dateofloss] [smalldatetime] NULL,
	[claimAmount] [dbo].[CURRENCY] NULL,
	[status] [varchar](1) NULL,
	[firstPaymentDate] [datetime] NULL,
	[updated] [varchar](1) NULL,
	[julianDate] [int] NULL,
	[lossHouseNumber] [varchar](50) NULL,
	[lossStreetName] [varchar](50) NULL,
	[lossApartmentNumber] [varchar](50) NULL,
	[lossAddress1] [varchar](50) NULL,
	[lossCity] [varchar](50) NULL,
	[lossState] [varchar](50) NULL,
	[lossZip] [varchar](50) NULL,
	[claimantFname] [varchar](50) NULL,
	[claimantLname] [varchar](50) NULL,
	[claimantMiddle] [varchar](50) NULL,
	[claimantSSN] [varchar](50) NULL,
	[claimantDOB] [smalldatetime] NULL,
	[claimantSex] [varchar](1) NULL,
	[claimantHouseNumber] [varchar](50) NULL,
	[claimantStreetName] [varchar](50) NULL,
	[claimantApartmentNumber] [varchar](50) NULL,
	[claimantAddress1] [varchar](50) NULL,
	[claimantCity] [varchar](50) NULL,
	[claimantState] [varchar](50) NULL,
	[claimantZip] [varchar](50) NULL,
	[claimantPhone] [varchar](25) NULL,
	[lienName] [varchar](65) NULL,
	[lienAccountNum] [varchar](50) NULL,
 CONSTRAINT [PK_CLUEExport_Property] PRIMARY KEY CLUSTERED 
(
	[clueExportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CLUEExport_Property_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLUEExport_Property_policyID] ON [dbo].[CLUEExport_Property]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLUEExport_Property] ADD  CONSTRAINT [DF_CLUEExport_Property_adddate]  DEFAULT (getdate()) FOR [adddate]
GO
ALTER TABLE [dbo].[CLUEExport_Property] ADD  CONSTRAINT [DF_CLUEExport_Property_updated]  DEFAULT ('N') FOR [updated]
GO
