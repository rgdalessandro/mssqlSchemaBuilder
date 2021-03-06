USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimantPartyType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimantPartyType](
	[claimantPartyTypeID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[partyType] [tinyint] NOT NULL,
	[sortOrder] [tinyint] NULL,
	[active] [bit] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ClaimantPartyType] PRIMARY KEY CLUSTERED 
(
	[claimantPartyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimantPartyType] ADD  CONSTRAINT [DF_ClaimantPartyType_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[ClaimantPartyType] ADD  CONSTRAINT [DF_ClaimantPartyType_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ClaimantPartyType] ADD  CONSTRAINT [DF_ClaimantPartyType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
