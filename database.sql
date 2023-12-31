USE [DoAnJaVa]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaCL] [int] IDENTITY(1,1) NOT NULL,
	[TenCL] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_TrangSuc]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_TrangSuc](
	[MaTS] [int] NOT NULL,
	[MaKC] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_CT_TrangSuc] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC,
	[MaKC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinh] [nvarchar](max) NULL,
	[MaTS] [int] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[MaKC] [int] IDENTITY(1,1) NOT NULL,
	[TenKC] [nchar](10) NULL,
	[GhiChuKC] [nvarchar](max) NULL,
 CONSTRAINT [PK_KichCo] PRIMARY KEY CLUSTERED 
(
	[MaKC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTS]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTS](
	[MaLoaiTS] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTS] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTS] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiUser]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiUser](
	[MaLoaiUser] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiUser] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaUser] PRIMARY KEY CLUSTERED 
(
	[MaLoaiUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangSuc]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangSuc](
	[MaTS] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiTS] [int] NOT NULL,
	[TenTS] [nvarchar](max) NULL,
	[DonGiaSP] [int] NULL,
	[TrongLuong] [float] NULL,
	[HamLuongChatLieu] [float] NULL,
	[LoaiDaChinh] [nvarchar](50) NULL,
	[LoaiDaPhu] [nvarchar](50) NULL,
	[MauDa] [nvarchar](50) NULL,
	[SoVienDaChinh] [int] NULL,
	[SoVienDaPhu] [int] NULL,
	[BoSuuTap] [nvarchar](max) NULL,
	[ThuongHieu] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[MaCL] [int] NULL,
	[ThongTinTS] [nvarchar](max) NULL,
	[GhiChuTS] [nvarchar](max) NULL,
	[NgayRaMat] [date] NULL,
 CONSTRAINT [PK_TrangSuc] PRIMARY KEY CLUSTERED 
(
	[MaTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/9/2023 3:39:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[MaUser] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiUser] [int] NOT NULL,
	[HoTenUser] [nvarchar](50) NOT NULL,
	[NgaySinhUser] [datetime] NOT NULL,
	[GioiTinhUser] [bit] NULL,
	[DiaChiUser] [ntext] NULL,
	[SDTUser] [numeric](18, 0) NOT NULL,
	[EmailUser] [ntext] NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
	[NgayBD] [datetime] NULL,
	[HeSoLuong] [int] NULL,
	[ChucVu] [nvarchar](50) NULL,
	[STKUser] [numeric](18, 0) NULL,
	[GhiChuNV] [ntext] NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (1, N'Vàng Trắng 10k')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (2, N'Vàng Trắng 14k')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (3, N'Kim Cương')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (4, N'Bạc')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (5, N'Ngọc Trai')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (6, N'Vàng 14K')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (7, N'Vàng 18K')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (8, N'Vàng Ý 18K')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (9, N'Bạc Ý')
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (1, 16, 5)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (1, 26, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (1, 27, 10)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (2, 16, 2)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (2, 26, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (2, 27, 2)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (3, 3, 5)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (3, 4, 6)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (3, 5, 4)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (6, 2, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (6, 3, 0)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (6, 4, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (6, 5, 5)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (6, 6, 6)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (7, 9, 4)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (7, 10, 0)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (7, 11, 8)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (8, 11, 4)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (8, 12, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (8, 13, 6)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (9, 13, 2)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (11, 13, 7)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (12, 10, 5)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (12, 11, 8)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (13, 9, 4)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (13, 10, 3)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (17, 7, 1)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (19, 17, 1)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (19, 20, 6)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (20, 17, 0)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (20, 20, 0)
INSERT [dbo].[CT_TrangSuc] ([MaTS], [MaKC], [SoLuong]) VALUES (21, 16, 8)
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (1, N'1_1.png', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (2, N'1_2.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (3, N'1_3.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (4, N'1_4.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (5, N'1_1.png', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (6, N'1_2.png', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (7, N'1_3.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (8, N'1_4.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (11, N'2_1.png', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (12, N'2_2.png', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (13, N'2_3.jpg', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (14, N'2_4.jpg', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (15, N'3_1.png', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (16, N'3_2.png', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (17, N'3_3.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (18, N'3_4.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (19, N'1_1.png', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (20, N'1_2.png', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (21, N'1_3.jpg', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (22, N'1_4jpg', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (23, N'4_1.png', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (24, N'4_2.png', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (25, N'4_3.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (26, N'4_4png', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (29, N'5_1.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (30, N'5_2.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (31, N'5_3.png', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (32, N'5_4.jpg', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (33, N'1_1.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (34, N'1_2.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (35, N'1_3.png', 9)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (36, N'1_4.jpg', 9)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (37, N'1_5.jpg', 9)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (38, N'2_1.png', 11)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (39, N'2_2.png', 11)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (40, N'2_3.jpg', 11)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (41, N'2_4.jpg', 11)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (42, N'3_1.png', 12)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (43, N'3_2.png', 12)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (44, N'3_3.jpg', 12)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (45, N'3_4.jpg', 12)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (46, N'4_1.png', 13)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (47, N'4_2.jpg', 13)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (48, N'4_3.jpg', 13)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (49, N'5_1.png', 17)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (50, N'5_2.jpg', 17)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (51, N'5_3.jpg', 17)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (52, N'5_4.jpg', 17)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (53, N'2_1.png', 19)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (54, N'2_2.png', 19)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (55, N'2_3.png', 19)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (56, N'2_4.jpg', 19)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (57, N'2_5.jpg', 19)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (58, N'3_1.png', 20)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (59, N'3_2.png', 20)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (60, N'3_3.jpg', 20)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (61, N'3_4.jpg', 20)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (62, N'4_1.png', 21)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (63, N'4_2.png', 21)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (64, N'4_3.jpg', 21)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (65, N'2_1.png', 22)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (66, N'2_2.jpg', 22)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (67, N'2_3.jpg', 22)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (68, N'2_4.jpg', 22)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (69, N'3_1.png', 24)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (70, N'3_2.png', 24)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (71, N'3_3.jpg', 24)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (72, N'3_4.jpg', 24)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaTS]) VALUES (73, N'5.jpg', 24)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[KichCo] ON 

INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (1, N'8         ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (2, N'9         ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (3, N'10        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (4, N'11        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (5, N'12        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (6, N'13        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (7, N'14        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (8, N'15        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (9, N'16        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (10, N'17        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (11, N'18        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (12, N'19        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (13, N'20        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (14, N'21        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (15, N'22        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (16, N'42        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (17, N'45        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (18, N'48        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (19, N'50        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (20, N'55        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (21, N'60        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (26, N'44        ', NULL)
INSERT [dbo].[KichCo] ([MaKC], [TenKC], [GhiChuKC]) VALUES (27, N'46        ', NULL)
SET IDENTITY_INSERT [dbo].[KichCo] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTS] ON 

INSERT [dbo].[LoaiTS] ([MaLoaiTS], [TenLoaiTS]) VALUES (1, N'Nhẫn')
INSERT [dbo].[LoaiTS] ([MaLoaiTS], [TenLoaiTS]) VALUES (2, N'Lắc')
INSERT [dbo].[LoaiTS] ([MaLoaiTS], [TenLoaiTS]) VALUES (3, N'Vòng Cổ')
INSERT [dbo].[LoaiTS] ([MaLoaiTS], [TenLoaiTS]) VALUES (4, N'Bông Tai')
SET IDENTITY_INSERT [dbo].[LoaiTS] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiUser] ON 

INSERT [dbo].[LoaiUser] ([MaLoaiUser], [TenLoaiUser]) VALUES (1, N'Nhân Viên')
INSERT [dbo].[LoaiUser] ([MaLoaiUser], [TenLoaiUser]) VALUES (2, N'Khách Hàng')
SET IDENTITY_INSERT [dbo].[LoaiUser] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangSuc] ON 

INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (1, 1, N'Nhẫn Bạc đính đá Disney|PNJ Peter Pan helo', 495000, 4.95588, 9250, N'Xoàn mỹ', N'Không gắn đá', N'Trắng', 2, 1, N'Peter Pan', N'Disney|PNJ', 0, 4, N'', N'', CAST(N'2021-06-09' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (2, 3, N'Dây cổ cưới Vàng trắng 10K đính đá ECZ PNJ XMXMW000311', 38701000, 85.75058, 4160, N'Xoàn mỹ', N'Xoàn mỹ', NULL, 120, 201, N'Eden Garden', N'PNJ', 0, 1, N'
Không phải ngẫu nhiên mà trang sức vàng 10K được nhiều người ưa chuộng. Chiếc dây cổ được chế tác từ vàng 10K và ghi điểm với sự lộng lẫy của những viên đá ECZ, PNJ sẽ cùng nàng kiêu hãnh tỏa sáng trên mọi bước đường. Sở hữu kiểu dáng mảnh mai, sản phẩm sẽ làm nổi bật vẻ đẹp kiêu sa của nàng.

Với sự bứt phá mới mẻ cùng sự sáng tạo trong thiết kế, chiếc dây cổ này sẽ thổi làn gió thời trang đa dạng cho quý cô dễ dàng phối chọn cùng những mẫu trang sức khác, từ đó khẳng định phong cách của chính mình.

Tôn vinh nét đẹp thanh tú của nàng xinh với chiếc mặt dây chuyền lấp lánh sắc bạc ánh kim cổ điển cùng sắc trắng của viên đá đính kèm, PNJSilver chắc chắn đây sẽ là những gì các nàng cần để luôn tỏa sáng và thu hút mọi ánh nhìn.', NULL, CAST(N'2019-03-02' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (3, 1, N'
Nhẫn Bạc đính đá Disney|PNJ Winnie the Pooh XM00Y060002', 665000, 5.47055, 9250, N'Xoàn mỹ', N'Không gắn đá', NULL, NULL, NULL, N'Winnie The Pooh', N'Disney|PNJ', 0, 4, NULL, NULL, CAST(N'2022-04-11' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (4, 4, N'Bông tai Vàng 18K đính đá CZ PNJ XMXMY005522', 7275000, 4.262, NULL, N'Sythetic', N'Xoàn mỹ', NULL, 4, 6, NULL, N'PNJSilver', 0, 7, N'Long lanh, kiêu sa tựa như những đóa hoa ban nở giữa rừng, thiết kế bông tai của PNJ được tạo nên giữa sự kết hợp của vàng 18K cùng đá CZ lấp lánh. Từng đường viền mềm mại được chế tác sinh động, kết hợp những viên đá CZ tròn nhỏ, tất cả đã mang đến đôi bông tai nổi bật với vẻ đẹp tinh tế.

Đừng chờ đợi mà hãy chăm chút bản thân và đẹp mọi lúc mọi nơi vì chính nàng muốn thế mà chẳng cần lý do nào khác. PNJ tin rằng, khí chất của nàng sẽ được lột tả hết khi ướm lên mình đôi bông tai này.
', NULL, CAST(N'2023-07-09' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (6, 1, N'Nhẫn Kim cương Vàng 14K Disney|PNJ Snow White & the Seven Dwarfs DD00X000287', 14230000, 6.22184, 5850, N'Kim cương', N'Không gắn đá', N'Trắng', 1, 0, N'Snow White & the Seven Dwarfs', N'Disney|PNJ', 0, 2, N'Kim cương vốn là món trang sức mang đến niềm kiêu hãnh và cảm hứng thời trang bất tận. Sở hữu riêng cho mình món trang sức kim cương chính là điều mà ai cũng mong muốn. Chiếc nhẫn được chế tác từ vàng 14K cùng điểm nhấn kim cương với 57 giác cắt chuẩn xác, tạo nên món trang sức đầy sự sang trọng và đẳng cấp.Kim cương đã đẹp, trang sức kim cương lại càng mang sức hấp dẫn khó cưỡng. Sự kết hợp mới mẻ này chắc chắn sẽ tạo nên dấu ấn thời trang hiện đại và giúp quý cô trở nên nổi bật, tự tin và thu hút sự ngưỡng mộ của mọi người.', N'', CAST(N'2024-09-04' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (7, 1, N'Nhẫn cưới nam Kim cương Vàng trắng 14K PNJ DD00W000591', 18323000, 11.94513, 5850, N'Kim cương', N'Không gắn đá', NULL, 1, NULL, NULL, N'PNJ', 1, 2, N'Kim cương vốn là món trang sức mang đến niềm kiêu hãnh và cảm hứng thời trang bất tận. Sở hữu riêng cho mình món trang sức kim cương chính là điều mà ai cũng mong muốn. Chiếc nhẫn được chế tác từ vàng 14K cùng điểm nhấn kim cương với 57 giác cắt chuẩn xác, tạo nên món trang sức đầy sự sang trọng và đẳng cấp.

Kim cương đã đẹp, trang sức kim cương lại càng mang sức hấp dẫn khó cưỡng. Sự kết hợp mới mẻ này chắc chắn sẽ tạo nên dấu ấn thời trang hiện đại và giúp quý cô trở nên nổi bật, tự tin và thu hút sự ngưỡng mộ của mọi người.

', NULL, CAST(N'2022-11-01' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (8, 1, N'Nhẫn Nam Vàng Ý 18K PNJ 0000C000579', 18999000, 28.98467, 7500, N'Không gắn đá', N'Không gắn đá', NULL, NULL, NULL, NULL, N'PNJ', 1, 8, N'Ngoài các loại vàng 10K, 14K hay 18K thì vàng Ý 18K cũng đang được nhiều người ưa chuộng bởi đặc tính dễ chế tác và giá thành hợp lý. Chiếc nhẫn được sản xuất từ chất liệu vàng Ý 18K cùng điểm nhấn đá CZ lấp lánh trên từng chi tiết.

Viên đá với những giác cắt chuẩn xác đính một cách tinh xảo trên chiếc nhẫn, tạo nên điểm nhấn tô điểm cho vẻ đẹp và phong cách của các quý cô. Hãy khoác lên mình ánh kim rực rỡ của mẫu trang sức CZ này và chinh phục ánh nhìn trên mỗi bước chân, nàng nhé!', NULL, CAST(N'2011-02-05' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (9, 2, N'Lắc tay nam Bạc đính đá PNJSilver', 6995000, 154.5, 0, N'Xoàn mỹ', N'Xoàn mỹ', N'Trắng', 0, 0, N'Không', N'PNJSilver', 0, 4, N'Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, chiếc lắc tay PNJSilver được chế tác từ chất liệu bạc 92.5 khoác lên mình vẻ ngoài trẻ trung, phá cách và “high fashion”.Điểm tô cho cổ tay với chiếc lắc bạc, đây chắc chắn sẽ là một nét chấm phá tinh tế tô điểm thêm nét cá tính, năng động và trẻ trung cho các chàng trai. Tuy chỉ sở hữu thiết kế đơn giản với điểm nhấn đính đá nho nhỏ, nhưng nó lại là phụ kiện giúp phái mạnh có vẻ ngoài thanh lịch và trở nên nổi bật hơn bao giờ hết.', N'Không', CAST(N'2022-10-10' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (11, 2, N'Lắc tay nam Bạc đính đá PNJSilver ', 6995000, 144.05, NULL, N'Xoàn mỹ', N'Xoàn mỹ', N'Trắng', NULL, NULL, NULL, N'PNJSilver', 1, 4, N'Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, chiếc lắc tay PNJSilver được chế tác từ chất liệu bạc 92.5 khoác lên mình vẻ ngoài trẻ trung, phá cách và “high fashion”.

Điểm tô cho cổ tay với chiếc lắc bạc, đây chắc chắn sẽ là một nét chấm phá tinh tế tô điểm thêm nét cá tính, năng động và trẻ trung cho các chàng trai. Tuy chỉ sở hữu thiết kế đơn giản với điểm nhấn đính đá nho nhỏ, nhưng nó lại là phụ kiện giúp phái mạnh có vẻ ngoài thanh lịch và trở nên nổi bật hơn bao giờ hết.
', NULL, CAST(N'2018-08-20' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (12, 2, N'Lắc tay bạc đính đá PNJSilver XM00W060007', 595000, 7.8585, 9250, N'Xoàn mỹ', N'Không gắn đá', N'Trắng', 0, 0, N'', N'PNJSilver', 0, 4, N'Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, chiếc lắc tay PNJSilver được chế tác từ chất liệu bạc 92.5 khoác lên mình vẻ ngoài trẻ trung, phá cách và “high fashion”.Điểm tô cho cổ tay nàng với chiếc lắc bạc xinh xắn, đây chắc chắn sẽ là một nét chấm phá tinh tế tô điểm thêm nét cá tính, năng động và trẻ trung cho các cô gái. Tuy chỉ sở hữu thiết kế đơn giản với điểm nhấn đính đá nho nhỏ, nhưng nó lại là phụ kiện giúp các cô nàng có vẻ ngoài thanh lịch, nữ tính và trở nên nổi bật hơn bao giờ hết.', N'', CAST(N'2018-02-08' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (13, 2, N'Lắc tay Vàng trắng 10K đính đá ECZ PNJ Trịnh Collection XMXMW000349', 3420000, 4.56742, NULL, N'Xoàn mỹ', N'Xoàn mỹ', NULL, 1, 6, N'Yêu Thương Vô Cùng', N'PNJ', 0, 1, N'Lấy cảm hứng từ sự trẻ trung và nét kiêu sa của những quý cô, PNJ mang đến sản phẩm lắc tay với sự kết hợp giữa vàng 10K cùng đá ECZ. Chiếc lắc nổi bật nhờ vào ánh kim của vàng 10K được tôn lên trên từng đường viền, kết hợp đá ECZ tròn nhỏ. Tất cả cộng hưởng để tôn vinh nhan sắc kiêu sa của phái đẹp.

Trang sức ECZ là sự hội tụ của phong cách thiết kế hiện đại kết hợp trình độ chế tác cao. Dòng trang sức này mang đến cho bạn thêm nhiều sự lựa chọn với chất lượng đảm bảo cùng giá thành hợp lý.', NULL, CAST(N'2020-07-17' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (17, 2, N'Lắc tay trẻ em bạc đính đá PNJSilver hình con bọ XMXMW060049', 595000, 5.88481, 9250, N'Xoàn mỹ', N'Xoàn mỹ', N'Trắng', NULL, NULL, NULL, N'PNJSilver', 0, 4, NULL, NULL, CAST(N'2020-10-21' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (19, 3, N'Dây chuyền nam Bạc Ý PNJSilver 0000W060070', 3895000, 129.22333, 9250, N'Không gắn đá', N'Không gắn đá', N'Trắng', NULL, NULL, NULL, N'PNJSilver', 1, 9, N'Tiếp nối xu hướng trang sức theo phong cách trẻ trung và cá tính, những món trang sức từ PNJSilver chắc chắn sẽ làm dậy sóng thế giới thời trang của các cô gái trẻ. Chiếc dây chuyền với cảm hứng thiết kế hoàn toàn mới lạ, đến từ những cung bậc cảm xúc sẽ đưa nàng đến với thế giới của riêng nàng.

Đồng thời để khơi gợi sự chú ý, nàng hãy mix&match với các items khác để không chỉ nổi bật mà còn là tâm điểm của những bữa tiệc nhẹ cuối tuần.
', NULL, CAST(N'2018-09-09' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (20, 3, N'Dây chuyền Bạc đính đá PNJSilver Thánh giá XMXMW060054', 1990000, 25.9, 9250, N'Xoàn mỹ', NULL, N'Trắng', NULL, NULL, NULL, N'PNJSilver', 1, 4, N'Được hoàn thiện vẻ đẹp duy mỹ bởi những viên đá lấp lánh đính thủ công lên từng mảnh trang sức, chiếc mặt dây chuyền được chế tác từ chất liệu bạc cao cấp 92.5 kết hợp cùng sự lấp lánh của những viên đá màu trắng, tựa như đóa hoa bừng nở trên bề mặt một cách mỹ miều và tinh tế.

Tôn vinh nét đẹp thanh tú của nàng xinh với chiếc mặt dây chuyền lấp lánh sắc bạc ánh kim cổ điển cùng sắc trắng của viên đá đính kèm, PNJSilver chắc chắn đây sẽ là những gì các nàng cần để luôn tỏa sáng và thu hút mọi ánh nhìn.', NULL, CAST(N'2017-10-21' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (21, 3, N'Dây cổ Vàng trắng 14K đính ngọc trai Akoya PNJ PA00W060000', 34900000, 5.167, 5850, N'Akoya Pearl', N'Không gắn đá', N'Không', 0, 0, N'Không', N'PNJ', 0, 5, N'Ngọc trai luôn là món trang sức mà bất cứ cô nàng cũng muốn được sở hữu. Sợi dây cổ được chế tác từ vàng 14K với kiểu dáng sang trọng, từng đường nét đều được chế tác kỳ công và đạt đến trình độ tinh xảo điêu luyện. Bên cạnh đó, với sự sáng tạo đến từ gu thẩm mĩ của đội ngũ thiết kế, PNJ mang đến chiếc dây cổ đính ngọc trai Akoya tuyệt đẹp.Hướng đến vẻ đẹp của sự tinh tế, thanh lịch và sang trọng nhưng vẫn trẻ trung, tràn đầy năng lượng, trang sức ngọc trai tôn tạo những vẻ đẹp mới một cách khéo léo và kỳ công.', N'Không', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (22, 4, N'Bông tai Bạc đính đá PNJSilver ZTXMY000008', 595000, 4.262, NULL, N'Sythetic', N'Xoàn mỹ', NULL, 4, 6, NULL, N'PNJSilver', 0, 4, NULL, NULL, CAST(N'2017-02-21' AS Date))
INSERT [dbo].[TrangSuc] ([MaTS], [MaLoaiTS], [TenTS], [DonGiaSP], [TrongLuong], [HamLuongChatLieu], [LoaiDaChinh], [LoaiDaPhu], [MauDa], [SoVienDaChinh], [SoVienDaPhu], [BoSuuTap], [ThuongHieu], [GioiTinh], [MaCL], [ThongTinTS], [GhiChuTS], [NgayRaMat]) VALUES (24, 4, N'Bông tai nam Bạc đính đá PNJSilver XMXMW060150', 455000, 4.368, 9250, N'Xoàn mỹ', N'Xoàn mỹ', NULL, NULL, NULL, NULL, N'PNJSilver', 1, 4, N'Sở hữu thiết kế thời thượng cùng các sắc đá, PNJSilver tự hào mang đến đôi bông tai với vẻ cá tính. Bên cạnh đó, sản phẩm còn được chế tác từ chất liệu bạc cao cấp nên bông tai luôn sở hữu độ bền đẹp theo thời gian.

Cùng PNJSilver làm mới phong cách với bông tai bạc tinh tế này nhé nàng ơi! Bởi sự tinh tế trong nó chính là điểm nhấn đặc biệt giúp chàng trở nên nổi bần bật và lan tỏa sức hút từ thần thái của mình.
', NULL, CAST(N'2018-10-20' AS Date))
SET IDENTITY_INSERT [dbo].[TrangSuc] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([MaUser], [MaLoaiUser], [HoTenUser], [NgaySinhUser], [GioiTinhUser], [DiaChiUser], [SDTUser], [EmailUser], [TenDangNhap], [PassWord], [NgayBD], [HeSoLuong], [ChucVu], [STKUser], [GhiChuNV], [IsAdmin]) VALUES (1, 1, N'Phan Hồ Yến Nhi', CAST(N'2003-08-20T00:00:00.000' AS DateTime), 0, NULL, CAST(932711034 AS Numeric(18, 0)), N'phyn@gmail.com', N'nhiphy3008', N'12345', NULL, NULL, N'NhanVien', NULL, NULL, 1)
INSERT [dbo].[Users] ([MaUser], [MaLoaiUser], [HoTenUser], [NgaySinhUser], [GioiTinhUser], [DiaChiUser], [SDTUser], [EmailUser], [TenDangNhap], [PassWord], [NgayBD], [HeSoLuong], [ChucVu], [STKUser], [GhiChuNV], [IsAdmin]) VALUES (2, 2, N'Trần Văn Tú', CAST(N'2000-10-21T00:00:00.000' AS DateTime), 1, NULL, CAST(961050667 AS Numeric(18, 0)), N'tvt@gmail.com', N'tvtu2110', N'54321', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([MaUser], [MaLoaiUser], [HoTenUser], [NgaySinhUser], [GioiTinhUser], [DiaChiUser], [SDTUser], [EmailUser], [TenDangNhap], [PassWord], [NgayBD], [HeSoLuong], [ChucVu], [STKUser], [GhiChuNV], [IsAdmin]) VALUES (8, 1, N'Nguyễn Hồng Ánh', CAST(N'1999-02-02T00:00:00.000' AS DateTime), 0, NULL, CAST(323334433 AS Numeric(18, 0)), N'anh94@gmail.com', N'anh22', N'anh22', NULL, NULL, N'NhanVien', NULL, NULL, 0)
INSERT [dbo].[Users] ([MaUser], [MaLoaiUser], [HoTenUser], [NgaySinhUser], [GioiTinhUser], [DiaChiUser], [SDTUser], [EmailUser], [TenDangNhap], [PassWord], [NgayBD], [HeSoLuong], [ChucVu], [STKUser], [GhiChuNV], [IsAdmin]) VALUES (9, 1, N'Phùng Anh Tuấn', CAST(N'2001-10-19T00:00:00.000' AS DateTime), 1, NULL, CAST(234543455 AS Numeric(18, 0)), N'tuan01@gmail.com', N'tuan1019', N'1019', NULL, NULL, N'NhanVien', NULL, NULL, 0)
INSERT [dbo].[Users] ([MaUser], [MaLoaiUser], [HoTenUser], [NgaySinhUser], [GioiTinhUser], [DiaChiUser], [SDTUser], [EmailUser], [TenDangNhap], [PassWord], [NgayBD], [HeSoLuong], [ChucVu], [STKUser], [GhiChuNV], [IsAdmin]) VALUES (10, 2, N'Cao Xuân Linh', CAST(N'2003-04-30T00:00:00.000' AS DateTime), 0, NULL, CAST(928473894 AS Numeric(18, 0)), N'linh132gmail.com', N'linhcute', N'linh30283', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[CT_TrangSuc]  WITH CHECK ADD  CONSTRAINT [FK_CT_TrangSuc_KichCo] FOREIGN KEY([MaKC])
REFERENCES [dbo].[KichCo] ([MaKC])
GO
ALTER TABLE [dbo].[CT_TrangSuc] CHECK CONSTRAINT [FK_CT_TrangSuc_KichCo]
GO
ALTER TABLE [dbo].[CT_TrangSuc]  WITH CHECK ADD  CONSTRAINT [FK_CT_TrangSuc_TrangSuc] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TrangSuc] ([MaTS])
GO
ALTER TABLE [dbo].[CT_TrangSuc] CHECK CONSTRAINT [FK_CT_TrangSuc_TrangSuc]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_TrangSuc] FOREIGN KEY([MaTS])
REFERENCES [dbo].[TrangSuc] ([MaTS])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_TrangSuc]
GO
ALTER TABLE [dbo].[TrangSuc]  WITH CHECK ADD  CONSTRAINT [FK_TrangSuc_ChatLieu] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChatLieu] ([MaCL])
GO
ALTER TABLE [dbo].[TrangSuc] CHECK CONSTRAINT [FK_TrangSuc_ChatLieu]
GO
ALTER TABLE [dbo].[TrangSuc]  WITH CHECK ADD  CONSTRAINT [FK_TrangSuc_LoaiTS] FOREIGN KEY([MaLoaiTS])
REFERENCES [dbo].[LoaiTS] ([MaLoaiTS])
GO
ALTER TABLE [dbo].[TrangSuc] CHECK CONSTRAINT [FK_TrangSuc_LoaiTS]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_LoaiUser] FOREIGN KEY([MaLoaiUser])
REFERENCES [dbo].[LoaiUser] ([MaLoaiUser])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_LoaiUser]
GO
