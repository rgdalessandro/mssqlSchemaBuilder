USE [Windhaven]
GO
/****** Object:  Table [dbo].[NotificationOption]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationOption](
	[notificationOptionID] [int] IDENTITY(10,1) NOT NULL,
	[messageType] [varchar](50) NULL,
	[messageText] [varchar](120) NULL,
	[sendTo] [tinyint] NULL,
	[companyID] [int] NULL,
	[policyType] [varchar](25) NULL,
	[emailText] [varchar](2000) NULL,
	[category] [tinyint] NULL,
	[note] [varchar](250) NULL,
	[forwardingNumber] [varchar](10) NULL,
 CONSTRAINT [PK_NotificationOption] PRIMARY KEY CLUSTERED 
(
	[notificationOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[NotificationOption] ADD  DEFAULT ((1)) FOR [companyID]
GO
ALTER TABLE [dbo].[NotificationOption] ADD  DEFAULT ((0)) FOR [policyType]
GO
ALTER TABLE [dbo].[NotificationOption] ADD  DEFAULT ((0)) FOR [category]
GO
