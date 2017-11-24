CREATE TABLE [dbo].[TestType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TestType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TestType] ON
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (1, N'Blood')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (6, N'x-Ray')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (7, N'MRI')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (9, N'ECG')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (10, N'Urine')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (11, N'USG')
INSERT [dbo].[TestType] ([Id], [Name]) VALUES (12, N'Echo')
SET IDENTITY_INSERT [dbo].[TestType] OFF
/****** Object:  Table [dbo].[Patient]    Script Date: 09/25/2017 00:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (1, N'Imrul Qouyes', CAST(0x473D0B00 AS Date), N'017196000000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (2, N'Arif Hossain', CAST(0x543D0B00 AS Date), N'01714285598')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (3, N'Mehadi Hasan', CAST(0xA8180B00 AS Date), N'01676038532')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (6, N'Zia Mirza', CAST(0xB7160B00 AS Date), N'0152157000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (7, N'Maq Rony', CAST(0xB7160B00 AS Date), N'01681234567')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (8, N'Abu Jayed', CAST(0x82300B00 AS Date), N'0173456789')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (9, N'Mr. X', CAST(0x4B1F0B00 AS Date), N'0101010101')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (10, N'Dr. Rafiq', CAST(0x06EC0A00 AS Date), N'01712285965')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (11, N'Zia Mirza', CAST(0xA8180B00 AS Date), N'01521570000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (12, N'Abu Jayed', CAST(0x523D0B00 AS Date), N'01553245678')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (13, N'Leonel Messi', CAST(0xF6130B00 AS Date), N'01910000000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (14, N'Mr. Zaman', CAST(0x38FA0A00 AS Date), N'0181000000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (15, N'Partho Protim', CAST(0xB8170B00 AS Date), N'01610000000')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (16, N'Junaid Shahriar', CAST(0x6F1C0B00 AS Date), N'01919999999')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (17, N'Rafiqul', CAST(0x46FA0A00 AS Date), N'01521555555')
INSERT [dbo].[Patient] ([Id], [Name], [DOB], [Mobile]) VALUES (18, N'Hasan Zaman', CAST(0xBA160B00 AS Date), N'018133232322')
SET IDENTITY_INSERT [dbo].[Patient] OFF
/****** Object:  Table [dbo].[TestInfo]    Script Date: 09/25/2017 00:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Fee] [float] NOT NULL,
	[TestTypeId] [int] NOT NULL,
 CONSTRAINT [PK_TestInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TestInfo] ON
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (4, N'Blood Group', 1200, 1)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (7, N'Red Blood Cell COunt', 700, 1)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (12, N'WBC Count', 100, 1)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (15, N'Lipid profile', 450, 1)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (16, N'Feet X-ray', 300, 6)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (17, N'S. Creatinine', 350, 1)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (18, N'Pregnancy profile', 550, 11)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (19, N'Whole Abdomen', 800, 11)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (20, N'LS Spine', 1100, 6)
INSERT [dbo].[TestInfo] ([Id], [Name], [Fee], [TestTypeId]) VALUES (21, N'ECG', 150, 9)
SET IDENTITY_INSERT [dbo].[TestInfo] OFF
/****** Object:  Table [dbo].[Payment]    Script Date: 09/25/2017 00:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillNumber] [varchar](50) NOT NULL,
	[TotalBill] [float] NOT NULL,
	[Date] [date] NULL,
	[Status] [varchar](50) NOT NULL,
	[PatientId] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (13, N'yg_VOT4D1Qg', 1250, CAST(0x523D0B00 AS Date), N'False', 12)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (14, N'SFDNVT4D1Qg', 1350, CAST(0x533D0B00 AS Date), N'True', 12)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (15, N'bjw-c24D1Qg', 2400, CAST(0x533D0B00 AS Date), N'False', 13)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (16, N'WzUsx24D1Qg', 450, CAST(0x533D0B00 AS Date), N'False', 13)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (17, N'io2h324D1Qg', 1000, CAST(0x533D0B00 AS Date), N'False', 13)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (18, N'jVYgTnED1Qg', 150, CAST(0x533D0B00 AS Date), N'False', 13)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (19, N'G6Ac-pwD1Qg', 1650, CAST(0x533D0B00 AS Date), N'False', 14)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (20, N'mAz4Zp0D1Qg', 2250, CAST(0x533D0B00 AS Date), N'False', 15)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (21, N'yseTwqYD1Qg', 1700, CAST(0x533D0B00 AS Date), N'False', 11)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (22, N'uaF6GKcD1Qg', 2100, CAST(0x533D0B00 AS Date), N'False', 16)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (23, N'1iJW8KcD1Qg', 3550, CAST(0x533D0B00 AS Date), N'False', 17)
INSERT [dbo].[Payment] ([Id], [BillNumber], [TotalBill], [Date], [Status], [PatientId]) VALUES (24, N'AGayO6gD1Qg', 1450, CAST(0x533D0B00 AS Date), N'False', 18)
SET IDENTITY_INSERT [dbo].[Payment] OFF
/****** Object:  Table [dbo].[TestRequest]    Script Date: 09/25/2017 00:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[TestInfoId] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_TestRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TestRequest] ON
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (39, 12, 19, CAST(0x513D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (40, 12, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (41, 12, 19, CAST(0x523D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (42, 12, 15, CAST(0x503D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (43, 12, 19, CAST(0x523D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (44, 12, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (45, 12, 12, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (46, 13, 16, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (47, 13, 18, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (48, 13, 20, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (49, 13, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (50, 13, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (51, 13, 15, CAST(0x4A3D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (52, 13, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (53, 13, 18, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (54, 13, 21, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (55, 14, 21, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (56, 14, 4, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (57, 14, 16, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (58, 15, 12, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (59, 15, 19, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (60, 15, 21, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (61, 15, 4, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (62, 11, 18, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (63, 11, 19, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (64, 11, 17, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (65, 16, 15, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (66, 16, 18, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (67, 16, 20, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (68, 17, 18, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (69, 17, 7, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (70, 17, 4, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (71, 17, 20, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (72, 18, 4, CAST(0x533D0B00 AS Date))
INSERT [dbo].[TestRequest] ([Id], [PatientId], [TestInfoId], [Date]) VALUES (73, 18, 17, CAST(0x533D0B00 AS Date))
SET IDENTITY_INSERT [dbo].[TestRequest] OFF
/****** Object:  ForeignKey [FK_TestInfo_TestType]    Script Date: 09/25/2017 00:06:17 ******/
ALTER TABLE [dbo].[TestInfo]  WITH CHECK ADD  CONSTRAINT [FK_TestInfo_TestType] FOREIGN KEY([TestTypeId])
REFERENCES [dbo].[TestType] ([Id])
GO
ALTER TABLE [dbo].[TestInfo] CHECK CONSTRAINT [FK_TestInfo_TestType]
GO
/****** Object:  ForeignKey [FK_Payment_Payment]    Script Date: 09/25/2017 00:06:17 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Payment] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Payment]
GO
/****** Object:  ForeignKey [FK_TestRequest_Patient]    Script Date: 09/25/2017 00:06:17 ******/
ALTER TABLE [dbo].[TestRequest]  WITH CHECK ADD  CONSTRAINT [FK_TestRequest_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([Id])
GO
ALTER TABLE [dbo].[TestRequest] CHECK CONSTRAINT [FK_TestRequest_Patient]
GO
/****** Object:  ForeignKey [FK_TestRequest_TestInfo]    Script Date: 09/25/2017 00:06:17 ******/
ALTER TABLE [dbo].[TestRequest]  WITH CHECK ADD  CONSTRAINT [FK_TestRequest_TestInfo] FOREIGN KEY([TestInfoId])
REFERENCES [dbo].[TestInfo] ([Id])
GO
ALTER TABLE [dbo].[TestRequest] CHECK CONSTRAINT [FK_TestRequest_TestInfo]
GO
