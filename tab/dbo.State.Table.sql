USE [Windhaven]
GO
/****** Object:  Table [dbo].[State]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateShort] [varchar](3) NULL,
	[stateLong] [dbo].[CITYCOUNTY] NULL,
	[country] [dbo].[CITYCOUNTY] NULL,
	[active] [tinyint] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_active]  DEFAULT (0) FOR [active]
GO
