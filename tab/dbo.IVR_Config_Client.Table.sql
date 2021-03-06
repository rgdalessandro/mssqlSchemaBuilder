USE [Windhaven]
GO
/****** Object:  Table [dbo].[IVR_Config_Client]    Script Date: 9/27/2016 5:28:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVR_Config_Client](
	[IVR_Config_ClientID] [int] IDENTITY(10,1) NOT NULL,
	[PTSIdentifier] [varchar](3) NOT NULL,
	[creditCardFee] [dbo].[CURRENCY] NOT NULL,
	[eCheckFee] [dbo].[CURRENCY] NOT NULL,
	[clientName] [varchar](45) NOT NULL,
	[PTSName] [varchar](100) NOT NULL,
	[companyID] [int] NOT NULL,
	[stateID] [int] NOT NULL,
	[paymentCategory] [int] NOT NULL,
	[clientID] [int] NOT NULL,
	[isIsoPay] [smallint] NOT NULL,
	[policyType] [int] NOT NULL,
 CONSTRAINT [PK_IVR_Config_Client] PRIMARY KEY CLUSTERED 
(
	[IVR_Config_ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_Client_clientName]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_clientName] ON [dbo].[IVR_Config_Client]
(
	[clientName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_Client_companyID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_companyID] ON [dbo].[IVR_Config_Client]
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_Client_creditCardFee]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_creditCardFee] ON [dbo].[IVR_Config_Client]
(
	[creditCardFee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_Client_eCheckFee]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_eCheckFee] ON [dbo].[IVR_Config_Client]
(
	[eCheckFee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_Client_paymentCategory]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_paymentCategory] ON [dbo].[IVR_Config_Client]
(
	[paymentCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IVR_Config_Client_PTSIdentifier]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_PTSIdentifier] ON [dbo].[IVR_Config_Client]
(
	[PTSIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
/****** Object:  Index [IX_IVR_Config_Client_stateID]    Script Date: 9/27/2016 5:29:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_IVR_Config_Client_stateID] ON [dbo].[IVR_Config_Client]
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__PTSId__47CF5C69]  DEFAULT ('123') FOR [PTSIdentifier]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__credi__48C380A2]  DEFAULT ((5.00)) FOR [creditCardFee]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__eChec__49B7A4DB]  DEFAULT ((1.50)) FOR [eCheckFee]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__compa__4AABC914]  DEFAULT ((0)) FOR [companyID]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__state__4B9FED4D]  DEFAULT ((0)) FOR [stateID]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF__IVR_Confi__payme__4C941186]  DEFAULT ((0)) FOR [paymentCategory]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF_IVR_Config_Client_clientID]  DEFAULT ((0)) FOR [clientID]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF_IVR_Config_Client_isIsoPay]  DEFAULT ((0)) FOR [isIsoPay]
GO
ALTER TABLE [dbo].[IVR_Config_Client] ADD  CONSTRAINT [DF_IVR_Config_Client_policyType]  DEFAULT ((0)) FOR [policyType]
GO
