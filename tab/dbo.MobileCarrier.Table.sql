USE [Windhaven]
GO
/****** Object:  Table [dbo].[MobileCarrier]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileCarrier](
	[mobileCarrierID] [int] IDENTITY(1,1) NOT NULL,
	[name] [dbo].[NAME_Business] NULL,
	[strPre] [varchar](50) NULL,
	[strPost] [varchar](50) NULL,
	[active] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_MobileCarrier] PRIMARY KEY CLUSTERED 
(
	[mobileCarrierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
