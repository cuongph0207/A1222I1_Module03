create database QuanLiBanHang;
use QuanLiBanHang;
create table customer(
cID int primary key auto_increment,
cName varchar(255),
cAge int not null
);

create table orders(
oID int primary key auto_increment,
cID int,
oDate date,
oTotalPrice double,
foreign key(cID) references customer(cID)
);

create table orderdetail(
oID int,
pID int,
odQTY int,
primary key(oID,pID),
foreign key(oID) references orders(oID),
foreign key(pID) references product(pID)
);

create table product(
pID int primary key auto_increment,
pName varchar(255),
pPrice double
);