USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_PaymentAttemptLog]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_PaymentAttemptLog](
	[IVR_PaymentAttemptLogID] [int] IDENTITY(10,1) NOT NULL,
	[IVR_PaymentAttemptID] [int] NOT NULL,
	[insuredID] [int] NOT NULL,
	[usersID] [int] NOT NULL,
	[policyHolderLoginID] [int] NULL,
	[timeAtInitiation] [smalldatetime] NULL,
	[isPayment] [tinyint] NULL,
	[message] [varchar](80) NULL,
 CONSTRAINT [PK_IVR_PaymentAttemptLog] PRIMARY KEY CLUSTERED 
(
	[IVR_PaymentAttemptLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[IVR_PaymentAttemptLog] ADD  CONSTRAINT [DF_IVR_PaymentAttemptLog_IVR_PaymentAttemptID]  DEFAULT ((1)) FOR [IVR_PaymentAttemptID]
GO
ALTER TABLE [dbo].[IVR_PaymentAttemptLog] ADD  CONSTRAINT [DF_IVR_PaymentAttemptLog_insuredID]  DEFAULT ((1)) FOR [insuredID]
GO
ALTER TABLE [dbo].[IVR_PaymentAttemptLog] ADD  CONSTRAINT [DF_IVR_PaymentAttemptLog_usersID]  DEFAULT ((1)) FOR [usersID]
GO
