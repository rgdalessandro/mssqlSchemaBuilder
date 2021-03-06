USE [Windhaven]
GO
/****** Object:  Table [dbo].[DataPrefillRequest]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPrefillRequest](
	[DataPrefillRequestID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[policyID] [int] NULL,
	[strSend1] [text] NULL,
	[rawReturn1] [text] NULL,
	[strSend2] [text] NULL,
	[rawReturn2] [text] NULL,
	[userID] [int] NULL,
	[status] [tinyint] NULL,
	[fName] [varchar](50) NULL,
	[lName] [varchar](50) NULL,
	[DOB] [smalldatetime] NULL,
	[policyNumber] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[ZIPCode] [varchar](50) NULL,
	[coutry] [varchar](50) NULL,
	[policyType] [tinyint] NULL,
	[VINCount] [int] NULL,
	[ADDCount] [int] NULL,
	[CCDriverCount] [int] NULL,
	[CCVehicleCount] [int] NULL,
 CONSTRAINT [PK_DataPrefillRequest] PRIMARY KEY CLUSTERED 
(
	[DataPrefillRequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_DataPrefillRequest_policyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_DataPrefillRequest_policyID] ON [dbo].[DataPrefillRequest]
(
	[policyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataPrefillRequest] ADD  CONSTRAINT [DF_DataPrefillRequest_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[DataPrefillRequest] ADD  CONSTRAINT [DF_DataPrefillRequest_VINCount]  DEFAULT (0) FOR [VINCount]
GO
ALTER TABLE [dbo].[DataPrefillRequest] ADD  CONSTRAINT [DF_DataPrefillRequest_ADDCount]  DEFAULT (0) FOR [ADDCount]
GO
ALTER TABLE [dbo].[DataPrefillRequest] ADD  CONSTRAINT [DF_DataPrefillRequest_CCDriverCount]  DEFAULT (0) FOR [CCDriverCount]
GO
ALTER TABLE [dbo].[DataPrefillRequest] ADD  CONSTRAINT [DF_DataPrefillRequest_CCVehicleCount]  DEFAULT (0) FOR [CCVehicleCount]
GO
