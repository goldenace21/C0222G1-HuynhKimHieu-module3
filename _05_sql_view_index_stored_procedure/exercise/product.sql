create database product_management;
use product_management;
create table products(
id int auto_increment primary key,
product_code varchar(45) unique,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
);

insert into products 
(product_code,product_name,product_price,product_amount,product_description,product_status) 
value
("123","cho",22.22,4,"map","con"),
("234","heo",99.22,4,"map","con"),
("345","meo",44.22,4,"map","con");

-- create index
create unique index i_product_code on products(product_code);
-- drop index products_code on products; drop index

create index i_product on products(product_name,product_price);

explain select * from products where product_code like "123";

delimiter //
create procedure select_all_product()
begin 
select * from products; 
end; //
delimiter ;


-- add new 

delimiter //
create procedure add_new_product (
product_code varchar(45),
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45))
BEGIN
INSERT INTO products (
product_code
, product_name
, product_price
, product_amount
, product_description
, product_status)
    VALUES (product_code,product_name,product_price,product_amount,product_description,product_status);
END //
delimiter ;

call add_new_product("267","hiue",2.2,2,"map","con");

-- edit 

delimiter //
create procedure edit_product(
idd int,
product_code varchar(45),
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45))
begin 
update products set product_code = product_code,
product_name = product_name,
product_price = product_price,
product_amount = product_amount,
product_description = product_description,
product_status = product_status where idd = id;
end; //
delimiter ;

call edit_product(4,"947","huynhKim",2.2,2,"map","con");

-- delete 

delimiter //
create procedure remove_product(
idd int)
begin 
delete from products where id = idd;
end; //
delimiter ;

call remove_product(4);

