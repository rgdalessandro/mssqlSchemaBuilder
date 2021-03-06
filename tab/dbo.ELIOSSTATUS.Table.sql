USE [Windhaven]
GO
/****** Object:  Table [dbo].[ELIOSSTATUS]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELIOSSTATUS](
	[eliosID] [int] IDENTITY(10,1) NOT NULL,
	[adddate] [datetime] NULL,
	[status] [varchar](50) NULL,
	[Step] [int] NULL,
	[records] [int] NULL,
	[filename] [varchar](250) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
 CONSTRAINT [PK_ELIOSSTATUS] PRIMARY KEY CLUSTERED 
(
	[eliosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ELIOSSTATUS] ADD  CONSTRAINT [DF_ELIOSSTATUS_adddate]  DEFAULT (getdate()) FOR [adddate]
GO
