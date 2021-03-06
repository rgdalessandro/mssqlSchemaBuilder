USE [Windhaven]
GO
/****** Object:  Table [dbo].[AutoPremiumLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoPremiumLog](
	[autoPremiumLogID] [int] IDENTITY(10,1) NOT NULL,
	[autoID] [int] NULL,
	[premiumTotal] [decimal](19, 2) NULL,
	[singleLimitPrem] [decimal](19, 2) NULL,
	[bodilyInjuryPrem] [decimal](19, 2) NULL,
	[propertyDamagePrem] [decimal](19, 2) NULL,
	[medicalPaymentsPrem] [decimal](19, 2) NULL,
	[PIPPrem] [decimal](19, 2) NULL,
	[uninsuredBIPrem] [decimal](19, 2) NULL,
	[uninsuredPDPrem] [decimal](19, 2) NULL,
	[comprehensivePrem] [decimal](19, 2) NULL,
	[collisionPrem] [decimal](19, 2) NULL,
	[notACVPrem] [decimal](19, 2) NULL,
	[towingPrem] [decimal](19, 2) NULL,
	[transportationPrem] [decimal](19, 2) NULL,
	[workLossPrem] [decimal](19, 2) NULL,
	[rentalPrem] [decimal](19, 2) NULL,
	[extraPrem] [decimal](19, 2) NULL,
	[accidentalDeathPrem] [decimal](19, 2) NULL,
	[dropDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[policyState] [smallint] NULL,
	[endorsementDescription] [varchar](255) NULL,
	[uninsuredCSLPrem] [decimal](19, 2) NULL,
	[underinsuredBIPrem] [decimal](19, 2) NULL,
	[underinsuredCSLPrem] [decimal](19, 2) NULL,
	[customEquipPrem] [decimal](19, 2) NULL,
	[AVEPrem] [decimal](19, 2) NULL,
	[mediaPrem] [decimal](19, 2) NULL,
	[glassCoveragePrem] [decimal](19, 2) NULL,
	[substituteBuyBackPrem] [decimal](19, 2) NULL,
	[underInsuredPDPrem] [decimal](19, 2) NULL,
	[loanPrem] [decimal](19, 2) NULL,
 CONSTRAINT [PK_AutoPremiumLog] PRIMARY KEY CLUSTERED 
(
	[autoPremiumLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AutoPremiumLog_autoID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AutoPremiumLog_autoID] ON [dbo].[AutoPremiumLog]
(
	[autoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_autoID]  DEFAULT (1) FOR [autoID]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_premiumTotal]  DEFAULT (0) FOR [premiumTotal]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_singleLimitPrem]  DEFAULT (0) FOR [singleLimitPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_bodilyInjuryPrem]  DEFAULT (0) FOR [bodilyInjuryPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_propertyDamagePrem]  DEFAULT (0) FOR [propertyDamagePrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_medicalPaymentsPrem]  DEFAULT (0) FOR [medicalPaymentsPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_PIPPrem]  DEFAULT (0) FOR [PIPPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_uninsuredBIPrem]  DEFAULT (0) FOR [uninsuredBIPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_uninsuredPDPrem]  DEFAULT (0) FOR [uninsuredPDPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_comprehensivePrem]  DEFAULT (0) FOR [comprehensivePrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_collisionPrem]  DEFAULT (0) FOR [collisionPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_notACVPrem]  DEFAULT (0) FOR [notACVPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_towingPrem]  DEFAULT (0) FOR [towingPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_transportationPrem]  DEFAULT (0) FOR [transportationPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_workLossPrem]  DEFAULT (0) FOR [workLossPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_rentalPrem]  DEFAULT (0) FOR [rentalPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_extraPrem]  DEFAULT (0) FOR [extraPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_accidentalDeathPrem]  DEFAULT (0) FOR [accidentalDeathPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_dropDate]  DEFAULT (getdate()) FOR [dropDate]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_endorsementDate]  DEFAULT (getdate()) FOR [endorsementDate]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_policyState]  DEFAULT (1) FOR [policyState]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_uninsuredCSLPrem]  DEFAULT (0) FOR [uninsuredCSLPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_underinsuredBIPrem]  DEFAULT (0) FOR [underinsuredBIPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_underinsuredCSLPrem]  DEFAULT (0) FOR [underinsuredCSLPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_customEquipPrem]  DEFAULT (0) FOR [customEquipPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_AVEPrem]  DEFAULT (0) FOR [AVEPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_mediaPrem]  DEFAULT (0) FOR [mediaPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_glassCoveragePrem]  DEFAULT (0) FOR [glassCoveragePrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_substituteBuyBackPrem]  DEFAULT (0) FOR [substituteBuyBackPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_underInsuredPDPrem]  DEFAULT (0) FOR [underInsuredPDPrem]
GO
ALTER TABLE [dbo].[AutoPremiumLog] ADD  CONSTRAINT [DF_AutoPremiumLog_loanPrem]  DEFAULT (0) FOR [loanPrem]
GO
