USE [Windhaven]
GO
/****** Object:  Table [dbo].[MVR_PointCode]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MVR_PointCode](
	[MVR_pointCodeID] [int] IDENTITY(10,1) NOT NULL,
	[state] [varchar](50) NULL,
	[Att_code] [nvarchar](255) NULL,
	[ViolationDescription] [nvarchar](255) NULL,
	[OCCUR1] [nvarchar](255) NULL,
	[OCCUR2] [nvarchar](255) NULL,
	[OCCUR3] [nvarchar](255) NULL,
	[att_type] [nvarchar](255) NULL,
	[stateID] [int] NULL,
	[companyID] [int] NULL,
 CONSTRAINT [PK_Alpha_ACC_Code] PRIMARY KEY CLUSTERED 
(
	[MVR_pointCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
