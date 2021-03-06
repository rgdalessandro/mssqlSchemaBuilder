USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimMedicalBill]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimMedicalBill](
	[claimMedicalBillID] [int] IDENTITY(10,1) NOT NULL,
	[claimIncidentID] [int] NULL,
	[claimID] [int] NULL,
	[dateReceived] [smalldatetime] NULL,
	[serviceDateFrom] [smalldatetime] NULL,
	[serviceDateTo] [smalldatetime] NULL,
	[amountBilled] [dbo].[CURRENCY] NULL,
	[amountAllowed] [dbo].[CURRENCY] NULL,
	[amountPaid] [dbo].[CURRENCY] NULL,
	[interestPaid] [dbo].[CURRENCY] NULL,
	[feesPaid] [dbo].[CURRENCY] NULL,
	[paymentDate] [smalldatetime] NULL,
	[deductibleApplied] [dbo].[CURRENCY] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[claimExpenseID] [int] NULL,
	[claimBenefitTypeID] [tinyint] NULL,
	[vendorID] [int] NULL,
	[interestRate] [decimal](5, 2) NULL,
	[interestOwed] [tinyint] NULL,
	[billType] [varchar](20) NULL,
	[amountAfterDeductible] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_ClaimMedicalBill] PRIMARY KEY CLUSTERED 
(
	[claimMedicalBillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_claimIncidentID]  DEFAULT ((1)) FOR [claimIncidentID]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_claimantID]  DEFAULT ((1)) FOR [claimID]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_amountBilled]  DEFAULT ((0)) FOR [amountBilled]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_amountAllowed]  DEFAULT ((0)) FOR [amountAllowed]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_Table_1_paymentAmount]  DEFAULT ((0)) FOR [amountPaid]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimMedicalBill_interestPaid]  DEFAULT ((0)) FOR [interestPaid]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimMedicalBill_feesPaid]  DEFAULT ((0)) FOR [feesPaid]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_deductible]  DEFAULT ((0)) FOR [deductibleApplied]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimantMedicalBill_usersID]  DEFAULT ((2)) FOR [usersID]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimMedicalBill_claimExpenseID]  DEFAULT (NULL) FOR [claimExpenseID]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimMedicalBill_interestRate]  DEFAULT ((0)) FOR [interestRate]
GO
ALTER TABLE [dbo].[ClaimMedicalBill] ADD  CONSTRAINT [DF_ClaimMedicalBill_interestOwed]  DEFAULT ((0)) FOR [interestOwed]
GO
