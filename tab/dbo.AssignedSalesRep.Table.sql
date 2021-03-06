USE [Windhaven]
GO
/****** Object:  Table [dbo].[AssignedSalesRep]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedSalesRep](
	[assignedSalesRepID] [int] IDENTITY(10,1) NOT NULL,
	[fName] [dbo].[NAME_Person] NULL,
	[middle] [dbo].[NAME_Person] NULL,
	[lname] [dbo].[NAME_Person] NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
 CONSTRAINT [PK_AssignedSalesRep] PRIMARY KEY CLUSTERED 
(
	[assignedSalesRepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AssignedSalesRep] ADD  CONSTRAINT [DF_AssignedSalesRep_dateAdded]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[AssignedSalesRep] ADD  CONSTRAINT [DF_AssignedSalesRep_usersID]  DEFAULT (1) FOR [usersID]
GO
