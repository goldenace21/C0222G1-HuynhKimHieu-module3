CREATE DATABASE furama;
USE furama;

CREATE TABLE `position` (
    position_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    position_name VARCHAR(45)
);

insert into position
(position_name)
values ('Quản lý'),
       ('Nhân viên');

CREATE TABLE education_degree (
    education_degree_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    education_degree_name VARCHAR(45)
);

insert into education_degree
(education_degree_name)
values ('Trung Cấp'),
       ('Cao Đẳng'),
       ('Đại Học'),
       ('Sau Đại Học');

CREATE TABLE division (
    division_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    division_name VARCHAR(45)
);

insert into division
(division_name)
values ('Sale-Marketing'),
       ('Hành chính'),
       ('Phục vụ'),
       ('Quản lý') ;

CREATE TABLE username (
    username VARCHAR(45) NOT NULL PRIMARY KEY,
    password VARCHAR(45)
);

insert into username value 
('name1','123'),
('name2','123'),
('name3','123'),
('name4','123'),
('name5','123'),
('name6','123'),
('name7','123'),
('name8','123'),
('name9','123'),
('name10','123');

CREATE TABLE `role` (
    role_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(45)
);

CREATE TABLE user_role (
    role_id INT AUTO_INCREMENT,
    username VARCHAR(255),
    FOREIGN KEY (role_id)REFERENCES `role` (role_id)ON DELETE CASCADE,
    FOREIGN KEY (username) REFERENCES username (username) ON DELETE CASCADE
);

CREATE TABLE employee (
    employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(45),
    employee_birthday varchar(45),
    employee_id_card VARCHAR(45),
    employee_salary DOUBLE,
    employee_phone VARCHAR(45),
    employee_email VARCHAR(45),
    employee_address VARCHAR(45),
    position_id INT,
    education_degree_id INT,
    division_id INT,
    username VARCHAR(255),
    FOREIGN KEY (position_id)REFERENCES `position` (position_id),
    FOREIGN KEY (education_degree_id)REFERENCES education_degree (education_degree_id),
    FOREIGN KEY (division_id)REFERENCES division (division_id),
    FOREIGN KEY (username)REFERENCES username (username)ON DELETE CASCADE
);

select * from employee where employee_name like '%%' and employee_address like '%%';

insert into employee
(employee_name, employee_birthday, employee_id_card, employee_salary, employee_phone, employee_email, employee_address, position_id, education_degree_id, division_id,username)
values ('Nguyễn Văn An', '1970-11-07', '456231786', 10000000, '0901234121', 'annguyen@gmail.com',
        '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1 ,'name1'),
       ('Lê Văn Bình', '1997-04-09', '654231234', 7000000, '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1,
        2, 2 ,'name2'),
       ('Hồ Thị Yến', '1995-12-12', '999231723', 14000000, '0412352315', 'thiyen@gmail.com',
        'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2,'name3'),
       ('Võ Công Toản', '1980-04-04', '123231365', 17000000, '0374443232', 'toan0404@gmail.com',
        '77 Hoàng Diệu, Quảng Trị', 1, 4, 4,'name4'),
       ('Nguyễn Bỉnh Phát', '1999-12-09', '454363232', 6000000, '0902341231', 'phatphat@gmail.com',
        '43 Yên Bái, Đà Nẵng', 2, 1, 1,'name5'),
       ('Khúc Nguyễn An Nghi', '2000-11-08', '964542311', 7000000, '0978653213', 'annghi20@gmail.com',
        '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3,'name6'),
       ('Nguyễn Hữu Hà', '1993-01-01', '534323231', 8000000, '0941234553', 'nhh0101@gmail.com',
        '4 Nguyễn Chí Thanh, Huế', 2, 3, 2,'name7'),
       ('Nguyễn Hà Đông', '1989-09-03', '234414123', 9000000, '0642123111', 'donghanguyen@gmail.com',
        '111 Hùng Vương, Hà Nội', 2, 4, 4 ,'name8'),
       ('Tòng Hoang', '1982-09-03', '256781231', 6000000, '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng',
        2, 4, 4,'name9'),
       ('Nguyễn Công Đạo', '1994-01-08', '755434343', 8000000, '0988767111', 'nguyencongdao12@gmail.com',
        '6 Hoà Khánh, Đồng Nai', 2, 3, 2,'name10');


CREATE TABLE customer_type (
    customer_type_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    customer_type_name VARCHAR(450)
);

CREATE TABLE customer (
    customer_id VARCHAR(100) NOT NULL PRIMARY KEY,
    customer_type_id INT,
    customer_name VARCHAR(100),
    customer_birthday VARCHAR(100),
    customer_gender VARCHAR(100),
    customer_id_card VARCHAR(100),
    customer_phone VARCHAR(100),
    customer_email VARCHAR(100),
    customer_address VARCHAR(100)
);

insert into customer
(customer_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address, customer_type_id)
values ('KH-1111','Nguyễn Thị Hào', '1970-11-07', "1", '643431213', '0945423362', 'thihao07@gmail.com',
        '23 Nguyễn Hoàng,Đà Nẵng', 5),
       ( 'KH-2222','Phạm Xuân Diệu', '1992-08-08', "1", '865342123', '0954333333', 'xuandieu92@gmail.com',
        'K77/22 Thái Phiên, Quảng Trị', 3),
       ('KH-3333','Trương Đình Nghệ', '1990-02-27', "0", '488645199', '0373213122', 'nghenhan2702@gmail.com',
        'K323/12 Ông Ích Khiêm, Vinh', 1),
       ('KH-4444','Dương Văn Quan', '1981-07-08', "1", '543432111', '0490039241', 'duongquan@gmail.com',
        'K453/12 Lê Lợi, Đà Nẵng', 1),
       ('KH-5555','Hoàng Trần Nhi Nhi', '1995-12-09', "1", '795453345', '0312345678', 'nhinhi123@gmail.com',
        '224 Lý Thái Tổ, Gia Lai', 4),
       ('KH-6666','Tôn Nữ Mộc Châu', '2005-12-06',"0", '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng',
        4),
       ('KH-7777','Nguyễn Mỹ Kim', '1984-04-08', "0", '856453123', '0912345698', 'kimcuong84@gmail.com',
        'K123/45 Lê Lợi, Hồ Chí Minh', 1),
       ('KH-8888','Nguyễn Thị Hào', '1999-04-08', "0", '965656433', '0763212345', 'haohao99@gmail.com',
        '55 Nguyễn Văn Linh, Kon Tum', 3),
       ('KH-9999','Trần Đại Danh', '1994-07-01', "1" , '432341235', '0643343433', 'danhhai99@gmail.com',
        '24 Lý Thường Kiệt, Quảng Ngãi', 1),
       ('KH-1010','Nguyễn Tâm Đắc', '1989-07-01', "1" , '344343432', '0987654321', 'tdactam@gmail.com', '22 Ngô Quyền, Đà Nẵng',
        2);

CREATE TABLE service_type(
service_type_id INT NOT NULL PRIMARY KEY auto_increment,
service_type_name VARCHAR(45)
);

insert into service_type
(service_type_name)
values ('Villa'),
       ('House'),
       ('Room');


CREATE TABLE rent_type(
rent_type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY auto_increment,
rent_type_name VARCHAR(45),
rent_type_cost DOUBLE
);

insert into rent_type
(rent_type_name)
values ('year'),
       ('month'),
       ('day'),
       ('hour');

CREATE TABLE service(
service_id varchar(45) NOT NULL PRIMARY KEY,
service_name VARCHAR(45),
service_area INT,
service_cost DOUBLE,
service_max_people INT,
rent_type_id INT,
service_type_id INT,
standard_room VARCHAR(45),
description_other_convenience VARCHAR(45),
pool_area DOUBLE,
number_of_floors INT,
FOREIGN KEY(rent_type_id) REFERENCES rent_type(rent_type_id) ON DELETE CASCADE,
FOREIGN KEY(service_type_id) REFERENCES service_type(service_type_id) ON DELETE CASCADE
);

       insert into service
( service_id,service_name, service_area, service_cost, service_max_people, standard_room, description_other_convenience, pool_area, number_of_floors,
 rent_type_id, service_type_id)
values ('DV-1111','Villa Beach Front', 25000, 10000000, 10, 'vip', 'Có hồ bơi', 500, 4, 3, 1),
       ('DV-2222','House Princess 01', 14000, 5000000, 7, 'vip', 'Có thêm bếp nướng', null, 3, 2, 2),
       ('DV-3333','Room Twin 01', 5000, 1000000, 2, 'normal', 'Có tivi', null, null, 4, 3),
       ('DV-4444','Villa No Beach Front', 22000, 9000000, 8, 'normal', 'Có hồ bơi', 300, 3, 3, 1),
       ('DV-5555','House Princess 02', 10000, 4000000, 5, 'normal', 'Có thêm bếp nướng', null, 2, 3, 2),
       ('DV-6666','Room Twin 02', 3000, 900000, 2, 'normal', 'Có tivi', null, null, 4, 3);

CREATE TABLE attach_service(
attach_service_id INT NOT NULL PRIMARY KEY auto_increment,
attach_service_name VARCHAR(45),
attach_service_cost DOUBLE,
attach_service_unit INT,
attach_service_status VARCHAR(45)
);


insert into attach_service
(attach_service_name, attach_service_cost, attach_service_unit, attach_service_status)
values ('Karaoke', 10000, 12, 'tiện nghi, hiện tại'),
       ('Thuê xe máy', 10000, 13, 'hỏng 1 xe'),
       ('Thuê xe đạp', 20000, 23, 'tốt'),
       ('Buffet buổi sáng', 15000, 32, 'đầy đủ đồ ăn, tráng miệng'),
       ('Buffet buổi trưa', 90000, 21, 'đầy đủ đồ ăn, tráng miệng'),
       ('Buffet buổi tối', 16000, 34, 'đầy đủ đồ ăn, tráng miệng');

CREATE TABLE contract(
contract_id INT NOT NULL PRIMARY KEY auto_increment,
contract_start_date DATETIME,
contract_end_date DATETIME,
contract_deposit DOUBLE,
contract_total_money DOUBLE,
employee_id INT,
customer_id INT,
service_id INT,
FOREIGN KEY(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE,
FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
FOREIGN KEY(service_id) REFERENCES service(service_id) ON DELETE CASCADE
);

CREATE TABLE contract_detail (
contract_detail_id INT NOT NULL PRIMARY KEY auto_increment,
contract_id INT,
attach_service_id INT,
quantity INT,
FOREIGN KEY(attach_service_id) REFERENCES attach_service(attach_service_id) ON DELETE CASCADE,
FOREIGN KEY(contract_id) REFERENCES contract(contract_id) ON DELETE CASCADE
);

use furama;



insert into customer_type
(customer_type_name)
values ('Diamond'),
       ('Platinum'),
       ('Gold'),
       ('Silver'),
       ('Member');



insert into contract
(contract_start_date, contract_end_date, contract_deposit,contract_total_money,employee_id, customer_id, service_id)
values ('2020-12-08', '2020-12-08', 0,6000, 3, 1, 1),
       ('2020-07-14', '2020-07-21', 200000,500000, 7, 2, 2),
       ('2021-03-15', '2021-03-17', 50000,100000 , 3,3, 1),
       ('2021-01-14', '2021-01-18', 100000,200000 , 7,4, 2),
       ('2021-07-14', '2021-07-15', 0,200000 , 7, 5, 3),
       ('2021-06-03', '2021-06-03', 0,300000 , 7, 6, 1),
       ('2021-09-05', '2021-09-05', 100000,700000 , 7, 7, 1),
       ('2021-06-18', '2021-06-18', 150000 ,250000 , 3,8,2),
       ('2020-11-19', '2020-11-19', 0,240000 , 3, 9, 3),
       ('2021-04-14', '2021-04-14', 0,45000 , 10, 1, 2);
insert into contract_detail
(quantity, contract_id, attach_service_id)
values (5, 2, 4),
       (8, 2, 5),
       (15, 2, 6),
       (1, 3, 1),
       (11, 3, 2),
       (1, 1, 3),
       (2, 1, 2),
       (2, 12, 2);

select * from customer order by customer_name;
select * from customer left join customer_type on customer.customer_type_id = customer_type.customer_type_id where customer_name like '%%' and customer_address like '%%' ;