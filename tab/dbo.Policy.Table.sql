USE [Windhaven]
GO
/****** Object:  Table [dbo].[Policy]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policy](
	[policyID] [int] IDENTITY(10,1) NOT NULL,
	[locationID] [int] NULL,
	[policyNum] [varchar](20) NULL,
	[policyType] [tinyint] NULL,
	[status] [tinyint] NULL,
	[effectiveDate] [smalldatetime] NULL,
	[expirationDate] [smalldatetime] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[duplicate] [tinyint] NOT NULL,
	[agencyCustomerID] [varchar](25) NULL,
	[applicationDate] [smalldatetime] NULL,
	[originalAppNum] [varchar](20) NULL,
	[accountNum] [varchar](20) NULL,
	[isRenewal] [tinyint] NOT NULL,
	[billMethod] [tinyint] NULL,
	[paymentPlan] [tinyint] NULL,
	[noRestore] [tinyint] NULL,
	[noRenewal] [tinyint] NOT NULL,
	[boundDate] [smalldatetime] NULL,
	[premiumTotal] [dbo].[CURRENCY] NULL,
	[termPremiumsDue] [dbo].[CURRENCY] NULL,
	[depositDue] [dbo].[CURRENCY] NULL,
	[depositPaid] [dbo].[CURRENCY] NULL,
	[monthlyPayment] [dbo].[CURRENCY] NULL,
	[amountOwed] [dbo].[CURRENCY] NULL,
	[amountPaid] [dbo].[CURRENCY] NULL,
	[needsRated] [tinyint] NOT NULL,
	[renewalRecord] [int] NOT NULL,
	[tempRecord] [tinyint] NOT NULL,
	[filingType] [varchar](10) NULL,
	[cancelledReason] [tinyint] NULL,
	[policyCharge] [dbo].[CURRENCY] NULL,
	[expenseFee] [dbo].[CURRENCY] NULL,
	[earnedPremium] [dbo].[CURRENCY] NULL,
	[policyState] [smallint] NULL,
	[noLogEntry] [tinyint] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[manualRate] [tinyint] NULL,
	[depositPercent] [money] NULL,
	[installmentCount] [tinyint] NULL,
	[policyTerm] [tinyint] NULL,
	[firstPaymentDue] [smallint] NULL,
	[installmentInterval] [tinyint] NULL,
	[ratingVersion] [money] NULL,
	[ratingVersionID] [int] NULL,
	[renewalCount] [smallint] NULL,
	[policyProgram] [tinyint] NULL,
	[financeCompanyID] [int] NULL,
	[endorsementDescription] [varchar](3000) NULL,
	[usersID] [int] NULL,
	[doNotBind] [tinyint] NULL,
	[doNotIssue] [tinyint] NULL,
	[imported] [tinyint] NULL,
	[commissionRate] [smallmoney] NULL,
	[logState] [smallint] NULL,
	[forceLogEntry] [tinyint] NULL,
	[submitUsersID] [int] NULL,
	[companyCommissionRate] [smallmoney] NULL,
	[commissionMethod] [tinyint] NULL,
	[transferPolicyID] [int] NULL,
	[underwriterReferral] [tinyint] NULL,
	[endorsementReferral] [tinyint] NULL,
	[noRenewReason] [int] NULL,
	[cancellationLogID] [int] NULL,
	[equityDate] [smalldatetime] NULL,
	[billDay] [tinyint] NULL,
	[dateFirstWritten] [smalldatetime] NULL,
	[installmentFee] [dbo].[CURRENCY] NULL,
	[checkEquity] [tinyint] NULL,
	[treatyID] [int] NULL,
	[checkReinstatement] [tinyint] NULL,
	[financeContractNum] [varchar](30) NULL,
	[addDate] [smalldatetime] NULL,
	[paymentPlanID] [int] NULL,
	[latestDueInvoiceDate] [smalldatetime] NULL,
	[latestDueInvoiceID] [int] NULL,
	[appQuoteTotal] [dbo].[CURRENCY] NULL,
	[quoteImportID] [int] NULL,
	[reviewStatus] [tinyint] NULL,
	[isRewrite] [tinyint] NULL,
	[commissionRateID] [int] NULL,
	[ratingGroupID] [int] NULL,
	[ratingProgram] [tinyint] NULL,
	[isDirect] [tinyint] NULL,
	[invalidUW] [tinyint] NULL,
	[rewriteRecord] [tinyint] NULL,
	[redBarStatus] [tinyint] NULL,
	[isReissue] [tinyint] NULL,
	[importID] [int] NULL,
	[manualSurcharge] [bit] NULL,
	[ReversePartialPolicyNum]  AS (CONVERT([nvarchar](100),substring(reverse([policyNum]),charindex('-',reverse([policyNum]),(1))+(1),(100)))) PERSISTED,
	[ReverseFullPolicyNum]  AS (CONVERT([nvarchar](20),reverse([policyNum]))) PERSISTED,
 CONSTRAINT [PK_29_Policy] PRIMARY KEY CLUSTERED 
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Policy_insuredID_status]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Policy_insuredID_status] ON [dbo].[Policy]
(
	[insuredID] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_Policy_policyType_insuredID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Policy_policyType_insuredID] ON [dbo].[Policy]
(
	[policyType] ASC,
	[insuredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Policy_renewalRecord_policyID_ policyNum_ status_ effectiveDate_ expirationDate_ premiumTotal_ termPremiumsDue_ cancellationL]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Policy_renewalRecord_policyID_ policyNum_ status_ effectiveDate_ expirationDate_ premiumTotal_ termPremiumsDue_ cancellationL] ON [dbo].[Policy]
(
	[renewalRecord] ASC
)
INCLUDE ( 	[cancellationLogID],
	[effectiveDate],
	[expirationDate],
	[policyID],
	[policyNum],
	[premiumTotal],
	[status],
	[termPremiumsDue]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Policy_renewalRecord_policyID_1]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Policy_renewalRecord_policyID_1] ON [dbo].[Policy]
(
	[renewalRecord] ASC,
	[policyID] ASC
)
INCLUDE ( 	[policyNum],
	[producerID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Policy_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Policy_stateID] ON [dbo].[Policy]
(
	[stateID] ASC
)
INCLUDE ( 	[companyID],
	[effectiveDate],
	[expirationDate],
	[policyID],
	[policyNum]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [Search_Policy_expiration_reverseFullPolicyNum_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Policy_expiration_reverseFullPolicyNum_Includes] ON [dbo].[Policy]
(
	[expirationDate] ASC,
	[ReverseFullPolicyNum] ASC
)
INCLUDE ( 	[renewalRecord],
	[policyType],
	[status]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [Search_Policy_expiration_reversePartialPolicyNum_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Policy_expiration_reversePartialPolicyNum_Includes] ON [dbo].[Policy]
(
	[expirationDate] ASC,
	[ReversePartialPolicyNum] ASC
)
INCLUDE ( 	[renewalRecord],
	[policyType],
	[status]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Search_Policy_expirationDate_Includes]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [Search_Policy_expirationDate_Includes] ON [dbo].[Policy]
(
	[expirationDate] ASC
)
INCLUDE ( 	[policyID],
	[policyNum],
	[policyType],
	[status],
	[effectiveDate],
	[cancelledDate],
	[insuredID],
	[producerID],
	[companyID],
	[stateID],
	[applicationDate],
	[isRenewal],
	[noRestore],
	[premiumTotal],
	[renewalRecord],
	[renewalCount],
	[addDate]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__location__53803AE0]  DEFAULT ((1)) FOR [locationID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__policyTy__54745F19]  DEFAULT ((1)) FOR [policyType]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__status__55688352]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__effectiv__565CA78B]  DEFAULT (getdate()) FOR [effectiveDate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__expirati__5750CBC4]  DEFAULT (dateadd(month,(6),getdate())) FOR [expirationDate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__insuredI__5844EFFD]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__producer__59391436]  DEFAULT ((1)) FOR [producerID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__companyI__5A2D386F]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__stateID__5B215CA8]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__duplicat__5C1580E1]  DEFAULT ((0)) FOR [duplicate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__applicat__5D09A51A]  DEFAULT (getdate()) FOR [applicationDate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__isRenewa__5DFDC953]  DEFAULT ((0)) FOR [isRenewal]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__billMeth__5EF1ED8C]  DEFAULT ((0)) FOR [billMethod]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__paymentP__5FE611C5]  DEFAULT ((0)) FOR [paymentPlan]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__noRestor__60DA35FE]  DEFAULT ((0)) FOR [noRestore]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__noRenewa__61CE5A37]  DEFAULT ((0)) FOR [noRenewal]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_dbo_Policy_premiumTotal]  DEFAULT ((0)) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_dbo_Policy_termPremiumsDue]  DEFAULT ((0)) FOR [termPremiumsDue]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_Policy_amountPaid]  DEFAULT ((0)) FOR [amountPaid]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__needsRat__62C27E70]  DEFAULT ((1)) FOR [needsRated]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__renewalR__63B6A2A9]  DEFAULT ((1)) FOR [renewalRecord]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__tempReco__64AAC6E2]  DEFAULT ((0)) FOR [tempRecord]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__filingTy__659EEB1B]  DEFAULT (' ') FOR [filingType]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__cancelle__66930F54]  DEFAULT ((0)) FOR [cancelledReason]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__policySt__6787338D]  DEFAULT ((1)) FOR [policyState]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__noLogEnt__687B57C6]  DEFAULT ((0)) FOR [noLogEntry]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__endorsem__696F7BFF]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__manualRa__6A63A038]  DEFAULT ((0)) FOR [manualRate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__depositP__6B57C471]  DEFAULT ((0)) FOR [depositPercent]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__installm__6C4BE8AA]  DEFAULT ((0)) FOR [installmentCount]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__policyTe__6D400CE3]  DEFAULT ((6)) FOR [policyTerm]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__firstPay__6E34311C]  DEFAULT ((0)) FOR [firstPaymentDue]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__installm__6F285555]  DEFAULT ((1)) FOR [installmentInterval]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__ratingVe__701C798E]  DEFAULT ((0)) FOR [ratingVersion]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__ratingVe__71109DC7]  DEFAULT ((1)) FOR [ratingVersionID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__renewalC__7204C200]  DEFAULT ((0)) FOR [renewalCount]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__policyPr__72F8E639]  DEFAULT ((0)) FOR [policyProgram]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__financeC__73ED0A72]  DEFAULT ((1)) FOR [financeCompanyID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__usersID__74E12EAB]  DEFAULT ((1)) FOR [usersID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__doNotBin__75D552E4]  DEFAULT ((0)) FOR [doNotBind]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__doNotIss__76C9771D]  DEFAULT ((0)) FOR [doNotIssue]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__imported__77BD9B56]  DEFAULT ((0)) FOR [imported]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__commissi__78B1BF8F]  DEFAULT ((0)) FOR [commissionRate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__logState__79A5E3C8]  DEFAULT ((0)) FOR [logState]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__forceLog__7A9A0801]  DEFAULT ((0)) FOR [forceLogEntry]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__submitUs__7B8E2C3A]  DEFAULT ((1)) FOR [submitUsersID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__companyC__7C825073]  DEFAULT ((0)) FOR [companyCommissionRate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__commissi__7D7674AC]  DEFAULT ((0)) FOR [commissionMethod]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__transfer__7E6A98E5]  DEFAULT ((1)) FOR [transferPolicyID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__underwri__7F5EBD1E]  DEFAULT ((0)) FOR [underwriterReferral]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__endorsem__0052E157]  DEFAULT ((0)) FOR [endorsementReferral]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__noRenewR__01470590]  DEFAULT ((0)) FOR [noRenewReason]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__cancella__023B29C9]  DEFAULT ((1)) FOR [cancellationLogID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__billDay__032F4E02]  DEFAULT ((0)) FOR [billDay]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__dateFirs__0423723B]  DEFAULT (getdate()) FOR [dateFirstWritten]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__checkEqu__05179674]  DEFAULT ((0)) FOR [checkEquity]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__treatyID__060BBAAD]  DEFAULT ((1)) FOR [treatyID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__checkRei__06FFDEE6]  DEFAULT ((0)) FOR [checkReinstatement]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__addDate__07F4031F]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__paymentP__08E82758]  DEFAULT ((1)) FOR [paymentPlanID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__quoteImp__09DC4B91]  DEFAULT ((0)) FOR [quoteImportID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__reviewSt__0AD06FCA]  DEFAULT ((0)) FOR [reviewStatus]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__isRewrit__0BC49403]  DEFAULT ((0)) FOR [isRewrite]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__commissi__0CB8B83C]  DEFAULT ((1)) FOR [commissionRateID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__ratingGr__217ECAF8]  DEFAULT ((0)) FOR [ratingGroupID]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__ratingPr__26438015]  DEFAULT ((0)) FOR [ratingProgram]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF__Policy__isDirect__288BBB3A]  DEFAULT ((0)) FOR [isDirect]
GO
ALTER TABLE [dbo].[Policy] ADD  CONSTRAINT [DF_Policy_isReissue]  DEFAULT ((0)) FOR [isReissue]
GO
ALTER TABLE [dbo].[Policy] ADD  DEFAULT ((0)) FOR [manualSurcharge]
GO
