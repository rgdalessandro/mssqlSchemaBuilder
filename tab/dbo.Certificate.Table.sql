USE [Windhaven]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[certificateID] [int] IDENTITY(10,1) NOT NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[producerID] [int] NULL,
	[objectID] [int] NULL,
	[status] [tinyint] NULL,
	[amountOwed] [decimal](19, 2) NULL,
	[amountPaid] [decimal](19, 2) NULL,
	[usersID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[certificateTypeID] [int] NULL,
	[effectiveDate] [smalldatetime] NULL,
	[expirationDate] [smalldatetime] NULL,
	[paymentID] [int] NULL,
	[policyNum] [varchar](25) NULL,
	[activationDate] [smalldatetime] NULL,
	[endorsementDate] [smalldatetime] NULL,
	[dropDate] [smalldatetime] NULL,
	[remoteCertificateID] [int] NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[certificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_Certificate_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_Certificate_policyID] ON [dbo].[Certificate]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_policyID]  DEFAULT (1) FOR [policyID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_insuredID]  DEFAULT (1) FOR [insuredID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_producerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_objectID]  DEFAULT (1) FOR [objectID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_status]  DEFAULT (0) FOR [status]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_amountOwed]  DEFAULT (0) FOR [amountOwed]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_amountPaid]  DEFAULT (0) FOR [amountPaid]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_usersID]  DEFAULT (2) FOR [usersID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_certificateTypeID]  DEFAULT (1) FOR [certificateTypeID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_paymentID]  DEFAULT (1) FOR [paymentID]
GO
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [DF_Certificate_remoteCertificateID]  DEFAULT (1) FOR [remoteCertificateID]
GO
