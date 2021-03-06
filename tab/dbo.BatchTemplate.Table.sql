USE [Windhaven]
GO
/****** Object:  Table [dbo].[BatchTemplate]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchTemplate](
	[batchTemplateID] [int] IDENTITY(10,1) NOT NULL,
	[showIssuance] [tinyint] NULL,
	[showEndorsement] [tinyint] NULL,
	[showMemo] [tinyint] NULL,
	[showUrgent] [tinyint] NULL,
	[showInvoice] [tinyint] NULL,
	[showOther] [tinyint] NULL,
	[showClaims] [tinyint] NULL,
	[producerID] [int] NULL,
	[destinationCompanyID] [int] NULL,
	[sourceCompanyID] [int] NULL,
	[sourceStateID] [int] NULL,
	[recipientInsured] [tinyint] NULL,
	[recipientProducer] [tinyint] NULL,
	[recipientCompany] [tinyint] NULL,
	[recipientFinanceCompany] [tinyint] NULL,
	[recipientLienholder] [tinyint] NULL,
	[recipientAdditionalInsured] [tinyint] NULL,
	[recipientOther] [tinyint] NULL,
	[batchTemplateName] [varchar](100) NULL,
	[addDate] [smalldatetime] NOT NULL,
	[usersID] [int] NULL,
	[sourceTerm] [tinyint] NULL,
	[sourcePolicyType] [tinyint] NULL,
	[PDFTemplateList] [varchar](4000) NULL,
	[CFCName] [varchar](50) NULL,
	[showRenewal] [tinyint] NULL,
	[queuePriority] [smallint] NULL,
 CONSTRAINT [PK_BatchTemplate] PRIMARY KEY CLUSTERED 
(
	[batchTemplateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showIssuance]  DEFAULT (0) FOR [showIssuance]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showEndorsement]  DEFAULT (0) FOR [showEndorsement]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showMemo]  DEFAULT (0) FOR [showMemo]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showUrgent]  DEFAULT (0) FOR [showUrgent]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showInvoice]  DEFAULT (0) FOR [showInvoice]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showOther]  DEFAULT (0) FOR [showOther]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_showClaims]  DEFAULT (0) FOR [showClaims]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_destinationCompanyID]  DEFAULT (1) FOR [destinationCompanyID]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_sourceCompanyID]  DEFAULT (1) FOR [sourceCompanyID]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_sourceStateID]  DEFAULT (1) FOR [sourceStateID]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_insured]  DEFAULT (0) FOR [recipientInsured]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_producer]  DEFAULT (0) FOR [recipientProducer]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_company]  DEFAULT (0) FOR [recipientCompany]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_fin_company]  DEFAULT (0) FOR [recipientFinanceCompany]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_lienholder]  DEFAULT (0) FOR [recipientLienholder]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipientAdditionalInsured]  DEFAULT (0) FOR [recipientAdditionalInsured]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_recipient_other]  DEFAULT (0) FOR [recipientOther]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_usersID]  DEFAULT (1) FOR [usersID]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_sourceTerm]  DEFAULT (0) FOR [sourceTerm]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  CONSTRAINT [DF_BatchTemplate_sourcePolicyType]  DEFAULT ((0)) FOR [sourcePolicyType]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  DEFAULT ((0)) FOR [showRenewal]
GO
ALTER TABLE [dbo].[BatchTemplate] ADD  DEFAULT ((0)) FOR [queuePriority]
GO
