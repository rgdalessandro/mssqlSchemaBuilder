USE [Windhaven]
GO
/****** Object:  Table [dbo].[UserTypes_temp]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes_temp](
	[userTypeID] [float] NULL,
	[userType] [float] NULL,
	[userSubType] [float] NULL,
	[description] [nvarchar](255) NULL,
	[color] [nvarchar](255) NULL,
	[status] [float] NULL,
	[addDate] [datetime] NULL,
	[IsClaimUser] [float] NULL,
	[changeType] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[CFVariable] [nvarchar](255) NULL,
	[roleName] [nvarchar](255) NULL,
	[isRole] [nvarchar](255) NULL,
	[isAdmin] [float] NULL,
	[isManager] [float] NULL,
	[isCustomer] [float] NULL,
	[postRecoveries] [float] NULL,
	[closedPayments] [float] NULL,
	[autoAssign] [float] NULL,
	[assignLevel] [float] NULL,
	[policyTypes] [nvarchar](255) NULL
) ON [PRIMARY]

GO
