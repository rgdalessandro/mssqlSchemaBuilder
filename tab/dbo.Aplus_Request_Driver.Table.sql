USE [Windhaven]
GO
/****** Object:  Table [dbo].[Aplus_Request_Driver]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aplus_Request_Driver](
	[aplus_Request_DriverID] [int] IDENTITY(10,1) NOT NULL,
	[aplus_RequestID] [int] NULL,
	[policyID] [int] NULL,
	[driverID] [int] NULL,
	[fname] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[licNum] [varchar](15) NULL,
	[wasOrdered] [int] NULL,
	[wasProcessed] [int] NULL,
	[aplusStatus] [int] NULL,
	[addDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AplusRequest_Driver] PRIMARY KEY CLUSTERED 
(
	[aplus_Request_DriverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_requestID]  DEFAULT ((1)) FOR [aplus_RequestID]
GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_policyID]  DEFAULT ((1)) FOR [policyID]
GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_driverID]  DEFAULT ((1)) FOR [driverID]
GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_wasOrdered]  DEFAULT ((0)) FOR [wasOrdered]
GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_wasImported]  DEFAULT ((0)) FOR [wasProcessed]
GO
ALTER TABLE [dbo].[Aplus_Request_Driver] ADD  CONSTRAINT [DF_AplusRequest_Driver_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
