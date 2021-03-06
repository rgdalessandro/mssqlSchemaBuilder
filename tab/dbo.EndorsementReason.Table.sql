USE [Windhaven]
GO
/****** Object:  Table [dbo].[EndorsementReason]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndorsementReason](
	[endorsementReasonID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](100) NULL,
	[addDate] [smalldatetime] NULL,
	[active] [tinyint] NULL,
	[infoRequired] [char](10) NULL,
	[policyType] [varchar](255) NULL,
 CONSTRAINT [PK_EndorsementReason] PRIMARY KEY CLUSTERED 
(
	[endorsementReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
