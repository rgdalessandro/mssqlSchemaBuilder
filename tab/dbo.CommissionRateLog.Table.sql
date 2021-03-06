USE [Windhaven]
GO
/****** Object:  Table [dbo].[CommissionRateLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionRateLog](
	[commissionRateLogID] [int] IDENTITY(10,1) NOT NULL,
	[commissionRateID] [int] NOT NULL,
	[policyType] [tinyint] NULL,
	[companyID] [int] NULL,
	[producerID] [int] NULL,
	[stateID] [int] NULL,
	[policyTerm] [tinyint] NULL,
	[description] [varchar](255) NULL,
	[newRate] [smallmoney] NULL,
	[renewalRate] [smallmoney] NULL,
	[newRateEffDate] [smalldatetime] NULL,
	[commissionMethod] [tinyint] NULL,
	[logDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_CommissionRateLog_commissionRateLogID] PRIMARY KEY CLUSTERED 
(
	[commissionRateLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_commissionRateID]  DEFAULT ((1)) FOR [commissionRateID]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_producerID]  DEFAULT ((0)) FOR [producerID]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_policyTerm]  DEFAULT ((0)) FOR [policyTerm]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_newRate]  DEFAULT ((0)) FOR [newRate]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_renewalRate]  DEFAULT ((1)) FOR [renewalRate]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_newRateEffDate]  DEFAULT (getdate()) FOR [newRateEffDate]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_commissionMethod]  DEFAULT ((0)) FOR [commissionMethod]
GO
ALTER TABLE [dbo].[CommissionRateLog] ADD  CONSTRAINT [DF_CommissionRateLog_logDate]  DEFAULT (getdate()) FOR [logDate]
GO
