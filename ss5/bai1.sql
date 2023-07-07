create database demo;
use demo;
create table Products(
Id int primary key auto_increment,
productCode varchar(255),
productName varchar(255),
productPrice int,
productAmount int,
productDescription varchar(255),
productStatus varchar(255)
);

insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus) values ('lap001','acer','20000000','5','top2','new');
insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus) values ('lap002','msi','25000000','7','top3','2nd');
insert into Products(productCode,productName,productPrice,productAmount,productDescription,productStatus) values ('lap003','asus','30000000','2','top1','new');

-- Unique Index
create unique index index_products on Products(productCode);
explain select * from Products where productCode='lap003';

-- Composite Index
create index index_products on products(productName,productPrice);
explain select * from Products where productName='acer' or productPrice=30000000;

-- Drop index
drop index index_products on products;

-- Create view
create view view_products as select  productCode, productName, productPrice, productStatus
from products;

-- Create or update view
create or replace view view_products as 
select productCode,productName,productPrice,productStatus,productDescription
from Products;

-- Drop view
drop view view_products;

-- Store Procedure
DELIMITER //
create procedure show_info()
begin 
select* from products;
end //
DELIMITER ;
-- Call Store Procedure
call show_info();

-- Store Procedure
DELIMITER //
create procedure add_new(in id int ,in productCode varchar(255), in productName varchar(255), in productPrice int, in productAmount int, in productDescription varchar(255),in productStatus varchar(255))
begin
insert into products values(id,productCode,productName,productPrice,productAmount,productDescription,productStatus);
end //
DELIMITER ;

-- Call Store Procedure
call add_new('4','lap004','mac','50000000','1','top0','new');

select * from 4 products;

-- Sua Thong Tin San Pham Theo Id
DELIMITER // 
create procedure fix_index
(in idx int,in productCode varchar(255) ,in ProductName varchar(255),in ProductPrice int ,in ProductAmount int,in ProductDescription varchar(255),in ProductStatus varchar(255))
Begin 
update Products set
ProductCode=ProductCode,
ProductName =ProductName,
ProductPrice =ProductPrice,
ProductAmount =ProductAmount,
ProductDescription=ProductDescription,
ProductStatus =ProductStatus
where id=idx;
End //
DELIMITER ;
call fix_index('4','lap004','Dell','12000000','10','top4','2nd');
select * from Products;

-- Xoa thong tin san pham theo id
DELIMITER // 
create procedure delete_Products(in idx int)
Begin
delete from Products 
where id=idx;
End //
DELIMITER ; 
call delete_Products('4');
select * from Products;
