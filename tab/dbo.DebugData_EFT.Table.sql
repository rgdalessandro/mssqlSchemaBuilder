USE [Windhaven]
GO
/****** Object:  Table [dbo].[DebugData_EFT]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DebugData_EFT](
	[debugData_EFTID] [int] IDENTITY(10,1) NOT NULL,
	[paymentID] [int] NULL,
	[method] [tinyint] NULL,
	[status] [tinyint] NULL,
	[subType] [tinyint] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_DebugData_EFT] PRIMARY KEY CLUSTERED 
(
	[debugData_EFTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DebugData_EFT] ADD  CONSTRAINT [DF_DebugData_EFT_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
