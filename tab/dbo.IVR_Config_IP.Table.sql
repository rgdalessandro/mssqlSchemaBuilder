USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Config_IP]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Config_IP](
	[IVR_Config_IPID] [int] IDENTITY(10,1) NOT NULL,
	[ipAddress] [int] NOT NULL,
	[netmask] [int] NULL,
	[description] [varchar](100) NULL,
	[allowOrDeny] [char](1) NULL,
	[addDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_IVR_Config_IP] PRIMARY KEY CLUSTERED 
(
	[IVR_Config_IPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[IVR_Config_IP] ADD  CONSTRAINT [DF_IVR_Config_IP_allowOrDeny]  DEFAULT ('D') FOR [allowOrDeny]
GO
ALTER TABLE [dbo].[IVR_Config_IP] ADD  CONSTRAINT [DF_IVR_Config_IP_addDate]  DEFAULT ('2013-09-10 11:30:46') FOR [addDate]
GO
