USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimVehicleDisposition]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimVehicleDisposition](
	[claimVehicleDispositionID] [int] IDENTITY(10,1) NOT NULL,
	[code] [varchar](8) NULL,
	[codeDescription] [varchar](50) NULL,
	[policyType] [tinyint] NULL,
 CONSTRAINT [PK_ClaimVehicleDisposition] PRIMARY KEY CLUSTERED 
(
	[claimVehicleDispositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ClaimVehicleDisposition]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClaimVehicleDisposition] ON [dbo].[ClaimVehicleDisposition]
(
	[code] ASC,
	[claimVehicleDispositionID] ASC,
	[codeDescription] ASC,
	[policyType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClaimVehicleDisposition] ADD  CONSTRAINT [DF_ClaimVehicleDisposition_policyType]  DEFAULT (1) FOR [policyType]
GO
