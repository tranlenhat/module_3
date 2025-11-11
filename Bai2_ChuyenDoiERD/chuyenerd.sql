create database chuyenmqh;
use chuyenmqh;

create table NhaCC(
MaNCC varchar(50) primary key,
TenNCC nvarchar(100),
DiaChi varchar(100)
);

create table SoDT(
sdt varchar(20),
NhaCC_MaNCC varchar(50),
foreign key(Nhacc_MaNCC) references NhaCC(MaNCC)
);

create table DonDH(
SoDH varchar(50) primary key,
NgayDH date,
NhaCC_MaNCC varchar(50),
foreign key(Nhacc_MaNCC) references NhaCC(MaNCC)
);

create table VatTu(
MaVTU varchar(50) primary key,
TenVTU varchar(100)
);

create table ChiTetDH(
DonDH_SoDH varchar(50),
VatTu_MaVTU varchar(50),
primary key(DonDH_SoDH,VatTu_MaVTU),
foreign key(DonDH_SoDH) references DonDH(SoDH),
foreign key(VatTu_MaVTU) references VatTu(MaVTU)
);

create table PhieuXuat(
SoPX varchar(50) primary key,
NgayXuat date
);

create table ChiTietXuat(
DGXuat decimal(10,2),
SlXuat int,
PhieuXuat_SoPX varchar(50),
VatTu_MaVTU varchar(50),
primary key(PhieuXuat_SoPX,VatTu_MaVTU),
foreign key(VatTu_MaVTU)references VatTu(MaVTU),
foreign key(PhieuXuat_SoPX)references PhieuXuat(SoPX)
);

create table PhieuNhap(
SoPN varchar(50) primary key,
NgayNhap date
);

create table ChiTietPhieuNhap(
DGNhap decimal(10,2),
SlNHap int,
VatTu_MaVTU varchar(50),
PhieuNhap_SoPN varchar(50),
primary key(VatTu_MaVTU,PhieuNhap_SoPN),
foreign key(PhieuNhap_SoPN) references PhieuNhap(SoPN),
foreign key(VatTu_MaVTU) references VatTu(MaVTU)
);


