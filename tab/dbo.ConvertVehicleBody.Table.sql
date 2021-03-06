USE [Windhaven]
GO
/****** Object:  Table [dbo].[ConvertVehicleBody]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConvertVehicleBody](
	[ImportValue] [varchar](20) NULL,
	[PTSValue] [varchar](20) NULL,
	[convertID] [int] IDENTITY(10,1) NOT NULL,
 CONSTRAINT [PK_ConvertVehicleBody] PRIMARY KEY CLUSTERED 
(
	[convertID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
