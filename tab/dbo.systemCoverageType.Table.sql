USE [Windhaven]
GO
/****** Object:  Table [dbo].[systemCoverageType]    Script Date: 9/27/2016 5:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[systemCoverageType](
	[systemCoverageTypeID] [int] IDENTITY(10,1) NOT NULL,
	[coverageType] [tinyint] NULL,
	[description] [varchar](100) NULL,
	[descriptionDetail] [varchar](100) NULL,
	[addDate] [smalldatetime] NULL,
	[systemCoverageLimitStatus] [tinyint] NULL,
	[type] [varchar](50) NULL,
	[ratingVersionID] [int] NULL,
	[expenseReserveLimit] [int] NULL,
	[lossReserveLimit] [int] NULL,
	[defaultExpenseReserve] [int] NULL,
	[defaultLossReserve] [int] NULL,
	[active] [tinyint] NULL,
	[displayOrder] [tinyint] NULL,
	[strEarned] [varchar](50) NULL,
	[strWritten] [varchar](50) NULL,
	[strProRateType] [varchar](50) NULL,
	[isMedicalCov] [tinyint] NULL,
 CONSTRAINT [PK_systemCoverageType] PRIMARY KEY CLUSTERED 
(
	[systemCoverageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
