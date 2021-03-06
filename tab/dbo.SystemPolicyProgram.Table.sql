USE [Windhaven]
GO
/****** Object:  Table [dbo].[SystemPolicyProgram]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPolicyProgram](
	[systemPolicyProgramID] [int] IDENTITY(10,1) NOT NULL,
	[companyID] [int] NOT NULL,
	[policyProgram] [tinyint] NOT NULL,
	[policyType] [tinyint] NOT NULL,
	[stateID] [int] NOT NULL,
	[description] [varchar](100) NULL,
	[ratingVersion] [money] NOT NULL,
	[ratingVersionID] [int] NULL,
 CONSTRAINT [PK_SystemPolicyProgram] PRIMARY KEY CLUSTERED 
(
	[systemPolicyProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
