-- bài tập lớn csdl
use report;

-- create table

create table if not exists nhanvien
(
MaNV varchar(50) primary key ,
TenNV varchar(50),
Gmail varchar(50),
SDT varchar(50),
GT varchar(50),
Luong varchar(50)
);

create table if not exists khachhang
(
MaKH varchar(50) primary key,
TenKH varchar(50),
SDT varchar(50),
GT varchar(50)
);

create table if not exists danhmuc (
  MaDanhMuc varchar(50) primary key,
  TenDanhMuc text
);

create table if not exists thuoc
(
MaThuoc varchar(50) primary key,
TenThuoc varchar(50),
MaDanhMuc varchar(50),
DVT varchar(50),
CongDung varchar(50),
SoLuongThuocCon int,
GiaBan decimal(10,2),
NgaySanXuat date,
NgayHetHan date,
foreign key (MaDanhMuc) references danhmuc(MaDanhMuc)
);

create table if not exists hoadon
(
MaHD varchar(50) primary key,
MaNV varchar(50),
MaKH varchar(50),
NgayBan date,
DVT varchar(50),
tonggia int,
foreign key (MaNV) references nhanvien(MaNV),
foreign key (MaKH) references khachhang(MaKH)
);

create table if not exists thuoc_trong_hoa_don
(
-- (MaHD, MaThuoc) primary key,
MaHD varchar(50),
MaThuoc varchar(50),
SoLuongBan int,
foreign key (MaHD) references hoadon(MaHD),
foreign key (MaThuoc) references thuoc(MaThuoc)
);

create table if not exists nhacungcap
(
MaNCC varchar(50) primary key,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(50),
Gmail varchar(50)
);

create table if not exists Cungcap
(
MaNV varchar(50),
NgayCungCap date,
MaNCC varchar(50),
MaThuoc varchar(50),
GiaNhap decimal(10, 2), -- 10 là chữ số có thể, 2 là chữ số sau hàng thập phan
SoLuongThuocNhap int,
foreign key (maNCC) references nhacungcap(maNCC)
);



drop table Hoadon;
drop table khachhang;
drop table nhanvien;
drop table thuoc;
drop table cungcap;
drop table nhacungcap;




