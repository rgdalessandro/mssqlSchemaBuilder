USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyNumberSeries]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyNumberSeries](
	[policyNumberSeriesID] [int] IDENTITY(10,1) NOT NULL,
	[prefix] [varchar](15) NULL,
	[iMinNum] [int] NULL,
	[iMaxNum] [int] NULL,
	[suffix] [varchar](15) NULL,
	[iDigits] [tinyint] NULL,
	[policyType] [tinyint] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[policyProgram] [tinyint] NULL,
	[policyTerm] [tinyint] NULL,
	[productType] [tinyint] NULL,
	[priority] [tinyint] NULL,
	[numberPool] [tinyint] NULL,
	[notes] [varchar](255) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_PolicyNumberSeries] PRIMARY KEY CLUSTERED 
(
	[policyNumberSeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_iMinNum]  DEFAULT ((0)) FOR [iMinNum]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_iMaxNum]  DEFAULT ((0)) FOR [iMaxNum]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_iDigits]  DEFAULT ((0)) FOR [iDigits]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_policyProgram]  DEFAULT ((0)) FOR [policyProgram]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_policyTerm]  DEFAULT ((0)) FOR [policyTerm]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_productType]  DEFAULT ((0)) FOR [productType]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_priority]  DEFAULT ((0)) FOR [priority]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_numberPool]  DEFAULT ((0)) FOR [numberPool]
GO
ALTER TABLE [dbo].[PolicyNumberSeries] ADD  CONSTRAINT [DF_PolicyNumberSeries_active]  DEFAULT ((0)) FOR [active]
GO
