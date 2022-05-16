use store_management;

insert into customer(customer_id,customer_name,customer_age) 
value (1,"Minh Quan",10);
insert into customer (customer_id,customer_name,customer_age) 
value (2,"Ngoc Anh",20);
insert into customer (customer_id,customer_name,customer_age) 
value (3,"Hong Ha",50);

insert into `order` (order_id,customer_id,order_date,order_Price) 
value (1,1,"2006-03-21",null);
insert into `order` (order_id,customer_id,order_date,order_Price) 
value (2,2,"2006-03-23",null);
insert into `order` (order_id,customer_id,order_date,order_Price) 
value (3,1,"2006-03-16",null);

insert into product(product_id,product_name,product_price)
value (1,"may giat",3);
insert into product(product_id,product_name,product_price)
value (2,"tu lanh",5);
insert into product(product_id,product_name,product_price)
value (3,"dieu hoa",7);
insert into product(product_id,product_name,product_price)
value (4,"quat",1);
insert into product(product_id,product_name,product_price)
value (5,"bep dien",2);

insert into order_product(order_id,product_id,order_qty)
value (1,1,3);
insert into order_product(order_id,product_id,order_qty)
value (1,3,7);
insert into order_product(order_id,product_id,order_qty)
value (1,4,2);
insert into order_product(order_id,product_id,order_qty)
value (2,1,1);
insert into order_product(order_id,product_id,order_qty)
value (3,1,8);
insert into order_product(order_id,product_id,order_qty)
value (2,5,4);
insert into order_product(order_id,product_id,order_qty)
value (2,3,3);

select order_id,order_date,order_price from `order`;

select c.customer_name, p.product_name from customer as c
join product as p on p.product_id = c.customer_id;

select c.customer_name, p.product_name from customer as c
join product as p on p.product_id = c.customer_id
where p.product_name = null;

select o.order_id,o.order_date,(order_qty*product_price) as price from order_product as op
join `order` as o on op.order_id = o.order_id
join product as p on p.product_id = op.product_id

 

