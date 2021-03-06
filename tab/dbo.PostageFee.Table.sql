USE [Windhaven]
GO
/****** Object:  Table [dbo].[PostageFee]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostageFee](
	[postageFeeID] [int] IDENTITY(10,1) NOT NULL,
	[postage] [dbo].[CURRENCY] NULL,
	[fee] [dbo].[CURRENCY] NULL,
	[startDate] [smalldatetime] NULL,
	[endDate] [smalldatetime] NULL,
	[companyID] [int] NULL,
	[stateID] [int] NULL,
	[addDate] [smalldatetime] NULL,
	[intlPostage] [dbo].[CURRENCY] NULL,
 CONSTRAINT [PK_PostageFee] PRIMARY KEY CLUSTERED 
(
	[postageFeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PostageFee] ADD  CONSTRAINT [DF_PostageFee_postage]  DEFAULT ((0)) FOR [postage]
GO
ALTER TABLE [dbo].[PostageFee] ADD  CONSTRAINT [DF_PostageFee_fee]  DEFAULT ((0)) FOR [fee]
GO
ALTER TABLE [dbo].[PostageFee] ADD  CONSTRAINT [DF_PostageFee_companyID]  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[PostageFee] ADD  CONSTRAINT [DF_PostageFee_stateID]  DEFAULT ((1)) FOR [stateID]
GO
ALTER TABLE [dbo].[PostageFee] ADD  CONSTRAINT [DF_PostageFee_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
