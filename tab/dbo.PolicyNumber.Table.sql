USE [Windhaven]
GO
/****** Object:  Table [dbo].[PolicyNumber]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PolicyNumber](
	[policyNumberID] [int] IDENTITY(10,1) NOT NULL,
	[policyNumberSeriesID] [int] NULL,
	[numberPool] [tinyint] NULL,
	[prefix] [varchar](15) NULL,
	[iNum] [int] NULL,
	[suffix] [varchar](15) NULL,
	[iDigits] [tinyint] NULL,
	[policyID] [int] NULL,
 CONSTRAINT [PK_PolicyNumber_v2] PRIMARY KEY CLUSTERED 
(
	[policyNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_PolicyNumber_numberPool]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNumber_numberPool] ON [dbo].[PolicyNumber]
(
	[numberPool] ASC,
	[policyNumberSeriesID] ASC,
	[iNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_PolicyNumber_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_PolicyNumber_policyID] ON [dbo].[PolicyNumber]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PolicyNumber] ADD  CONSTRAINT [DF_PolicyNumber_v2_policyNumberSeriesID]  DEFAULT ((1)) FOR [policyNumberSeriesID]
GO
ALTER TABLE [dbo].[PolicyNumber] ADD  CONSTRAINT [DF_PolicyNumber_v2_numberPool]  DEFAULT ((0)) FOR [numberPool]
GO
ALTER TABLE [dbo].[PolicyNumber] ADD  CONSTRAINT [DF_PolicyNumber_v2_iNum]  DEFAULT ((0)) FOR [iNum]
GO
ALTER TABLE [dbo].[PolicyNumber] ADD  CONSTRAINT [DF_PolicyNumber_v2_iDigits]  DEFAULT ((0)) FOR [iDigits]
GO
ALTER TABLE [dbo].[PolicyNumber] ADD  CONSTRAINT [DF_PolicyNumber_v2_policyID]  DEFAULT ((1)) FOR [policyID]
GO
