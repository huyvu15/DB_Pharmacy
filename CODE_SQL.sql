create schema report;

CREATE TABLE nhanvien (
    MaNV VARCHAR(50) PRIMARY KEY,
    TenNV VARCHAR(50) NOT NULL,
    Gmail VARCHAR(50) UNIQUE,
    SDT VARCHAR(15) UNIQUE,
    GT VARCHAR(5),
    Luong DECIMAL(10,2)
);

CREATE TABLE khachhang (
    MaKH VARCHAR(50) PRIMARY KEY,
    TenKH VARCHAR(50) NOT NULL,
    SDT VARCHAR(15) UNIQUE,
    GT VARCHAR(5)
);

CREATE TABLE danhmuc (
  MaDanhMuc VARCHAR(50) PRIMARY KEY,
  TenDanhMuc TEXT NOT NULL
);

CREATE TABLE thuoc (
    MaThuoc VARCHAR(50) PRIMARY KEY,
    TenThuoc VARCHAR(50) NOT NULL,
    GiaBan DECIMAL(10,2) NOT NULL,
    NgaySanXuat DATE NOT NULL,
    NgayHetHan DATE NOT NULL,
    SoLuongThuocCon INT NOT NULL,   
    CongDung TEXT,     
    DVT VARCHAR(10) NOT NULL,
    MaDanhMuc VARCHAR(50) NOT NULL,
    FOREIGN KEY (MaDanhMuc) REFERENCES danhmuc(MaDanhMuc)
);

CREATE TABLE hoadon (
    MaHD VARCHAR(50) PRIMARY KEY,
    MaNV VARCHAR(50) NOT NULL,
    MaKH VARCHAR(50) NOT NULL,
    NgayBan DATE NOT NULL,    
    TongGia DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV),
    FOREIGN KEY (MaKH) REFERENCES khachhang(MaKH)
);

CREATE TABLE thuoc_trong_hoa_don(
    MaHD VARCHAR(50) NOT NULL,
    MaThuoc VARCHAR(50) NOT NULL,
    SoLuongBan INT NOT NULL,
    FOREIGN KEY (MaHD) REFERENCES hoadon(MaHD),
    FOREIGN KEY (MaThuoc) REFERENCES thuoc(MaThuoc)
);

CREATE TABLE nhacungcap (
    MaNCC VARCHAR(50) PRIMARY KEY,
    TenNCC VARCHAR(50) NOT NULL,
    DiaChi TEXT NOT NULL,
    SDT VARCHAR(15) UNIQUE,
    Gmail VARCHAR(50) UNIQUE
);

CREATE TABLE cungcap (
    MaNV VARCHAR(50) NOT NULL,    
    MaNCC VARCHAR(50) NOT NULL,
    MaThuoc VARCHAR(50) NOT NULL,
    GiaNhap DECIMAL(10, 2) NOT NULL, -- 10 là chữ số có thể, 2 là chữ số sau hàng thập phan
    NgayCungCap DATE NOT NULL,
    SoLuongThuocNhap INT NOT NULL,
    FOREIGN KEY (MaNCC) REFERENCES nhacungcap(MaNCC),
    FOREIGN KEY (MaThuoc) REFERENCES thuoc(MaThuoc),
    FOREIGN KEY (MaNV) REFERENCES nhanvien(MaNV)
    
);
