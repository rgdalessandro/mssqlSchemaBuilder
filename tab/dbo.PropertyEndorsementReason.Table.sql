USE [Windhaven]
GO
/****** Object:  Table [dbo].[PropertyEndorsementReason]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyEndorsementReason](
	[PropertyEndorsementReasonID] [int] IDENTITY(10,1) NOT NULL,
	[description] [varchar](50) NULL,
	[addDate] [smalldatetime] NULL,
	[active] [tinyint] NULL,
	[infoRequired] [char](10) NULL,
	[policyType] [varchar](255) NULL,
 CONSTRAINT [PK_PropertyEndorsementReason] PRIMARY KEY CLUSTERED 
(
	[PropertyEndorsementReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[PropertyEndorsementReason] ADD  CONSTRAINT [HO_PropertyEndorsementReason_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[PropertyEndorsementReason] ADD  CONSTRAINT [HO_PropertyEndorsementReason_active]  DEFAULT (1) FOR [active]
GO
ALTER TABLE [dbo].[PropertyEndorsementReason] ADD  CONSTRAINT [HO_PropertyEndorsementReason_policyType]  DEFAULT (0) FOR [policyType]
GO
