-- bài tập lớn csdl
use report;

-- create table

create table if not exists Nhanvien
(
Manv varchar(50) primary key ,
tennv varchar(50),
Gmail varchar(50),
Sdt varchar(50),
Gt varchar(50),
Luong varchar(50)
);

create table if not exists Khachhang
(
Makh varchar(50) primary key,
tenkh varchar(50),
Sdt varchar(50),
Gt varchar(50)
);

create table if not exists Danhmuc (
  id_danh_muc varchar(50) primary key,
  tendanhmuc varchar(50)
);

create table if not exists Thuoc
(
Mathuoc varchar(50) primary key,
tenthuoc varchar(50),
id_danhmuc varchar(50),
Dvt varchar(50),
congdung varchar(50),
soluongthuoccon int,
gia int,
ngaysx date,
ngayhh date,
foreign key (id_danhmuc) references Danhmuc(id_danh_muc)
);

create table if not exists Hoadon
(
Mahoadon varchar(50) primary key,
Manv varchar(50),
Makh varchar(50),
ngayban date,
Dvt varchar(50),
soluong int,
tonggia int,
foreign key (Manv) references Nhanvien(Manv),
foreign key (Makh) references Khachhang(Makh)
);

create table if not exists thuoc_co_trong_hoa_don
(
Id int primary key,
Mahoadon varchar(50),
Mathuoc varchar(50),
foreign key (Mahoadon) references Hoadon(Mahoadon),
foreign key (Mathuoc) references Thuoc(Mathuoc)
);

create table if not exists nhacungcap
(
maNCC varchar(50) primary key,
tenNCC varchar(50),
diachi varchar(50),
sdt varchar(50),
gmail varchar(50)
);

create table if not exists Cungcap
(
manvql varchar(50),
ngaycc date,
maNCC varchar(50),
foreign key (maNCC) references nhacungcap(maNCC)
);



drop table Hoadon;
drop table khachhang;
drop table nhanvien;
drop table thuoc;
drop table cungcap;
drop table nhacungcap;




