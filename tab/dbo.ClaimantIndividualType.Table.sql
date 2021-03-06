USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimantIndividualType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimantIndividualType](
	[claimantIndividualTypeID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[individualType] [tinyint] NOT NULL,
	[sortOrder] [tinyint] NULL,
	[active] [bit] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ClaimantIndividualType] PRIMARY KEY CLUSTERED 
(
	[claimantIndividualTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimantIndividualType] ADD  CONSTRAINT [DF_ClaimantIndividualType_sortOrder]  DEFAULT ((0)) FOR [sortOrder]
GO
ALTER TABLE [dbo].[ClaimantIndividualType] ADD  CONSTRAINT [DF_ClaimantIndividualType_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ClaimantIndividualType] ADD  CONSTRAINT [DF_ClaimantIndividualType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
