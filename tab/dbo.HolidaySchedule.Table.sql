USE [Windhaven]
GO
/****** Object:  Table [dbo].[HolidaySchedule]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HolidaySchedule](
	[holidayScheduleID] [int] IDENTITY(10,1) NOT NULL,
	[addDate] [smalldatetime] NULL,
	[usersID] [int] NULL,
	[holidayDate] [smalldatetime] NULL,
 CONSTRAINT [PK_HolidaySchedule] PRIMARY KEY CLUSTERED 
(
	[holidayScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_HolidaySchedule_usersID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_HolidaySchedule_usersID] ON [dbo].[HolidaySchedule]
(
	[usersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HolidaySchedule] ADD  CONSTRAINT [DF_HolidaySchedule_addDate]  DEFAULT (getdate()) FOR [addDate]
GO
ALTER TABLE [dbo].[HolidaySchedule] ADD  CONSTRAINT [DF_HolidaySchedule_usersID]  DEFAULT (2) FOR [usersID]
GO
