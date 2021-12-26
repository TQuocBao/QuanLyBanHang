CREATE DATABASE QuanLyBANHANG
go
USE QuanLyBANHANG
go

CREATE TABLE NhanVien
(
	MaNV nvarchar(50) PRIMARY KEY,
	HoNV nvarchar(50),
	Ten  nvarchar(50),
	Diachi nvarchar(50),
	Dienthoai int
)
go
CREATE TABLE KhachHang
(
	MaKH nvarchar(50) PRIMARY KEY,
	TenKH nvarchar(50),
	DiaChi nvarchar(50),
	DienThoai int,
	Fax int,
	Email nvarchar(100)
)
go
CREATE TABLE HoaDon
(
	MaHD nvarchar(50) PRIMARY KEY,
	MaKH nvarchar(50) FOREIGN KEY REFERENCES KhachHang(MaKH),
	MaNV nvarchar(50) FOREIGN KEY REFERENCES NhanVien(MaNV),
	NgayLapHD date,
	NgayGiaoHang date
)
go
CREATE TABLE LoaiSP
(
	MaLoaiSP int PRIMARY KEY,
	TenLoaiSP nvarchar(50)
)
go
CREATE TABLE SanPham
(
	MaSP nvarchar(50) PRIMARY KEY,
	TenSP nvarchar(50),
	Donvitinh nvarchar(50),
	Dongia int,
	MaLoaiSP int FOREIGN KEY REFERENCES LoaiSP(MaLoaiSP),
	HinhSP nvarchar(500)
)
go
CREATE TABLE CTHD
(
	MaHD nvarchar(50) FOREIGN KEY REFERENCES HoaDon(MaHD),
	MaSP nvarchar(50) FOREIGN KEY REFERENCES SanPham(MaSP),
	Soluong int,
	DongiaBan int,
	PRIMARY KEY( MaHD, MaSP)
)
go
CREATE TABLE Users
(
	idUser int,
	Email varchar(50),
	Password varchar(50)
)
