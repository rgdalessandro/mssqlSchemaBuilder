USE [Windhaven]
GO
/****** Object:  Table [dbo].[ProducerLog]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducerLog](
	[producerLogID] [int] IDENTITY(10,1) NOT NULL,
	[actionType] [varchar](1) NULL,
	[changeUsersID] [int] NULL,
	[changeDate] [datetime] NULL,
	[producerID] [int] NULL,
	[code] [varchar](15) NULL,
	[subcode] [varchar](15) NULL,
	[producerName] [varchar](65) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](35) NULL,
	[state] [char](2) NULL,
	[zip] [varchar](10) NULL,
	[taxID] [varchar](11) NULL,
	[taxType] [tinyint] NULL,
	[phone] [varchar](22) NULL,
	[phone2] [varchar](22) NULL,
	[fax] [varchar](22) NULL,
	[tollFree] [varchar](22) NULL,
	[email] [varchar](50) NULL,
	[status] [tinyint] NULL,
	[subProducer] [tinyint] NULL,
	[mainProducerID] [int] NULL,
	[mainProducerName] [varchar](65) NULL,
	[branchID] [int] NULL,
	[branchName] [varchar](65) NULL,
	[commissionRate] [smallmoney] NULL,
	[renewalCommissionRate] [smallmoney] NULL,
	[territory] [tinyint] NULL,
	[notes] [varchar](3000) NULL,
	[commissionCheckMethod] [tinyint] NULL,
	[monitorProducer] [tinyint] NULL,
	[stateLicensing] [varchar](2500) NULL,
	[contactFName] [varchar](35) NULL,
	[contactMiddle] [varchar](35) NULL,
	[contactLName] [varchar](35) NULL,
	[contactTitle] [varchar](65) NULL,
	[importProducerCode] [varchar](15) NULL,
	[physicalAddress1] [varchar](50) NULL,
	[physicalAddress2] [varchar](50) NULL,
	[physicalCity] [varchar](35) NULL,
	[physicalState] [char](2) NULL,
	[physicalZip] [varchar](10) NULL,
	[county] [varchar](50) NULL,
	[assignedSalesRep] [varchar](50) NULL,
	[assignedSalesRepID] [int] NULL,
	[SSN] [varchar](11) NULL,
	[suspenseEndorsement] [tinyint] NULL,
	[producerGroupID] [int] NULL,
	[endorsementReview] [tinyint] NULL,
	[renewalProducerID] [int] NULL,
	[underwriterID] [int] NULL,
	[emailBatch] [tinyint] NULL,
	[ccEmail1] [dbo].[EMAIL] NULL,
	[ccEmail2] [dbo].[EMAIL] NULL,
	[batchPrintMethod] [tinyint] NULL,
	[cancelledDate] [smalldatetime] NULL,
	[noLogEntry] [tinyint] NULL,
	[commissionCheckEFT] [tinyint] NULL,
	[printByBranch] [tinyint] NULL,
	[captive] [tinyint] NULL,
	[choicepointCode] [varchar](3) NULL,
	[allowTerminatedPay] [tinyint] NULL,
 CONSTRAINT [PK_ProducerLog] PRIMARY KEY CLUSTERED 
(
	[producerLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ProducerLog] ADD  DEFAULT (getdate()) FOR [changeDate]
GO
