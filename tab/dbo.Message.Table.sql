USE [Windhaven]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[messageID] [int] IDENTITY(10,1) NOT NULL,
	[messageType] [tinyint] NULL,
	[issued] [smalldatetime] NULL,
	[expires] [smalldatetime] NULL,
	[title] [varchar](50) NULL,
	[body] [varchar](3000) NULL,
	[producerID] [int] NULL,
	[usersIDto] [int] NULL,
	[usersIDfrom] [int] NULL,
 CONSTRAINT [PK_17_Messages] PRIMARY KEY CLUSTERED 
(
	[messageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IN_16_MessagesuserIDfrom]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IN_16_MessagesuserIDfrom] ON [dbo].[Message]
(
	[usersIDfrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_6_Messagestype]  DEFAULT (0) FOR [messageType]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_7_Messagesissued]  DEFAULT (getdate()) FOR [issued]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_8_Messagesexpires]  DEFAULT (getdate()) FOR [expires]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_11_MessagesproducerID]  DEFAULT (1) FOR [producerID]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_12_MessagesuserIDto]  DEFAULT (1) FOR [usersIDto]
GO
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_16_MessagesuserIDfrom]  DEFAULT (1) FOR [usersIDfrom]
GO
