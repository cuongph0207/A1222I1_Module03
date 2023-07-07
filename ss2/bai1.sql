CREATE DATABASE QUANLIVATTU;
USE QUANLIVATTU;
create table PHIEUXUAT(
SoPX int primary key,
NgayXuat date
);
create table VATTU(
MaVTU int primary key,
TenVTU varchar(255)
);
create table PHIEUNHAP(
SoPN int primary key,
NgayNhap date
);
create table DONDH(
SoDH int primary key,
NgayDH date,
MaNCC int,
foreign key (MaNCC) references NHACC(MaNCC)
);
create table NHACC(
MaNCC int primary key,
TenNCC varchar(255),
DiaChi varchar(255)
);
create table PHIEUXUAT_VATTU(
SoPX int,
MaVTU int,
primary key(soPX,MaVTU),
foreign key(SoPX) references PHIEUXUAT(SoPX),
foreign key(MaVTU) references VATTU(MaVTU),
DGXUAT double,
SLXUAT int
);

create table VATTU_PHIEUNHAP(
MaVTU int,
SoPN int,
primary key(MaVTU,SoPN),
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoPN) references PHIEUNHAP(SoPN),
DGNhap double,
SLNhap int
);

create table VATTU_DONDH(
MaVTU int,
SoDH int,
primary key(MaVTU,SoDH),
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoDH) references DONDH(SoDH)
);

create table SDT(
id int auto_increment primary key,
MaNCC int,
SDT varchar(10) not null,
foreign key(MaNCC) references NhaCC(MaNCC)
);

