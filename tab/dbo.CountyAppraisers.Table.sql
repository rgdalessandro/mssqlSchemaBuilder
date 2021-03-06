USE [Windhaven]
GO
/****** Object:  Table [dbo].[CountyAppraisers]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountyAppraisers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stateID] [int] NOT NULL,
	[county] [varchar](50) NOT NULL,
	[appraiserUrl] [varchar](200) NULL,
 CONSTRAINT [PK_CountyAppraisers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CountyAppraisers]  WITH CHECK ADD  CONSTRAINT [FK_StateID] FOREIGN KEY([stateID])
REFERENCES [dbo].[State] ([stateID])
GO
ALTER TABLE [dbo].[CountyAppraisers] CHECK CONSTRAINT [FK_StateID]
GO
