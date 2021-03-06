USE [Windhaven]
GO
/****** Object:  Table [dbo].[Reserve]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve](
	[ReserveID] [int] IDENTITY(10,1) NOT NULL,
	[StateID] [int] NOT NULL,
	[PolicyType] [tinyint] NOT NULL,
	[policyCoveragesID] [int] NOT NULL,
	[useDefault] [tinyint] NOT NULL,
	[ExpenseReserveLimit] [int] NOT NULL,
	[LossReserveLimit] [int] NOT NULL,
	[DefaultExpenseReserve] [int] NOT NULL,
	[DefaultLossReserve] [int] NOT NULL,
	[code] [varchar](8) NOT NULL,
	[LegalExpenseReserve] [int] NOT NULL,
	[daysOpen] [int] NULL,
 CONSTRAINT [PK_Reserve] PRIMARY KEY CLUSTERED 
(
	[ReserveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_useDefault]  DEFAULT ((0)) FOR [useDefault]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_ExpenseReserveLimit]  DEFAULT ((0)) FOR [ExpenseReserveLimit]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_LossReserveLimit]  DEFAULT ((0)) FOR [LossReserveLimit]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_DefaultExpenseReserve]  DEFAULT ((0)) FOR [DefaultExpenseReserve]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_DefaultLossReserve]  DEFAULT ((0)) FOR [DefaultLossReserve]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_code]  DEFAULT ((0)) FOR [code]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_LegalExpenseReserve]  DEFAULT ((0)) FOR [LegalExpenseReserve]
GO
ALTER TABLE [dbo].[Reserve] ADD  CONSTRAINT [DF_Reserve_daysOpen]  DEFAULT ((0)) FOR [daysOpen]
GO
