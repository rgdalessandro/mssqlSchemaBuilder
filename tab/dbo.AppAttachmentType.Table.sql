USE [Windhaven]
GO
/****** Object:  Table [dbo].[AppAttachmentType]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppAttachmentType](
	[appAttachmentTypeID] [int] IDENTITY(10,1) NOT NULL,
	[fileName] [varchar](20) NULL,
	[description] [varchar](50) NULL,
	[required] [tinyint] NULL,
	[attachmentTable] [varchar](25) NULL,
	[addDate] [smalldatetime] NULL,
	[active] [tinyint] NULL,
	[overlayImage] [varchar](50) NULL,
	[iconImage] [varchar](50) NULL,
 CONSTRAINT [PK_appAttachmentTypeID] PRIMARY KEY CLUSTERED 
(
	[appAttachmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AppAttachmentType] ADD  CONSTRAINT [DF_AppAttachmentType_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
