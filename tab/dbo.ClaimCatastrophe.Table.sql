USE [Windhaven]
GO
/****** Object:  Table [dbo].[ClaimCatastrophe]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimCatastrophe](
	[claimCatastropheID] [int] IDENTITY(10,1) NOT NULL,
	[catastropheDescription] [varchar](1000) NULL,
	[catastropheDate] [smalldatetime] NULL,
	[catastropheEndDate] [smalldatetime] NULL,
	[catastropheTitle] [varchar](100) NULL,
	[ISOCatNumber] [int] NULL,
	[isDefault] [tinyint] NULL,
	[stateID] [int] NULL,
 CONSTRAINT [PK_ClaimCatastrophe] PRIMARY KEY CLUSTERED 
(
	[claimCatastropheID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ClaimCatastrophe] ADD  CONSTRAINT [DF_ClaimCatastrophe_isDefault]  DEFAULT (0) FOR [isDefault]
GO
