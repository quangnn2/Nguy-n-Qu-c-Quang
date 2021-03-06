USE [Quanlymuabansach]
GO
/****** Object:  Table [dbo].[chiTietBan]    Script Date: 03/05/2018 12:38:29 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietBan](
	[ID] [nvarchar](50) NOT NULL,
	[MaSach] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[IDKhachHang] [int] NULL,
	[Gia] [float] NULL,
	[NgayBan] [date] NULL,
 CONSTRAINT [PK_ChiTietBan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chiTietNhap]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietNhap](
	[ID] [nvarchar](50) NOT NULL,
	[IDNhaCungCap] [int] NULL,
	[MaSach] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [float] NULL,
	[NgayNhap] [date] NULL,
 CONSTRAINT [PK_chiTietNhap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachHang]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienthoai] [int] NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhaCungCap]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sach]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[MaSach] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[IDTacGia] [int] NULL,
	[IDTheLoai] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tacGia]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tacGia](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTacGia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[theLoai]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theLoai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TheLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenHienThi] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[PassWord] [nvarchar](max) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_Tonkho]    Script Date: 03/05/2018 12:38:30 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Tonkho]
AS
SELECT        dbo.sach.MaSach, dbo.sach.TenSach, SUM(dbo.chiTietNhap.SoLuong) AS tn, SUM(dbo.chiTietBan.SoLuong) AS tx, SUM(dbo.chiTietNhap.SoLuong) - SUM(dbo.chiTietBan.SoLuong) AS Ton
FROM            dbo.chiTietBan INNER JOIN
                         dbo.sach ON dbo.chiTietBan.MaSach = dbo.sach.MaSach INNER JOIN
                         dbo.chiTietNhap ON dbo.sach.MaSach = dbo.chiTietNhap.MaSach
GROUP BY dbo.sach.MaSach, dbo.sach.TenSach

GO
INSERT [dbo].[chiTietBan] ([ID], [MaSach], [SoLuong], [IDKhachHang], [Gia], [NgayBan]) VALUES (N'b1', N's1', 5, 1030, 14000, CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[chiTietBan] ([ID], [MaSach], [SoLuong], [IDKhachHang], [Gia], [NgayBan]) VALUES (N'b2', N's4', 2, 1033, 14000, CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[chiTietBan] ([ID], [MaSach], [SoLuong], [IDKhachHang], [Gia], [NgayBan]) VALUES (N'b3', N's1', 5, 1030, 14000, CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[chiTietBan] ([ID], [MaSach], [SoLuong], [IDKhachHang], [Gia], [NgayBan]) VALUES (N'b4', N's4', 2, 1030, 14000, CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[chiTietBan] ([ID], [MaSach], [SoLuong], [IDKhachHang], [Gia], [NgayBan]) VALUES (N'b5', N's1', 5, 1030, 14000, CAST(0x2F3E0B00 AS Date))
INSERT [dbo].[chiTietNhap] ([ID], [IDNhaCungCap], [MaSach], [SoLuong], [Gia], [NgayNhap]) VALUES (N'n1', 1010, N's2', 20, 15000, CAST(0x123E0B00 AS Date))
INSERT [dbo].[chiTietNhap] ([ID], [IDNhaCungCap], [MaSach], [SoLuong], [Gia], [NgayNhap]) VALUES (N'n2', 1010, N's1', 15, 15000, CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[chiTietNhap] ([ID], [IDNhaCungCap], [MaSach], [SoLuong], [Gia], [NgayNhap]) VALUES (N'n4', 1010, N's3', 230, 15000, CAST(0x373E0B00 AS Date))
INSERT [dbo].[chiTietNhap] ([ID], [IDNhaCungCap], [MaSach], [SoLuong], [Gia], [NgayNhap]) VALUES (N'n5', 1010, N's4', 50, 13000, CAST(0x433E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[khachHang] ON 

INSERT [dbo].[khachHang] ([ID], [TenKhachHang], [DiaChi], [Email], [SoDienthoai], [NgaySinh]) VALUES (28, N'Nguyễn Anh', N'Hà  Nội', N'eww@gmail.com', 123456789, CAST(0x283E0B00 AS Date))
INSERT [dbo].[khachHang] ([ID], [TenKhachHang], [DiaChi], [Email], [SoDienthoai], [NgaySinh]) VALUES (1029, N'Lê Hoàng', N'Hà  Nội', N'eww@gmail.com', 123456789, CAST(0x283E0B00 AS Date))
INSERT [dbo].[khachHang] ([ID], [TenKhachHang], [DiaChi], [Email], [SoDienthoai], [NgaySinh]) VALUES (1030, N'Trần Vinh', N'Hà  Nội', N'eww@gmail.com', 123456789, CAST(0x283E0B00 AS Date))
INSERT [dbo].[khachHang] ([ID], [TenKhachHang], [DiaChi], [Email], [SoDienthoai], [NgaySinh]) VALUES (1033, N'Nguyễn Anh', N'Hà  Nội', N'eww@gmail.com', 123456789, CAST(0x283E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[khachHang] OFF
SET IDENTITY_INSERT [dbo].[nhaCungCap] ON 

INSERT [dbo].[nhaCungCap] ([ID], [TenNhaCungCap], [DiaChi], [Email], [SoDienThoai]) VALUES (1008, N'Nguyễn Văn Cừ', N'Hồ Chí Minh', N'dhb@fd', 1634896)
INSERT [dbo].[nhaCungCap] ([ID], [TenNhaCungCap], [DiaChi], [Email], [SoDienThoai]) VALUES (1010, N'Tiền Phong', N'Hồ Chí Minh', N'dhb@fd', 1634896)
SET IDENTITY_INSERT [dbo].[nhaCungCap] OFF
INSERT [dbo].[sach] ([MaSach], [TenSach], [IDTacGia], [IDTheLoai]) VALUES (N's1', N'Truyện  Kiều', 1007, 1009)
INSERT [dbo].[sach] ([MaSach], [TenSach], [IDTacGia], [IDTheLoai]) VALUES (N's2', N'Tắt đèn', 31, 7)
INSERT [dbo].[sach] ([MaSach], [TenSach], [IDTacGia], [IDTheLoai]) VALUES (N's3', N'Lục Vân Tiên', 5, 1009)
INSERT [dbo].[sach] ([MaSach], [TenSach], [IDTacGia], [IDTheLoai]) VALUES (N's4', N'Bánh trôi nước', 3, 1009)
SET IDENTITY_INSERT [dbo].[tacGia] ON 

INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (2, N'Nam Cao')
INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (3, N'Hồ Xuân Hương')
INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (5, N'Nguyển Đình Chiểu')
INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (31, N'Ngô Tất Tố')
INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (1007, N'Nguyễn Du')
INSERT [dbo].[tacGia] ([ID], [TenTacGia]) VALUES (1009, N'Nguyễn Trãi')
SET IDENTITY_INSERT [dbo].[tacGia] OFF
SET IDENTITY_INSERT [dbo].[theLoai] ON 

INSERT [dbo].[theLoai] ([ID], [TheLoai]) VALUES (2, N'Truyền thuyết')
INSERT [dbo].[theLoai] ([ID], [TheLoai]) VALUES (7, N'Bút kí')
INSERT [dbo].[theLoai] ([ID], [TheLoai]) VALUES (8, N'Truyện ngắn')
INSERT [dbo].[theLoai] ([ID], [TheLoai]) VALUES (1009, N'Thơ')
INSERT [dbo].[theLoai] ([ID], [TheLoai]) VALUES (1010, N'Cổ tích')
SET IDENTITY_INSERT [dbo].[theLoai] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [TenHienThi], [TenDangNhap], [PassWord], [Quyen]) VALUES (1, N'admin', N'admin', N'123', N'admin')
INSERT [dbo].[user] ([ID], [TenHienThi], [TenDangNhap], [PassWord], [Quyen]) VALUES (2, N'user', N'user', N'123', NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[chiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[khachHang] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_KhachHang]
GO
ALTER TABLE [dbo].[chiTietBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBan_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chiTietBan] CHECK CONSTRAINT [FK_ChiTietBan_Sach]
GO
ALTER TABLE [dbo].[chiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_chiTietNhap_nhaCungCap] FOREIGN KEY([IDNhaCungCap])
REFERENCES [dbo].[nhaCungCap] ([ID])
GO
ALTER TABLE [dbo].[chiTietNhap] CHECK CONSTRAINT [FK_chiTietNhap_nhaCungCap]
GO
ALTER TABLE [dbo].[chiTietNhap]  WITH CHECK ADD  CONSTRAINT [FK_chiTietNhap_sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[sach] ([MaSach])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chiTietNhap] CHECK CONSTRAINT [FK_chiTietNhap_sach]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([IDTacGia])
REFERENCES [dbo].[tacGia] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[theLoai] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "chiTietBan"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "chiTietNhap"
            Begin Extent = 
               Top = 6
               Left = 486
               Bottom = 136
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Tonkho'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Tonkho'
GO
