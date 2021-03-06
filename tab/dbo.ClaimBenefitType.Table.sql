USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimBenefitType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimBenefitType](
	[ClaimBenefitTypeID] [tinyint] IDENTITY(10,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_ClaimBenefitType] PRIMARY KEY CLUSTERED 
(
	[ClaimBenefitTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimBenefitType] ADD  CONSTRAINT [DF_ClaimBenefitType_active]  DEFAULT ((0)) FOR [active]
GO
