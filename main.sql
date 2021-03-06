USE [DemoForCsc439db]
GO
/****** Object:  Table [dbo].[ClassInfo]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassInfo](
	[c_id] [int] NOT NULL,
	[c_name] [int] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[depertment] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login2]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login2](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Login2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monthlyFee]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monthlyFee](
	[c_id] [int] NOT NULL,
	[Fee] [int] NOT NULL,
 CONSTRAINT [PK_monthlyFee] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [int] NULL,
	[roll] [int] NULL,
	[fee] [int] NULL,
	[date_of_payment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[sec_id] [int] NOT NULL,
	[sec_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[s_id] [int] NOT NULL,
	[s_name] [nvarchar](50) NOT NULL,
	[s_address] [nvarchar](50) NOT NULL,
	[s_DOB] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentInClass]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentInClass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [int] NOT NULL,
	[s_id] [int] NOT NULL,
	[roll] [int] NULL,
 CONSTRAINT [PK_StudentInClass] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 12/9/2018 1:27:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Contect] [nvarchar](50) NULL,
	[Bdate] [varchar](20) NULL,
	[Class] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (1, 1)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (2, 2)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (3, 3)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (4, 4)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (5, 5)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (6, 6)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (7, 7)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (8, 8)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (9, 9)
INSERT [dbo].[ClassInfo] ([c_id], [c_name]) VALUES (10, 10)
INSERT [dbo].[Faculties] ([id], [name], [depertment]) VALUES (1, N'Riaz Hasib', N'CSE')
INSERT [dbo].[Faculties] ([id], [name], [depertment]) VALUES (2, N'Safwana Haque', N'CSE')
INSERT [dbo].[Login2] ([id], [username], [password]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[Login2] ([id], [username], [password]) VALUES (2, N'arman', N'123')
INSERT [dbo].[Login2] ([id], [username], [password]) VALUES (3, N'riaz', N'riaz')
INSERT [dbo].[Login2] ([id], [username], [password]) VALUES (15103089, N'Ratri', N'Ratri')
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (1, 500)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (2, 500)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (3, 500)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (4, 500)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (5, 1000)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (6, 1000)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (7, 1000)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (8, 1200)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (9, 1200)
INSERT [dbo].[monthlyFee] ([c_id], [Fee]) VALUES (10, 1200)
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [c_name], [roll], [fee], [date_of_payment]) VALUES (1, 1, 1, 500, N'20-02-18')
INSERT [dbo].[Payment] ([id], [c_name], [roll], [fee], [date_of_payment]) VALUES (5, 10, 10, 1200, N'12-08-2018')
INSERT [dbo].[Payment] ([id], [c_name], [roll], [fee], [date_of_payment]) VALUES (6, 7, 1, 1000, N'12-08-2018')
SET IDENTITY_INSERT [dbo].[Payment] OFF
INSERT [dbo].[Student] ([s_id], [s_name], [s_address], [s_DOB]) VALUES (18, N'arman Ahmed', N'uttara', NULL)
INSERT [dbo].[Student] ([s_id], [s_name], [s_address], [s_DOB]) VALUES (15103080, N'Alex', N'Australia', NULL)
INSERT [dbo].[Student] ([s_id], [s_name], [s_address], [s_DOB]) VALUES (15103103, N'Arman Ahmed', N'188, ashkona, dakkhinkhan, dhaka-1230', NULL)
INSERT [dbo].[Student] ([s_id], [s_name], [s_address], [s_DOB]) VALUES (15103107, N'Noman Choudhury', N'185, ashkona, dakkhinkhan, dhaka-1230', NULL)
SET IDENTITY_INSERT [dbo].[StudentInClass] ON 

INSERT [dbo].[StudentInClass] ([id], [c_name], [s_id], [roll]) VALUES (1, 1, 1, 1)
INSERT [dbo].[StudentInClass] ([id], [c_name], [s_id], [roll]) VALUES (10, 7, 15103080, 1)
INSERT [dbo].[StudentInClass] ([id], [c_name], [s_id], [roll]) VALUES (7, 10, 15103103, 10)
INSERT [dbo].[StudentInClass] ([id], [c_name], [s_id], [roll]) VALUES (8, 9, 15103104, 12)
INSERT [dbo].[StudentInClass] ([id], [c_name], [s_id], [roll]) VALUES (9, 2, 15103107, 1)
SET IDENTITY_INSERT [dbo].[StudentInClass] OFF
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Address], [Contect], [Bdate], [Class]) VALUES (20003, N'Noman Choudhury', N'188, uttara, dhaka', N'01685341645', NULL, 11)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Contect], [Bdate], [Class]) VALUES (20012, N'Arman', N'188, uttara, dhaka', N'019541354', NULL, 5)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Contect], [Bdate], [Class]) VALUES (20013, N'sadia asej sathi', N'189, Adhkona, Dakkhinkhan, Dhaka-1230', N'0198436164', NULL, 10)
INSERT [dbo].[Students] ([Id], [Name], [Address], [Contect], [Bdate], [Class]) VALUES (20014, N'r', N'34', N'324', NULL, 4)
SET IDENTITY_INSERT [dbo].[Students] OFF
