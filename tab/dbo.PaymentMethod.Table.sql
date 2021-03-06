USE [Windhaven]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[paymentMethodID] [int] IDENTITY(10,1) NOT NULL,
	[paymentMethod] [tinyint] NOT NULL,
	[displayName] [varchar](50) NOT NULL,
	[sortOrder] [tinyint] NOT NULL,
	[active] [tinyint] NOT NULL,
	[userType] [tinyint] NOT NULL,
	[showAgentNote] [tinyint] NOT NULL,
	[showCheckNum] [tinyint] NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[paymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
