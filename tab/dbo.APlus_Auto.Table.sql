USE [Windhaven]
GO
/****** Object:  Table [dbo].[APlus_Auto]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APlus_Auto](
	[aplus_AutoID] [int] IDENTITY(10,1) NOT NULL,
	[aplus_RequestID] [int] NULL,
	[policyID] [int] NULL,
	[insuredID] [int] NULL,
	[wasOrdered] [int] NULL,
	[matchReason] [varchar](50) NULL,
	[aplusStatus] [varchar](50) NULL,
	[rawreturn] [text] NULL,
	[remarks] [varchar](50) NULL,
	[recordFormat] [varchar](50) NULL,
	[aplusReportDate] [smalldatetime] NULL,
	[lossPolicyNum] [varchar](50) NULL,
	[lossDesc] [text] NULL,
	[lossDate] [varchar](15) NULL,
	[lossAddr1] [varchar](50) NULL,
	[lossCity] [varchar](35) NULL,
	[lossState] [varchar](2) NULL,
	[lossZip] [varchar](10) NULL,
	[lossCompany] [text] NULL,
	[claimInvestigationID] [varchar](50) NULL,
	[catastropheCd] [varchar](50) NULL,
	[claimNumber] [varchar](50) NULL,
	[operatorAtFault] [varchar](2) NULL,
	[violationCode] [varchar](25) NULL,
	[importedAsAccident] [tinyint] NULL,
	[incidentNum] [int] NULL,
	[CVAReturn] [text] NULL,
	[CVACall] [text] NULL,
	[UDIReturn] [text] NULL,
	[UDICall] [text] NULL,
	[claimCarrier] [varchar](50) NULL,
	[claimCompanyID] [varchar](50) NULL,
 CONSTRAINT [PK_APlus_Auto_importedAsAccident] PRIMARY KEY CLUSTERED 
(
	[aplus_AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[APlus_Auto] ADD  CONSTRAINT [DF_APlus_Auto_importedAccident]  DEFAULT ((0)) FOR [importedAsAccident]
GO
ALTER TABLE [dbo].[APlus_Auto] ADD  CONSTRAINT [DF_APlus_Auto_incidentNum]  DEFAULT ((0)) FOR [incidentNum]
GO
