/***********************************************************/
/*     FILL base tables SparcElectricHybridDW                    */
/***********************************************************/
USE [SparcElectricHybridDW]
GO
/*************** CONNECTION TYPE *************************************************************/
SET IDENTITY_INSERT [dbo].[ConnectionType] ON 
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (1, N'Residential', N'Standard Residential Account', 1)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (2, N'Commercial', N'Commercial Electric', 2)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (3, N'Industrial', N'Industrial Electric', 3)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (4, N'Federal', N'Govt. Federal', 4)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (5, N'State', N'Govt. State', 5)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (6, N'County/Parish', N'Govt. Local', 6)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (7, N'City/Town', N'Govt. City', 7)
GO
INSERT [dbo].[ConnectionType] ([ConnectionTypeID], [TypeName], [TypeDescription], [TypeFlag]) VALUES (8, N'Infrastructure', N'Power Company Owned', 8)
GO
SET IDENTITY_INSERT [dbo].[ConnectionType] OFF
GO
/*************** CUSTOMER ********************************************************************/
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (1, 2, N'Paramount Holdings Inc.', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 1, N'MTR31255-yqaZh6TrakAEV2hg', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (2, 2, N'Foundation Banks Inc.', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 2, N'MTR95051-0tVdfsPAarWhbBPI', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (3, 2, N'New Corporate Bancorp', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 3, N'MTR83472-9oEx6BdMPrEylGLw', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (4, 2, N'Resolution Bank', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR27357-9FooWwAJscRb3E0M', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (5, 2, N'Bound by Design', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR28413-YuajY4uq6VGSB3Et', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (6, 2, N'The Ink Link', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR59093-UXKYkeZGyiSTiaxC', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (7, 2, N'Dirty Bison Cinema', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR83312-0Dbn3CTPbeTjC5hL', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (8, 2, N'Puzzlepix Entertainment', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR55056-Rn5pktnl86qEzgAE', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (9, 2, N'Kings Beach Motel', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR25733-wcYNSwjNj059zY0K', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (10, 2, N'Olive Sword Hotel & Spa', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 3, N'MTR28190-sEH1D3je6mZ1Eakr', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (11, 2, N'Travel Six', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 1, N'MTR32598-IlmwS3AbxdwpUKAw', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (12, 2, N'Malachite Rose Hotel', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 1, N'MTR20751-hsw1vh5e25FqeWTA', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (13, 2, N'Crown Motel', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 2, N'MTR76216-FzO4R4E35qcmf6Ss', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (14, 2, N'Noble Vista Resort', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 3, N'MTR94352-cUdLECxs6CAPPxWQ', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (15, 2, N'Paperbound', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 3, N'MTR57315-8APe8yJ0viNpBGXj', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (16, 2, N'Pages For All Ages', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR70276-LdWs7dIYRuAkK5O5', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (17, 2, N'Wilkinson Book Shop', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR96757-IdxhtuwApBDR6Osj', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (18, 2, N'Cariston Botanical Gardens', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR66919-azO2sjVoPNMMMdjc', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (19, 2, N'Camp Snowflake', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR91883-UFnFHJLdxUr67NCm', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (20, 7, N'Clearburg City Hall', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR26534-azlWI9R5Z2s5JJDn', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (21, 7, N'Clearburg Fire Station', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR25246-6APzK5wIM4lXgfSU', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (22, 7, N'Clearburg Police and Security', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR05238-aHFzFsywtgJogLxE', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (23, 7, N'Clearburg Middle School', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR72247-A7lESgx2izNS8tX6', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (24, 7, N'Clearburg Elementary', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR42107-A0YipJ2lVDDqHcnU', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (25, 7, N'Clearburg Pre-K', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR85554-w1vp084EClEDW9Di', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (26, 7, N'Clearburg High School', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR58906-Cv7ePkfFQvzSg2Ic', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (27, 7, N'Bittermourn Fire and Rescue', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR41989-KgUQeWg2xM1cHusk', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (28, 7, N'Bittermourn Administrative Complex', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR40842-RosLALzlqnQRkdNP', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (29, 7, N'Bittermourn Police', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR17853-IitKwwgHm9neRFBo', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (30, 7, N'Bittermourn Middle School', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR76030-NoFOyVup9kAE7Rvl', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (31, 7, N'Bittermourn Elementary', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR17648-nVCer7CbTb9SazFl', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (32, 7, N'Bittermourn Pre-K', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR91237-M2M9eikMRANHpil8', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (33, 7, N'Bittermourn High School', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR75646-pBu7wiFRLuhx171Q', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (34, 6, N'Gloomburgh County Administration', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR16232-81C9TiAxBkJYCZgM', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (35, 6, N'Gloomburgh County Health Services', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR69052-YzWDbUYw2FquQy5y', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (36, 6, N'Gloomburgh County Waste Control', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR88573-XdvUrbYsEVMPyi5n', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (37, 7, N'Farrowburn Fire and Rescue', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR22813-pDoaaCGI2JRIc5tE', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (38, 7, N'Farrowburn Administrative Complex', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR87154-T8YTfJn5cS2QiSLl', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (39, 7, N'Farrowburn Police', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR44700-lG3RdNMk7dHhxMzE', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (40, 7, N'Farrowburn Middle School', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR38804-Ck4F9HkHWTBZUlA5', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (41, 7, N'Farrowburn Elementary', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR54649-alL6DENwgm6JrmiR', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (42, 7, N'Farrowburn Pre-K', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR31658-kzdMR4a12EkLD8GW', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (43, 7, N'Farrowburn High School', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-10-10' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR61156-5I4G3gn9tdsX9bJH', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (44, 7, N'Pyrecrest Fire and Rescue', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR89339-E59YeHEPPqCXVMQh', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (45, 7, N'Pyrecrest Administrative Complex', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR75912-KkXymgm7nUSaESYv', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (46, 7, N'Pyrecrest Police', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR23430-cQtDvmq1a1g6QAs3', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (47, 7, N'Pyrecrest Middle School', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR11068-4OUsOv7rojYg4G2q', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (48, 7, N'Pyrecrest Elementary', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR48331-q7FT4qIIKdJh1qcZ', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (49, 7, N'Pyrecrest Pre-K', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR72381-46A08qPtAF7GABzN', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (50, 7, N'Pyrecrest High School', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR51737-pZAW9bCzqA5o9cZT', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (51, 7, N'Reaver City', N'Reaver City', N'VA', N'22149', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR63666-8DJaTWCjU208B96t', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (52, 6, N'Direford County Administration', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR28593-SMP5iJl4kzhvl3eZ', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (53, 6, N'Direford County Health Services', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR88044-GswT6vZAc6zzX1PV', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (54, 6, N'Direford County Waste Control', N'Pyrecrest', N'VA', N'22148', N'Public', N'Public', CAST(N'2018-10-25' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR44911-UqZo622z9eNmGL9W', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (55, 2, N'Wagtales', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR96866-o9tdLnG95dGIxrzN', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (56, 2, N'Petacular Pet Supplies', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR53987-ra8hK1EWFUPoNcP6', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (57, 2, N'Clip-n-Dales Animal Boutique', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR35378-8sUBo4LSIc14Z6qt', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (58, 2, N'Yuppy Puppy Fur Styling', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR15225-v8QfGKn6q2f3cq3F', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (59, 2, N'Hungry Donkey Interactive', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR07044-tHxu3kYb4mowwuHE', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (60, 2, N'Ghostpetal Studios', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR38239-QxNpuJBWZ6lBEKlX', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (61, 2, N'Thunder Arts', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR97232-uThGIacLK1y3Ovee', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (62, 2, N'The Boulevard Opera House', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR23054-FWGlujZ8WRqzaHlx', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (63, 2, N'Apex Theater', N'Pyrecrest', N'VA', N'22148', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR93113-p5VgZlirBJz3IluF', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (64, 2, N'Jackson Pointe Reef Light', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR45599-iCpuO5hCil9ExDAJ', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (65, 2, N'Jade Boulder Medical Clinic', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR04551-1WgGcOp3x2RiLjC6', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (66, 2, N'Fairmont Hospital', N'Farrowburn', N'MD', N'22086', N'Public', N'Public', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR26290-c0i45nEVzkbnmQ79', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (67, 2, N'Trinity General', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR19599-OoGnY7x7slT0EcN8', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (68, 2, N'Rose River Medical Center', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR95490-g5DIX04hqB5q6Gjx', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (69, 2, N'Happily Ever Crafter', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 4, N'MTR37548-dqTBHg3PdW00Jn0u', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (70, 2, N'A Heart in Art', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR39743-tN2ThavIzBpo0Brf', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (71, 2, N'Fab Fabrics', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR06332-MBVZcNpKwn3zO0m8', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (72, 2, N'Paint Weasel', N'Pyrecrest', N'VA', N'22148', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR63822-PxQ8AatSM3nwQltz', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (73, 2, N'Metal Ventures Industries', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR91400-aWifee5FhXlxBqok', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (74, 2, N'Grand Resources Company', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR13825-HO4FUrLUJrRCXq9q', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (75, 2, N'Goldrush Mining Corporation', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR89782-1ZFWrxaKSZ6oQdr7', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (76, 2, N'Ebony Abyss', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR08292-JuR1HZDQKACXdYGl', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (77, 2, N'Rock Bottom Mining Corporation', N'Reaver City', N'VA', N'22149', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 8, N'MTR19932-ulzgoUHD3S9XgF5J', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (78, 2, N'Elemental Extracts Industries', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 9, N'MTR26010-rD69k34yQyN2pEf7', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (79, 2, N'Sediment Banks Corporation', N'Bittermourn', N'VA', N'22055', N'Public', N'Public', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR91135-BBSP2CLvD7XyWTv2', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (80, 2, N'Pizzamba', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR61666-7xP2mcYNwfezNrgI', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (81, 2, N'Say Cheese Pizzeria', N'Pyrecrest', N'VA', N'22148', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR99850-P69vyajZygrOseqJ', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (82, 2, N'The Belle Pepper', N'Reaver City', N'VA', N'22149', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 1, N'MTR59150-y4wN5eMYh7bFmzO6', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (83, 2, N'Onomotopizza', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 2, N'MTR95792-kG84QiMcIpb4Fmw6', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (84, 2, N'Museum of Submersion', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 2, N'MTR49452-Yk0qOGNCKjpvK81v', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (85, 2, N'International Zoology Center', N'Clearburg', N'VA', N'22084', N'Public', N'Public', CAST(N'2018-08-01' AS Date), CAST(N'1900-01-01' AS Date), 6, N'MTR14704-ldqqx9UZykkgn1Sq', 10.8, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (86, 2, N'The Village Oyster', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR58877-9ZdWRfShW3apmU8C', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (87, 2, N'Chili Commander', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR56062-J0V2HhFyxvu05Dzp', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (88, 2, N'Private Wharf', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR95296-RUMxAXTrhTbuw9qt', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (89, 2, N'The Vineyard', N'Bittermourn', N'VA', N'22055', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR33674-d4kbIIVRJJ1uwiNS', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (90, 2, N'The Hungry Tiger Bar and Grill', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR81341-Dn5Zmi6HJUyURgwt', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (91, 2, N'la Rose de Vanille', N'Pyrecrest', N'VA', N'22148', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR72624-964hKTF5pHLM1vWz', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (92, 2, N'la Cocotte Magique', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR35776-mdFs42PRshB5wDMw', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (93, 2, N'Champagne Paradise', N'Pyrecrest', N'VA', N'22148', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR19311-dDMhAc8GNINc89Zd', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (94, 2, N'The Caramel Cow', N'Clearburg', N'VA', N'22084', N'Commercial', N'Private', CAST(N'2018-05-02' AS Date), CAST(N'1900-01-01' AS Date), 5, N'MTR83250-1S7kP4czp3cDdKKL', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (95, 2, N'Bee-Tower Mill', N'Farrowburn', N'MD', N'22086', N'Commercial', N'Private', CAST(N'2018-01-12' AS Date), CAST(N'1900-01-01' AS Date), 7, N'MTR67228-juF7yYosjRQ3GnLX', 11.2, CAST(N'2022-06-08T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (96, 1, N'Garrik,Shucksmith', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-10-01' AS Date), NULL, 5, N'MTR-4366075888-6hd8J63246', 10.95, CAST(N'2021-07-09T00:00:00.000' AS DateTime), CAST(N'2021-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (97, 1, N'Lulu,Glander', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-02-19' AS Date), NULL, 4, N'MTR-1891767757-6r55v64626', 10.13, CAST(N'2021-10-20T00:00:00.000' AS DateTime), CAST(N'2021-05-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (98, 1, N'Robb,Yerson', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-04-19' AS Date), NULL, 4, N'MTR-6620655109-Djmye11918', 10.08, CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2021-05-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (99, 1, N'Johnath,Pelchat', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-05-09' AS Date), CAST(N'2021-10-21' AS Date), 4, N'MTR-4285778925-e68OF49682', 10.19, CAST(N'2021-10-14T00:00:00.000' AS DateTime), CAST(N'2021-10-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (100, 1, N'Tarrah,Morgans', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-05-14' AS Date), NULL, 4, N'MTR-2567611854-XSbOV58820', 10.35, CAST(N'2021-08-31T00:00:00.000' AS DateTime), CAST(N'2022-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (101, 1, N'Royall,Stannion', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-24' AS Date), NULL, 4, N'MTR-4093466073-txk9e88119', 10.15, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2021-04-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (102, 1, N'Lydon,Corbin', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-08-14' AS Date), NULL, 4, N'MTR-5352257718-qhh0k91490', 10.45, CAST(N'2021-07-01T00:00:00.000' AS DateTime), CAST(N'2020-12-27T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (103, 1, N'Linc,Phelp', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-03' AS Date), NULL, 4, N'MTR-8551222813-7LSEm94506', 10.48, CAST(N'2022-02-06T00:00:00.000' AS DateTime), CAST(N'2021-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (104, 1, N'Ky,Chomicki', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-06-24' AS Date), NULL, 4, N'MTR-4850054583-g3VCA14154', 10.5, CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (105, 1, N'Gery,Shuxsmith', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-12-24' AS Date), CAST(N'2020-08-17' AS Date), 4, N'MTR-6453489425-ynoiZ86078', 10.14, CAST(N'2020-08-17T00:00:00.000' AS DateTime), CAST(N'2020-08-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (106, 1, N'Vlad,Rasper', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-08-06' AS Date), NULL, 4, N'MTR-5525632179-krUVA24619', 10.49, CAST(N'2022-02-14T00:00:00.000' AS DateTime), CAST(N'2022-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (107, 1, N'Robbin,Hughes', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-08-11' AS Date), NULL, 5, N'MTR-6284524092-ZibHV65719', 10.78, CAST(N'2021-05-09T00:00:00.000' AS DateTime), CAST(N'2021-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (108, 1, N'Calla,Dudhill', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-13' AS Date), NULL, 5, N'MTR-1769975272-vP5Mm29947', 10.55, CAST(N'2021-11-09T00:00:00.000' AS DateTime), CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (109, 1, N'Georgie,Quarry', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-05-20' AS Date), NULL, 4, N'MTR-9644781932-5SjcG76670', 10.52, CAST(N'2022-01-05T00:00:00.000' AS DateTime), CAST(N'2022-04-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (110, 1, N'Vania,Tures', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-01-22' AS Date), NULL, 4, N'MTR-9482816903-4kyev24668', 10.18, CAST(N'2021-06-21T00:00:00.000' AS DateTime), CAST(N'2021-02-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (111, 1, N'Jo ann,Bourton', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-07-08' AS Date), NULL, 4, N'MTR-0237555164-ysP0519086', 10.77, CAST(N'2021-06-09T00:00:00.000' AS DateTime), CAST(N'2021-04-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (112, 1, N'Jammie,McAless', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-10-20' AS Date), NULL, 4, N'MTR-9968146728-Vl3Qm39452', 10.5, CAST(N'2021-11-01T00:00:00.000' AS DateTime), CAST(N'2020-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (113, 1, N'Abigael,Scrine', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-14' AS Date), NULL, 4, N'MTR-7665405782-X5ulC38209', 10.34, CAST(N'2021-06-21T00:00:00.000' AS DateTime), CAST(N'2021-06-18T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (114, 1, N'Cyrillus,Sodeau', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-08-28' AS Date), NULL, 6, N'MTR-3076167157-gviXg43548', 10, CAST(N'2022-05-28T00:00:00.000' AS DateTime), CAST(N'2021-06-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (115, 1, N'Carole,Pinckney', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-04-06' AS Date), NULL, 4, N'MTR-2605892403-ODjk970327', 10.17, CAST(N'2022-04-06T00:00:00.000' AS DateTime), CAST(N'2021-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (116, 1, N'Cammy,McDuff', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-07-18' AS Date), NULL, 4, N'MTR-4816475599-7SMCp51458', 10.02, CAST(N'2021-10-12T00:00:00.000' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (117, 1, N'Levi,Romi', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-06' AS Date), NULL, 4, N'MTR-6106695393-fwY1332673', 10.27, CAST(N'2021-12-02T00:00:00.000' AS DateTime), CAST(N'2020-12-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (118, 1, N'Ferdie,Dowbekin', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-08-23' AS Date), NULL, 6, N'MTR-2170189932-zxrs112364', 10.24, CAST(N'2022-02-21T00:00:00.000' AS DateTime), CAST(N'2021-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (119, 1, N'Arch,Gerrets', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-05-12' AS Date), NULL, 4, N'MTR-2257260941-iDegk96018', 10.56, CAST(N'2021-09-28T00:00:00.000' AS DateTime), CAST(N'2021-03-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (120, 1, N'Aila,Lamdin', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-16' AS Date), NULL, 4, N'MTR-7049540249-HselW68465', 10.91, CAST(N'2022-03-27T00:00:00.000' AS DateTime), CAST(N'2021-07-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (121, 1, N'Reed,Everix', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-04-14' AS Date), NULL, 4, N'MTR-2435341280-3HUUQ56995', 10.39, CAST(N'2021-12-18T00:00:00.000' AS DateTime), CAST(N'2021-05-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (122, 1, N'Alex,Chew', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-09-30' AS Date), NULL, 6, N'MTR-3990147261-NAzjB83100', 10.95, CAST(N'2022-03-15T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (123, 1, N'Wallas,Frigot', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-01-13' AS Date), NULL, 5, N'MTR-9015481957-1Oe7a87991', 10.82, CAST(N'2021-09-05T00:00:00.000' AS DateTime), CAST(N'2021-04-14T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (124, 1, N'Dagny,Lomansey', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-09-27' AS Date), NULL, 5, N'MTR-0953002123-Lx1AF15282', 10.44, CAST(N'2022-03-11T00:00:00.000' AS DateTime), CAST(N'2021-12-21T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (125, 1, N'Faunie,Ellacombe', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-09-03' AS Date), NULL, 6, N'MTR-7308000673-ZcWi319144', 10.19, CAST(N'2022-05-06T00:00:00.000' AS DateTime), CAST(N'2021-03-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (126, 1, N'Kelsi,Imms', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-11-22' AS Date), NULL, 4, N'MTR-0642191526-z7ypn48876', 10.38, CAST(N'2022-06-24T00:00:00.000' AS DateTime), CAST(N'2022-06-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (127, 1, N'Ernesta,de-Ancy Willis', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-08-05' AS Date), NULL, 4, N'MTR-6386406595-osgfE58699', 10.04, CAST(N'2022-06-01T00:00:00.000' AS DateTime), CAST(N'2021-02-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (128, 1, N'Trent,Widdecombe', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-01-01' AS Date), NULL, 4, N'MTR-9740108987-fTkVl64277', 10.85, CAST(N'2021-08-21T00:00:00.000' AS DateTime), CAST(N'2021-08-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (129, 1, N'Deb,Soan', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-03' AS Date), NULL, 4, N'MTR-5667103734-ObAEC01266', 10.13, CAST(N'2021-10-04T00:00:00.000' AS DateTime), CAST(N'2021-06-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (130, 1, N'Gabriello,Capnor', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-04-20' AS Date), NULL, 4, N'MTR-2378620792-G0DEr67180', 10.84, CAST(N'2021-06-16T00:00:00.000' AS DateTime), CAST(N'2021-03-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (131, 1, N'Wilhelm,Vegas', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-01-12' AS Date), NULL, 4, N'MTR-1639094198-QhgPz77281', 10.21, CAST(N'2022-02-04T00:00:00.000' AS DateTime), CAST(N'2021-12-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (132, 1, N'Averil,Girardi', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-05-02' AS Date), NULL, 4, N'MTR-7929665138-iTsRK79818', 10.27, CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2021-10-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (133, 1, N'Hugh,Coey', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-02-19' AS Date), NULL, 4, N'MTR-4867511358-fiZDl33305', 10.02, CAST(N'2022-03-20T00:00:00.000' AS DateTime), CAST(N'2021-04-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (134, 1, N'Carine,Taylour', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-03-25' AS Date), NULL, 4, N'MTR-9275669871-yoPDy91331', 10.19, CAST(N'2021-08-31T00:00:00.000' AS DateTime), CAST(N'2021-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (135, 1, N'Mignonne,Buist', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-11-23' AS Date), NULL, 4, N'MTR-6664943826-1zMkn71778', 10.72, CAST(N'2022-03-23T00:00:00.000' AS DateTime), CAST(N'2021-05-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (136, 1, N'Caprice,Leve', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-06-16' AS Date), NULL, 4, N'MTR-9087159851-mjl4F63659', 10.83, CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2021-01-28T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (137, 1, N'Osborn,Northeast', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-11-28' AS Date), CAST(N'2022-01-03' AS Date), 4, N'MTR-6376484669-YAxCr98949', 10.15, CAST(N'2022-04-03T00:00:00.000' AS DateTime), CAST(N'2021-03-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (138, 1, N'Dara,Jakoubek', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-03' AS Date), NULL, 4, N'MTR-0055589859-vg7ZD09636', 10.51, CAST(N'2022-03-19T00:00:00.000' AS DateTime), CAST(N'2021-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (139, 1, N'Shea,Abotson', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-02-13' AS Date), NULL, 5, N'MTR-6584926233-Rgu2q61231', 10.25, CAST(N'2021-11-03T20:33:52.000' AS DateTime), CAST(N'2020-12-09T10:34:32.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (140, 1, N'Allard,Lovewell', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-01-11' AS Date), NULL, 4, N'MTR-3401897150-8ZJWo79120', 10.74, CAST(N'2021-12-01T03:59:27.000' AS DateTime), CAST(N'2021-01-17T11:14:48.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (141, 1, N'Emyle,Fleisch', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-12-08' AS Date), NULL, 4, N'MTR-3103495868-eFYFB22834', 10.03, CAST(N'2021-09-02T02:13:14.000' AS DateTime), CAST(N'2021-08-31T18:41:29.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (142, 1, N'Bailey,Banford', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-02-21' AS Date), NULL, 6, N'MTR-2815916276-EChSZ30053', 10.58, CAST(N'2021-06-24T18:01:54.000' AS DateTime), CAST(N'2022-05-05T21:02:19.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (143, 1, N'Roxine,Sabberton', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-04-03' AS Date), NULL, 4, N'MTR-1497843412-BT01p86868', 10.21, CAST(N'2022-04-20T04:40:58.000' AS DateTime), CAST(N'2021-08-31T03:21:25.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (144, 1, N'Juliane,Mallall', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-11-24' AS Date), NULL, 6, N'MTR-6655176679-RkEbA77295', 10.16, CAST(N'2021-09-14T08:54:40.000' AS DateTime), CAST(N'2021-05-11T22:53:52.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (145, 1, N'Moe,Blandford', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-09-26' AS Date), NULL, 6, N'MTR-6450904066-nPzBO86958', 10.94, CAST(N'2022-06-04T00:00:11.000' AS DateTime), CAST(N'2021-10-20T17:42:11.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (146, 1, N'Cynthea,Ruthven', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-07-29' AS Date), NULL, 6, N'MTR-4297939772-JZKEA62613', 10.73, CAST(N'2022-03-19T11:45:56.000' AS DateTime), CAST(N'2021-09-28T00:47:14.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (147, 1, N'Roosevelt,Hazle', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-02-25' AS Date), NULL, 6, N'MTR-9195240889-spmsS15181', 10.32, CAST(N'2021-12-25T02:40:45.000' AS DateTime), CAST(N'2021-08-14T20:16:25.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (148, 1, N'Gustave,Clappison', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-03-29' AS Date), NULL, 5, N'MTR-5749510775-8cYvr98376', 10.51, CAST(N'2022-02-11T18:24:40.000' AS DateTime), CAST(N'2021-10-23T04:45:19.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (149, 1, N'Ingunna,Ducker', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-01-18' AS Date), CAST(N'2020-05-30' AS Date), 4, N'MTR-6512133190-6Cs2i70583', 10.38, CAST(N'2022-02-22T13:54:13.000' AS DateTime), CAST(N'2022-01-12T13:44:24.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (150, 1, N'Babita,Raspel', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-12-12' AS Date), NULL, 5, N'MTR-0074300958-QVuRx56625', 10.12, CAST(N'2021-09-19T03:19:55.000' AS DateTime), CAST(N'2022-04-03T12:55:27.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (151, 1, N'Chaddy,Flexman', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-10-30' AS Date), NULL, 5, N'MTR-1941313595-IvkFY46710', 10.74, CAST(N'2022-02-19T03:02:39.000' AS DateTime), CAST(N'2021-08-09T23:52:46.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (152, 1, N'Eduardo,Pedri', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-01-23' AS Date), NULL, 5, N'MTR-7003912463-vv1xs09524', 10.64, CAST(N'2021-07-18T07:15:06.000' AS DateTime), CAST(N'2021-06-14T23:57:42.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (153, 1, N'Birdie,Iddison', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-09-01' AS Date), NULL, 4, N'MTR-2036215735-Zhjzb54691', 10.47, CAST(N'2021-09-11T17:28:45.000' AS DateTime), CAST(N'2021-07-22T13:25:09.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (154, 1, N'Willi,Setterfield', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-31' AS Date), NULL, 4, N'MTR-9109327779-NzePX00345', 10.77, CAST(N'2021-06-17T01:37:39.000' AS DateTime), CAST(N'2022-06-02T01:24:24.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (155, 1, N'Joellen,Bassom', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-01-04' AS Date), NULL, 4, N'MTR-1588443207-B8scI31162', 10.26, CAST(N'2021-11-22T01:14:05.000' AS DateTime), CAST(N'2021-02-08T17:43:06.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (156, 1, N'Inez,Featenby', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-05-26' AS Date), NULL, 4, N'MTR-5518958699-ceuKn26405', 10.46, CAST(N'2021-06-30T17:00:37.000' AS DateTime), CAST(N'2021-04-09T02:39:58.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (157, 1, N'Reuven,Droogan', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-06-17' AS Date), CAST(N'2020-11-29' AS Date), 4, N'MTR-8616635728-Mhmnb04692', 10.46, CAST(N'2021-07-07T20:56:15.000' AS DateTime), CAST(N'2020-12-26T17:30:35.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (158, 1, N'Christel,Cordery', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-05-17' AS Date), NULL, 4, N'MTR-1436008199-Dzve185863', 10.62, CAST(N'2021-10-10T01:27:48.000' AS DateTime), CAST(N'2022-05-06T04:31:43.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (159, 1, N'Steven,Littlefair', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-08-26' AS Date), CAST(N'2021-11-05' AS Date), 4, N'MTR-8967428015-7HA8303248', 10.67, CAST(N'2021-11-23T00:05:58.000' AS DateTime), CAST(N'2021-04-10T05:46:33.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (160, 1, N'Pearla,Jordeson', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-10-05' AS Date), NULL, 4, N'MTR-1937953456-Ok3kJ94079', 10.99, CAST(N'2021-06-28T18:20:26.000' AS DateTime), CAST(N'2021-02-02T07:17:38.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (161, 1, N'Norby,Gossan', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-12-27' AS Date), NULL, 4, N'MTR-3469150070-LFJDF71982', 10.14, CAST(N'2021-07-09T06:20:21.000' AS DateTime), CAST(N'2021-04-08T03:03:49.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (162, 1, N'Carley,Brasier', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-19' AS Date), NULL, 4, N'MTR-7559069291-F3i7I42583', 10.28, CAST(N'2021-11-25T21:19:04.000' AS DateTime), CAST(N'2021-05-10T00:15:32.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (163, 1, N'Ezri,Balfe', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-03-06' AS Date), NULL, 4, N'MTR-6461695095-oUoZD69704', 10.47, CAST(N'2022-02-21T22:25:14.000' AS DateTime), CAST(N'2021-10-07T13:00:38.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (164, 1, N'Una,Emanulsson', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-06-28' AS Date), CAST(N'2021-08-18' AS Date), 4, N'MTR-1560231394-QWBor14981', 10.43, CAST(N'2022-03-13T05:57:24.000' AS DateTime), CAST(N'2021-07-06T03:13:54.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (165, 1, N'Prudy,Saterthwait', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-22' AS Date), NULL, 4, N'MTR-6134861279-JChYp54487', 10.56, CAST(N'2022-01-14T01:13:07.000' AS DateTime), CAST(N'2021-03-20T06:54:56.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (166, 1, N'Edy,Kennard', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-11-27' AS Date), NULL, 4, N'MTR-2054405599-qUoy378325', 10.55, CAST(N'2022-04-08T07:50:59.000' AS DateTime), CAST(N'2021-11-18T17:28:07.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (167, 1, N'Karon,McKeran', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-04-19' AS Date), NULL, 4, N'MTR-3312463171-sEBvr38020', 10.08, CAST(N'2022-04-25T05:53:36.000' AS DateTime), CAST(N'2022-02-17T07:30:00.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (168, 1, N'Rita,Leggatt', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-06-02' AS Date), NULL, 4, N'MTR-7363244798-81ksj28701', 10.78, CAST(N'2021-11-14T03:32:05.000' AS DateTime), CAST(N'2022-05-02T20:17:56.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (169, 1, N'Terrel,Giannazzo', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-05-31' AS Date), NULL, 4, N'MTR-6224298510-FvJRs50427', 10.1, CAST(N'2021-07-27T15:07:35.000' AS DateTime), CAST(N'2021-10-07T11:53:56.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (170, 1, N'Holly,Tewkesbury', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-03-27' AS Date), NULL, 4, N'MTR-2188306376-yZjlM54434', 10.4, CAST(N'2021-10-01T12:40:50.000' AS DateTime), CAST(N'2021-08-11T15:58:40.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (171, 1, N'Dyana,Shearstone', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-05-13' AS Date), CAST(N'2019-09-24' AS Date), 4, N'MTR-6559495375-IbOoL82153', 10.13, CAST(N'2022-03-18T08:35:56.000' AS DateTime), CAST(N'2021-09-11T08:27:40.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (172, 1, N'Britta,Halladay', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-04-17' AS Date), NULL, 4, N'MTR-4504134476-E6mUC75591', 10.68, CAST(N'2022-02-09T18:17:22.000' AS DateTime), CAST(N'2021-12-01T15:06:39.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (173, 1, N'Myrtle,Leve', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-05-13' AS Date), NULL, 4, N'MTR-2462544082-eV9M996561', 10.85, CAST(N'2022-02-02T23:53:46.000' AS DateTime), CAST(N'2021-08-30T08:48:11.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (174, 1, N'Chick,Brand', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-08-21' AS Date), NULL, 4, N'MTR-8402269700-GWE0F37683', 10.95, CAST(N'2022-04-10T16:35:28.000' AS DateTime), CAST(N'2022-02-03T11:57:36.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (175, 1, N'Mellisent,Folkes', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-01-09' AS Date), NULL, 4, N'MTR-1979364622-N0BvF54662', 10, CAST(N'2021-08-18T09:03:26.000' AS DateTime), CAST(N'2022-02-26T16:16:42.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (176, 1, N'Angelia,Pepperd', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-10-23' AS Date), NULL, 4, N'MTR-1006659679-cEr2R35003', 10.67, CAST(N'2022-04-03T13:24:12.000' AS DateTime), CAST(N'2020-12-13T20:40:54.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (177, 1, N'Chaddy,Leonardi', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-10-28' AS Date), NULL, 4, N'MTR-0981884532-9AH6J04482', 10.81, CAST(N'2021-07-15T12:44:13.000' AS DateTime), CAST(N'2021-02-24T20:52:39.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (178, 1, N'Rianon,Montford', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-11-26' AS Date), CAST(N'2020-08-26' AS Date), 4, N'MTR-2554239229-aNspS92133', 10.69, CAST(N'2021-08-12T18:06:29.000' AS DateTime), CAST(N'2021-02-22T13:54:46.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (179, 1, N'Alexandre,Jarman', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-03-28' AS Date), NULL, 4, N'MTR-5090216630-xiwi861277', 10.26, CAST(N'2021-06-14T12:45:13.000' AS DateTime), CAST(N'2021-05-24T03:54:21.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (180, 1, N'Leila,Feasey', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-11-29' AS Date), NULL, 4, N'MTR-1983440227-mXiJW14111', 10.11, CAST(N'2021-06-21T20:44:09.000' AS DateTime), CAST(N'2021-04-29T21:55:47.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (181, 1, N'Perri,Sewley', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-06-09' AS Date), NULL, 4, N'MTR-6642340799-WXZRB48032', 10.29, CAST(N'2021-10-03T14:05:15.000' AS DateTime), CAST(N'2022-02-09T23:36:20.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (182, 1, N'Lynn,Kindleside', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-07-24' AS Date), CAST(N'2021-07-27' AS Date), 4, N'MTR-3020846889-nJ5Yl74885', 10.61, CAST(N'2022-04-19T22:04:37.000' AS DateTime), CAST(N'2022-02-07T08:14:44.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (183, 1, N'Myrah,Rappaport', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-07-16' AS Date), NULL, 4, N'MTR-1716147960-HXU3s26221', 10.28, CAST(N'2021-11-23T16:27:42.000' AS DateTime), CAST(N'2022-06-16T21:57:20.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (184, 1, N'Isidro,Edeler', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-09-15' AS Date), NULL, 4, N'MTR-0689800853-PtOx849924', 10.87, CAST(N'2021-05-30T08:21:43.000' AS DateTime), CAST(N'2021-02-15T05:49:46.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (185, 1, N'Chad,Sheard', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-05-09' AS Date), NULL, 4, N'MTR-6732084042-PtBi120227', 10.72, CAST(N'2021-08-13T03:22:49.000' AS DateTime), CAST(N'2022-05-17T16:12:10.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (186, 1, N'Betty,Tessyman', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-04-17' AS Date), CAST(N'2019-08-03' AS Date), 4, N'MTR-9608538233-22Gly38109', 10.86, CAST(N'2021-06-28T05:19:20.000' AS DateTime), CAST(N'2022-03-03T04:01:48.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (187, 1, N'Valida,Tampling', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-03-26' AS Date), NULL, 4, N'MTR-7525136149-ORXYQ80339', 10.03, CAST(N'2021-09-30T23:23:52.000' AS DateTime), CAST(N'2021-01-11T14:48:19.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (188, 1, N'Mill,Budden', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-01-02' AS Date), NULL, 4, N'MTR-7971360852-90CCX43980', 10.6, CAST(N'2022-04-30T00:25:04.000' AS DateTime), CAST(N'2021-01-03T17:47:59.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (189, 1, N'Jessamine,Crunkhorn', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-10-14' AS Date), NULL, 4, N'MTR-0496941507-pgfIx67079', 10.82, CAST(N'2022-02-10T03:29:58.000' AS DateTime), CAST(N'2021-01-31T14:56:41.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (190, 1, N'Amie,Poulgreen', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-11-01' AS Date), NULL, 4, N'MTR-2931682064-gy1tG66214', 10.63, CAST(N'2021-05-28T01:11:28.000' AS DateTime), CAST(N'2021-04-28T09:54:33.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (191, 1, N'Griswold,Gladdish', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-05-08' AS Date), NULL, 4, N'MTR-8144026660-m1z0437647', 10.4, CAST(N'2022-03-08T12:28:11.000' AS DateTime), CAST(N'2021-09-30T03:54:29.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (192, 1, N'Ash,Cansfield', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2018-04-09' AS Date), NULL, 4, N'MTR-1015406553-unYgm27832', 10.68, CAST(N'2021-07-21T07:16:03.000' AS DateTime), CAST(N'2021-08-26T08:01:59.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (193, 1, N'Cybil,Coffin', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2020-06-22' AS Date), NULL, 4, N'MTR-0102860610-ktQVg27280', 10.87, CAST(N'2021-09-19T17:39:29.000' AS DateTime), CAST(N'2022-04-09T06:51:50.000' AS DateTime))
GO
INSERT [dbo].[Customer] ([CustomerID], [ConnectionTypeID], [CustomerName], [City], [State], [Zipcode], [CustomerCategory], [PublicOrPrivate], [AccountStartDate], [AccountEndDate], [MeterModelID], [CustMeterIdent], [eRate], [LastRemoteCheck], [LastInPersonCheck]) VALUES (194, 1, N'Anna-diane,Barnsdall', N'Sparcville', N'VA', N'22444', N'Residential', N'Private', CAST(N'2019-12-29' AS Date), NULL, 4, N'MTR-1678290257-EiI6I78531', 10.83, CAST(N'2022-06-13T04:13:39.000' AS DateTime), CAST(N'2021-05-11T00:45:39.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
/*************** DISTRIBUTION TYPE *************************************************************/
SET IDENTITY_INSERT [dbo].[DistributionType] ON 
GO
INSERT [dbo].[DistributionType] ([DistributionTypeID], [DistributionType], [DistributionInfo]) VALUES (1, N'SmartReadUsage', N'Smart record of normal outgoing useage.')
GO
INSERT [dbo].[DistributionType] ([DistributionTypeID], [DistributionType], [DistributionInfo]) VALUES (2, N'SmartReadGeneration', N'Smart record of normal incoming power generation.')
GO
INSERT [dbo].[DistributionType] ([DistributionTypeID], [DistributionType], [DistributionInfo]) VALUES (3, N'AMRReadUsage', N'AMR record of normal outgoing usage.')
GO
INSERT [dbo].[DistributionType] ([DistributionTypeID], [DistributionType], [DistributionInfo]) VALUES (4, N'AMRReadGeneration', N'AMR record of normal incoming power generation.')
GO
INSERT [dbo].[DistributionType] ([DistributionTypeID], [DistributionType], [DistributionInfo]) VALUES (5, N'AnalogReadUsage', N'Analog record of outgoing usage')
GO
SET IDENTITY_INSERT [dbo].[DistributionType] OFF
GO
/*************** EMPLOYEE **********************************************************************/
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (1, N'Haywood', N'U', N'Cubberley', N'75 Bartelt Avenue', NULL, N'Pyrecrest', N'VA', N'22148', 36.9200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (2, N'Ross', N'T', N'Pendreigh', N'05235 North Way', NULL, N'Clearburg', N'VA', N'22084', 43.6100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (3, N'Teador', N'X', N'Micco', N'6 Rieder Pass', NULL, N'Sparcville', N'VA', N'22444', 34.0700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (4, N'Locke', N'K', N'Goudie', N'1526 Park Meadow Place', NULL, N'Sparcville', N'VA', N'22444', 36.8200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (5, N'Malachi', N'S', N'Jerams', N'014 Fordem Terrace', NULL, N'Sparcville', N'VA', N'22444', 33.3000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (6, N'Brunhilda', N'E', N'Farnaby', N'38913 Clarendon Drive', NULL, N'Reaver City', N'VA', N'22149', 30.7300)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (7, N'Fifine', N'I', N'Priestley', N'1477 Lakeland Hill', NULL, N'Sparcville', N'VA', N'22444', 26.2900)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (8, N'Delilah', N'C', N'Habbert', N'5589 Katie Way', NULL, N'Bittermourn', N'VA', N'22055', 30.6500)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (9, N'Auguste', N'I', N'Scolding', N'965 School Road', NULL, N'Bittermourn', N'VA', N'22055', 33.2500)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (10, N'Yasmeen', N'A', N'Tilt', N'6 Coolidge Place', NULL, N'Sparcville', N'VA', N'22444', 34.9900)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (11, N'Bentlee', N'V', N'Kenworthey', N'84953 Vidon Alley', NULL, N'Clearburg', N'VA', N'22084', 27.9900)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (12, N'Sheba', N'M', N'Candwell', N'2771 Eastwood Avenue', NULL, N'Sparcville', N'VA', N'22444', 28.0700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (13, N'Forster', N'T', N'Riddington', N'8413 Waxwing Hill', NULL, N'Pyrecrest', N'VA', N'22148', 28.7800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (14, N'Priscilla', N'W', N'Hobble', N'8086 Luster Park', NULL, N'Pyrecrest', N'VA', N'22148', 36.4800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (15, N'Dominik', N'R', N'Ludlam', N'5859 Prairieview Alley', NULL, N'Clearburg', N'VA', N'22084', 35.5900)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (16, N'Gerta', N'B', N'Sine', N'43602 Coolidge Drive', NULL, N'Clearburg', N'VA', N'22084', 26.6000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (17, N'Tamera', N'G', N'Harsant', N'743 Goodland Hill', NULL, N'Clearburg', N'VA', N'22084', 38.1200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (18, N'Kelila', N'J', N'Iltchev', N'Caliangt Avenue', NULL, N'Sparcville', N'VA', N'22444', 43.2200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (19, N'Temple', N'U', N'Gristwood', N'94738 Mcbride Circle', NULL, N'Sparcville', N'VA', N'22444', 25.8100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (20, N'Abbe', N'B', N'Ballach', N'7062 Tennessee Way', NULL, N'Sparcville', N'VA', N'22444', 33.1400)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (21, N'Karney', N'E', N'Crocetti', N'9186 Dixon Point', NULL, N'Clearburg', N'VA', N'22084', 43.5600)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (22, N'Doralin', N'K', N'Huban', N'4441 Fordem Place', NULL, N'Farrowburn', N'VA', N'22086', 41.2500)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (23, N'Cassandre', N'G', N'Boykett', N'99 Ilene Park', NULL, N'Reaver City', N'VA', N'22149', 33.6200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (24, N'Dene', N'G', N'Brundill', N'Moland Circle', NULL, N'Bittermourn', N'VA', N'22055', 35.6400)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (25, N'Ethel', N'O', N'Aseef', N'67340 Steensland Crossing', NULL, N'Bittermourn', N'VA', N'22055', 37.8200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (26, N'Daloris', N'P', N'Knappe', N'89 Old Gate Place', NULL, N'Sparcville', N'VA', N'22444', 43.9100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (27, N'Jone', N'B', N'Alphege', N'018 Superior Avenue', NULL, N'Sparcville', N'VA', N'22444', 29.7700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (28, N'Kelsey', N'H', N'Heddy', N'Browning Court', NULL, N'Reaver City', N'VA', N'22149', 28.0700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (29, N'Patrizia', N'T', N'Itskovitz', N'07 Tomscot Drive', NULL, N'Bittermourn', N'VA', N'22055', 37.2100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (30, N'Minnnie', N'C', N'Wheway', N'884 Dunning Way', NULL, N'Clearburg', N'VA', N'22084', 26.0800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (31, N'Irita', N'K', N'Caulwell', N'20 Redwing Drive', NULL, N'Farrowburn', N'VA', N'22086', 34.3000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (32, N'Lorens', N'Z', N'Popelay', N'2 Arrowood Drive', NULL, N'Clearburg', N'VA', N'22084', 30.9700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (33, N'Andee', N'F', N'Brake', N'248 Dottie Drive', NULL, N'Clearburg', N'VA', N'22084', 32.7200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (34, N'Tommie', N'U', N'Picard', N'5523 Schlimgen Parkway', NULL, N'Reaver City', N'VA', N'22149', 35.2800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (35, N'Rodney', N'V', N'MacGiolla', N'45 Washington Drive', NULL, N'Reaver City', N'VA', N'22149', 32.5200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (36, N'Paddy', N'X', N'Itzhaiek', N'90 Holy Cross Place', NULL, N'Bittermourn', N'VA', N'22055', 32.1800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (37, N'Mellisent', N'G', N'Harrowsmith', N'2 Sloan Crossing', NULL, N'Bittermourn', N'VA', N'22055', 44.6400)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (38, N'Kippy', N'Y', N'Peschka', N'19 Bartelt Lane', NULL, N'Farrowburn', N'VA', N'22086', 26.5100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (39, N'Margie', N'M', N'Thorrold', N'12 Toban Place', NULL, N'Sparcville', N'VA', N'22444', 35.9800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (40, N'Judie', N'J', N'Doyley', N'93 Coleman Junction', NULL, N'Pyrecrest', N'VA', N'22148', 38.7300)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (41, N'Cristi', N'S', N'Rubinowitch', N'Quincy Junction', NULL, N'Pyrecrest', N'VA', N'22148', 31.1700)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (42, N'Mohandis', N'L', N'Grinham', N'7 Meadow Vale Road', NULL, N'Pyrecrest', N'VA', N'22148', 41.3800)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (43, N'Clareta', N'I', N'McNern', N'11878 Continental Terrace', NULL, N'Sparcville', N'VA', N'22444', 34.0100)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (44, N'Kial', N'H', N'Shrieve', N'86616 Green Ridge Hill', NULL, N'Bittermourn', N'VA', N'22055', 35.5500)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (45, N'Brandy', N'C', N'Tolcher', N'106 Stephen Circle', NULL, N'Bittermourn', N'VA', N'22055', 43.2400)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (46, N'Knox', N'P', N'Hinken', N'9 Charing Cross Trail', NULL, N'Bittermourn', N'VA', N'22055', 38.2600)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (47, N'Devland', N'C', N'Whistan', N'Eastwood Terrace', NULL, N'Pyrecrest', N'VA', N'22148', 31.9200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (48, N'Inna', N'B', N'Ashurst', N'4334 Waubesa Center', NULL, N'Reaver City', N'VA', N'22149', 42.1200)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (49, N'Raul', N'C', N'Fillimore', N'98 Amoth Circle', NULL, N'Clearburg', N'VA', N'22084', 26.8500)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FName], [MName], [LName], [EmpAddressLn1], [EmpAddressLn2], [EmpCity], [EmpState], [EmpZipcode], [HourlyRate]) VALUES (50, N'Hermine', N'L', N'Willoway', N'1079 7th Drive', NULL, N'Clearburg', N'VA', N'22084', 36.3300)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
/*************** EMPLOYEE SKILL *************************************************************/
SET IDENTITY_INSERT [dbo].[EmployeeSkill] ON 
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (1, 1, 1, N'AA', N'State-rated Lineman')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (2, 1, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (3, 2, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (4, 3, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (5, 4, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (6, 5, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (7, 6, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (8, 7, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (9, 8, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (10, 9, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (11, 10, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (12, 11, 3, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (13, 11, 6, N'AA', N'High Voltage rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (14, 12, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (15, 13, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (16, 14, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (17, 15, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (18, 15, 5, N'AA', N'Substation Experience')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (19, 16, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (20, 17, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (21, 18, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (22, 19, 4, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (23, 19, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (24, 20, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (25, 21, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (26, 21, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (27, 22, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (28, 22, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (29, 23, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (30, 23, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (31, 23, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (32, 24, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (33, 25, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (34, 26, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (35, 27, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (36, 28, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (37, 29, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (38, 29, 5, N'AA', N'Substation rated')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (39, 30, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (40, 31, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (41, 32, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (42, 33, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (43, 33, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (44, 34, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (45, 35, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (46, 36, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (47, 36, 2, N'AA', N'Licensed General Electrician')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (48, 37, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (49, 38, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (50, 39, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (51, 39, 1, N'AAA', N'State-rated Lineman')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (52, 40, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (53, 41, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (54, 42, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (55, 43, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (56, 44, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (57, 44, 1, N'AAA', N'State-rated Lineman')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (58, 45, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (59, 46, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (60, 47, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (61, 48, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (62, 49, 4, N'AA', N'Lighting pro')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (63, 49, 1, N'AA', N'State-rated Lineman')
GO
INSERT [dbo].[EmployeeSkill] ([EmployeeSkillID], [EmployeeID], [WorkSkillsID], [EmployeeRating], [SkillRatingDesc]) VALUES (64, 50, 1, N'AAA', N'State-rated Lineman')
GO
SET IDENTITY_INSERT [dbo].[EmployeeSkill] OFF
GO
/*************** INFRAS TYPE *******************************************************************/
SET IDENTITY_INSERT [dbo].[InfrasType] ON 
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (1, N'Streetlights', N'Lighting', N'Company owned', N'Standard SparcElectric street lighting')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (2, N'Standard Transformer', N'Transformer', N'Company owned', N'Standard SparcElectric transformer')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (3, N'Industrial Transformer', N'Transformer', N'Company owned', N'Industrial-grade SparcElectric transformer')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (4, N'Substation Equipment', N'Substation', N'Company owned', N'Standard SparcElectric street lighting')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (5, N'High-Voltage Equipment', N'HV Equipment', N'Company owned', N'SparcElectric High Voltage Equipment')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (6, N'Linework', N'Linework', N'Company owned', N'Standard SparcElectric power lines')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (7, N'Sparc Interconnect', N'Interconnect-Sparc', N'Company owned', N'Sparc-owned Interconnect with external power sources')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (8, N'Internal Interconnect', N'Interconnect-Sparc', N'Company owned', N'Sparc-owned Interconnect with internal power sources')
GO
INSERT [dbo].[InfrasType] ([InfrasTypeID], [InfrasName], [InfrasType], [InventoryType], [InfrasTypeDesc]) VALUES (9, N'State Interconnect', N'Interconnect-State', N'State owned', N'State-owned Interconnect with external power sources')
GO
SET IDENTITY_INSERT [dbo].[InfrasType] OFF
GO
/*************** INVENTORY *********************************************************************/
SET IDENTITY_INSERT [dbo].[Inventory] ON 
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (1, 1, N'LGT-00001', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (2, 1, N'LGT-00002', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (3, 1, N'LGT-00003', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (4, 1, N'LGT-00004', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (5, 1, N'LGT-00005', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (6, 1, N'LGT-00006', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (7, 1, N'LGT-00007', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (8, 1, N'LGT-00008', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (9, 1, N'LGT-00009', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (10, 1, N'LGT-00010', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (11, 1, N'LGT-00011', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (12, 1, N'LGT-00012', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (13, 1, N'LGT-00013', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (14, 1, N'LGT-00014', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (15, 1, N'LGT-00015', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (16, 1, N'LGT-00016', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (17, 1, N'LGT-00017', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (18, 1, N'LGT-00018', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (19, 1, N'LGT-00019', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (20, 1, N'LGT-00020', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (21, 1, N'LGT-00021', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (22, 1, N'LGT-00022', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (23, 1, N'LGT-00023', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (24, 1, N'LGT-00023A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (25, 1, N'LGT-00024', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (26, 1, N'LGT-00024A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (27, 1, N'LGT-00024B', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (28, 1, N'LGT-00025', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (29, 1, N'LGT-00026', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (30, 1, N'LGT-00027', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (31, 1, N'LGT-00030', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (32, 1, N'LGT-00031', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (33, 1, N'LGT-00032', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (34, 1, N'LGT-00033', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (35, 1, N'LGT-00034', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (36, 1, N'LGT-00035', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (37, 1, N'LGT-00036', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (38, 1, N'LGT-00037', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (39, 1, N'LGT-00038', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (40, 1, N'LGT-00039', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (41, 1, N'LGT-00039A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (42, 1, N'LGT-00040', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (43, 1, N'LGT-00040A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (44, 1, N'LGT-00040B', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (45, 1, N'LGT-00040C', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (46, 1, N'LGT-00041', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (47, 1, N'LGT-00045', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (48, 1, N'LGT-00046', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (49, 1, N'LGT-00047A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (50, 1, N'LGT-00048', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (51, 1, N'LGT-00048A', N'Streetlight')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (52, 2, N'STDTR_001200AZXR', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (53, 2, N'STDTR_000655LLN5', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (54, 2, N'STDTR_0033378F50', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (55, 2, N'STDTR_0006236254', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (56, 2, N'STDTR_0008675368', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (57, 2, N'STDTR_0001245841', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (58, 2, N'STDTR_0001783217', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (59, 2, N'STDTR_0009873402', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (60, 2, N'STDTR_00XX0109A0', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (61, 2, N'STDTR_000XXXB800', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (62, 2, N'STDTR_0004523810', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (63, 2, N'STDTR_0034634670', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (64, 2, N'STDTR_0896588400', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (65, 2, N'STDTR_003337X900', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (66, 2, N'STDTR_0054756000', N'Standard Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (67, 3, N'IND_TRX_006630868', N'Industrial Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (68, 3, N'IND_TRX_000234853', N'Industrial Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (69, 3, N'IND_TRX_000772285', N'Industrial Transformer')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (70, 4, N'Sub.23586', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (71, 4, N'Sub.F9EGX17', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (72, 4, N'Sub.092348', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (73, 4, N'Sub.UUB7580', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (74, 4, N'Sub.74638', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (75, 4, N'Sub.349FSB', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (76, 4, N'Sub.56t840', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (77, 4, N'Sub.94774X', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (78, 4, N'Sub.888F7TY', N'Substation Equipment')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (79, 5, N'HVT-3872X', N'High Voltage Tower')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (80, 5, N'HVT-4729X', N'High Voltage Tower')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (81, 5, N'HVT-0007X', N'High Voltage Tower')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (82, 5, N'HVT-1523X', N'High Voltage Tower')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (83, 5, N'HVT-1119X', N'High Voltage Tower')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (84, 6, N'Line Segment-A1', N'Line Between I81-Cty7')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (85, 6, N'Line Segment-A2', N'Line Between I81-Cty87')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (86, 6, N'Line Segment-A3', N'Line Between I81-Cty817')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (87, 6, N'Line Segment-A4', N'Line Between I81-Cty638')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (88, 6, N'Line Segment-A5', N'Line Between I81-Cty34')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (89, 6, N'Line Segment-C7', N'Line Between Cty1168-Cty67')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (90, 6, N'Line Segment-C8', N'Line Between Cty1143-Cty607')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (91, 6, N'Line Segment-C23', N'Line Between Cty436-Cty1181')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (92, 6, N'Line Segment-C57', N'Line Between Cty68-Cty50')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (93, 6, N'Line Segment-19', N'Line Between Cty50-I81')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (94, 6, N'Line Segment-S48', N'Line Between I81-St77')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (95, 8, N'Internal 27', N'Interconnect 3478')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (96, 8, N'Internal 59x', N'Interconnect 436')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (97, 8, N'Internal 118', N'Interconnect 982')
GO
INSERT [dbo].[Inventory] ([InventoryID], [InfrasTypeID], [InventoryName], [InventoryDesc]) VALUES (98, 9, N'VA-MD Interconnect', N'State Interconnect, VA')
GO
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
/*************** METER MODEL *****************************************************************/
SET IDENTITY_INSERT [dbo].[MeterModel] ON 
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (1, N'M-Name One', N'Analog', N'GE-GEXX-094208463.237', N'Sample Analog electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (2, N'M-Name Two', N'Analog 2', N'GE-GEXX-743308463.005', N'Sample Analog electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (3, N'AMRSPEC32', N'AMR', N'GE-DIGI-AMRSPECX32', N'Sample Digital AMR electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (4, N'AMRDIGI9', N'AMR', N'GE-DIGI-AMRDUO-9', N'Sample Digital AMR electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (5, N'SmartZeo83', N'SMART', N'GE-ZEO-1', N'Sample SMART electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (6, N'SmartZeo7E', N'SMART', N'GE-ZEO-1X', N'Sample SMART electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (7, N'GE-IND-70', N'Analog', N'GE-IND-70.3888.12', N'Sample Analog industrial-grade meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (8, N'AMR-SPR27', N'AMR', N'GE-DIGI-SUPR27', N'Sample Digital AMR industrial-grade electric meter from General Electric', N'N/A')
GO
INSERT [dbo].[MeterModel] ([MeterModelID], [MeterModelName], [MeterModelType], [MeterModelNumber], [MeterDesc], [DataFormats]) VALUES (9, N'SmartZeoSPEC', N'SMART', N'GE-ZEO-SPEC', N'Sample SMART industrial-grade electric meter from General Electric', N'N/A')
GO
SET IDENTITY_INSERT [dbo].[MeterModel] OFF
GO
/*************** WORK ORDER TYPE *************************************************************/
SET IDENTITY_INSERT [dbo].[WorkOrderType] ON 
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (1, N'Initial Install Residential', N'Initial install on a Residential property', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (2, N'Initial Install Commercial', N'Initial install on Commercial property', 2)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (3, N'Initial Install Industrial', N'Initial install on Industrial property', 3)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (4, N'Initial Install Govt. Federal', N'Initial install on Federal property', 4)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (5, N'Initial Install Govt. State', N'Initial install on State property', 5)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (6, N'Initial Install Govt. County/Parish', N'Initial install County/Parish', 6)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (7, N'Initial Install Govt. City', N'Initial install on City property', 7)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (8, N'Initial Install Infrastructure', N'Street Lights, transformers, EV charging stations, line work', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (9, N'Onsite inspection / read (SparcECo generated)', N'Inspection or meter reading done in person', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (10, N'Onsite inspection / read (Regulatory)', N'Inspection or read done to satisfy regulatory requirements', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (11, N'Onsite repair/maintenance', N'Normal repair and maintenance', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (12, N'Customer request', N'Customer requested inspection / work', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (13, N'Pre-shutoff in-person contact (3-day prior notice)', N'Pre-shutoff in-person contact (3-day prior notice)', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (14, N'Pre-shutoff label/leaflet (onsite)', N'48 hour notice', 1)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (15, N'Streetlight std', N'Normal repair and maintenance', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (16, N'Transformer std', N'Normal repair and maintenance', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (17, N'Substation Equip std', N'Normal repair and maintenance', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (18, N'High Voltage Tower std', N'Normal repair and maintenance', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (19, N'Linework std', N'Normal repair and maintenance', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (20, N'Streetlight EMER', N'Emergency repair', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (21, N'Transformer EMER', N'Emergency repair', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (22, N'Substation Equip EMER', N'Emergency repair', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (23, N'High Voltage Tower EMER', N'Emergency repair', 8)
GO
INSERT [dbo].[WorkOrderType] ([WorkOrderTypeID], [WorkOrder], [Description], [ConnectionType]) VALUES (24, N'Linework EMER', N'Emergency repair', 8)
GO
SET IDENTITY_INSERT [dbo].[WorkOrderType] OFF
GO
/*************** WORK SKILL ****************************************************************/
SET IDENTITY_INSERT [dbo].[WorkSkill] ON 
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (1, N'Lineman', N'Line work', 6)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (2, N'Gen. Contractor', N'Transformer', 2)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (3, N'Ind. Contractor', N'Transformer, IND', 3)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (4, N'Gen. Contractor', N'Lighting', 1)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (5, N'Gen. Contractor', N'Substation', 4)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (6, N'Ind. Contractor', N'High Voltage Equipment', 5)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (7, N'Interconnect', N'External', 7)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (8, N'Interconnect', N'Internal', 8)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (9, N'Interconnect', N'State-owned', 9)
GO
INSERT [dbo].[WorkSkill] ([WorkSkillID], [SkillType], [RequiredFor], [InfrasTypeID]) VALUES (10, N'State Licensed', N'State-owned', 9)
GO
SET IDENTITY_INSERT [dbo].[WorkSkill] OFF
GO
/*************** END ************************************************************************/