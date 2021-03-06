USE [Windhaven]
GO
/****** Object:  Table [dbo].[AppInfo]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppInfo](
	[appInfoID] [int] IDENTITY(10,1) NOT NULL,
	[useVINScan] [tinyint] NULL,
	[maxResolution] [int] NULL,
	[ptsInfoScreenText] [varchar](500) NULL,
	[ptsInfoScreenExtLink] [varchar](250) NULL,
	[ptsInfoScreenEnableMobile] [tinyint] NULL,
	[active] [tinyint] NULL,
	[singlePolicyID] [int] NULL,
	[vehEffectiveDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AppInfo] PRIMARY KEY CLUSTERED 
(
	[appInfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
