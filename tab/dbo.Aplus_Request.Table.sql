USE [Windhaven]
GO
/****** Object:  Table [dbo].[Aplus_Request]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aplus_Request](
	[aplus_RequestID] [int] IDENTITY(10,1) NOT NULL,
	[insuredID] [int] NULL,
	[policyID] [int] NULL,
	[policyType] [tinyint] NULL,
	[requestDate] [smalldatetime] NULL,
	[receivedDate] [smalldatetime] NULL,
	[fName] [varchar](50) NULL,
	[lName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip] [varchar](50) NULL,
	[dob] [smalldatetime] NULL,
	[manualOrder] [int] NULL,
	[usersID] [int] NULL,
	[orderNote] [varchar](200) NULL,
	[orderStatus] [tinyint] NULL,
	[productCode] [varchar](5) NULL,
 CONSTRAINT [PK_AplusRequest] PRIMARY KEY CLUSTERED 
(
	[aplus_RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Aplus_Request] ADD  CONSTRAINT [DF_AplusRequest_policyType]  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[Aplus_Request] ADD  CONSTRAINT [DF_AplusRequest_requestDate]  DEFAULT (getdate()) FOR [requestDate]
GO
ALTER TABLE [dbo].[Aplus_Request] ADD  CONSTRAINT [DF_AplusRequest_receivedDate]  DEFAULT (getdate()) FOR [receivedDate]
GO
ALTER TABLE [dbo].[Aplus_Request] ADD  CONSTRAINT [DF_AplusRequest_orderStatus]  DEFAULT ((0)) FOR [orderStatus]
GO
