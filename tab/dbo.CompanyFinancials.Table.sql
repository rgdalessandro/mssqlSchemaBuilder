USE [Windhaven]
GO
/****** Object:  Table [dbo].[CompanyFinancials]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyFinancials](
	[companyFinancialsID] [int] IDENTITY(10,1) NOT NULL,
	[ratingVersionID] [int] NULL,
	[policyTerm] [tinyint] NULL,
	[companyID] [int] NULL,
	[description] [varchar](50) NULL,
	[policyCharge] [dbo].[CURRENCY] NULL,
	[SR22Fee] [dbo].[CURRENCY] NULL,
	[ATPFFee] [dbo].[CURRENCY] NULL,
	[cashCharge] [dbo].[CURRENCY] NULL,
	[checkCharge] [dbo].[CURRENCY] NULL,
	[returnedCheckCharge] [dbo].[CURRENCY] NULL,
	[reinstatementFee] [dbo].[CURRENCY] NULL,
	[lateFee] [dbo].[CURRENCY] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[renewalPolicyCharge] [dbo].[CURRENCY] NULL,
	[hasSRFiling] [tinyint] NULL,
	[roundValue] [tinyint] NULL,
	[goodDriverPolicyCharge] [dbo].[CURRENCY] NULL,
	[sendFirstInvoiceAtPOS] [tinyint] NULL,
	[FIGARate] [decimal](18, 6) NULL,
	[emergencyFee] [decimal](18, 6) NULL,
	[FHCFRate] [decimal](18, 6) NULL,
	[citizensEmergencyAssessmentRate] [decimal](18, 6) NULL,
	[endorsementFee] [decimal](18, 6) NULL,
 CONSTRAINT [PK_CompanyFinancials] PRIMARY KEY CLUSTERED 
(
	[companyFinancialsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_CompanyFinancials_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyFinancials_companyID] ON [dbo].[CompanyFinancials]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyFinancials_endDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyFinancials_endDate] ON [dbo].[CompanyFinancials]
(
	[endDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyFinancials_ratingVersionID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyFinancials_ratingVersionID] ON [dbo].[CompanyFinancials]
(
	[ratingVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyFinancials_StartDate]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyFinancials_StartDate] ON [dbo].[CompanyFinancials]
(
	[startDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_CompanyFinancials_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_CompanyFinancials_usersID] ON [dbo].[CompanyFinancials]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_ratingVersionID]  DEFAULT (1) FOR [ratingVersionID]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_policyTerm]  DEFAULT (0) FOR [policyTerm]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_companyID]  DEFAULT (1) FOR [companyID]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_policyCharge]  DEFAULT (0) FOR [policyCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_SR22Fee]  DEFAULT (0) FOR [SR22Fee]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_ATPFFee]  DEFAULT (0) FOR [ATPFFee]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_cashCharge]  DEFAULT (0) FOR [cashCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_checkCharge]  DEFAULT (0) FOR [checkCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_returnedCheckCharge]  DEFAULT (0) FOR [returnedCheckCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_reinstatementFee]  DEFAULT (0) FOR [reinstatementFee]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_lateFee]  DEFAULT (0) FOR [lateFee]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_renewalPolicyCharge]  DEFAULT (0) FOR [renewalPolicyCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_hasSRFiling]  DEFAULT ((0)) FOR [hasSRFiling]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF__CompanyFi__round__5944012E]  DEFAULT ((0)) FOR [roundValue]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [goodDriverPolicyCharge]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [sendFirstInvoiceAtPOS]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [FIGARate]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [emergencyFee]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [FHCFRate]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  DEFAULT ((0)) FOR [citizensEmergencyAssessmentRate]
GO
ALTER TABLE [dbo].[CompanyFinancials] ADD  CONSTRAINT [DF_CompanyFinancials_endorsementFee]  DEFAULT ((0)) FOR [endorsementFee]
GO
