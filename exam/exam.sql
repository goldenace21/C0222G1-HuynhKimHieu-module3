create database exam;
use exam;

-- create table student(
-- id int auto_increment primary key,
-- `name` varchar(50)
-- );

-- insert into student(`name`) value 
-- ("hieu"),
-- ("hung"),
-- ("hai"),
-- ("tien"),
-- ("thu"),
-- ("ha"),
-- ("linh");

-- select * from student;

create table benh_nhan(
	 ma_benh_nhan varchar(50) primary key,
    ten_benh_nhan varchar(50)
);

create table benh_an(
	ma_benh_an varchar(50) primary key,
    ma_benh_nhan varchar(50),
    ten_benh_nhan varchar(50),
    ngay_nhap_vien varchar(50),
    ngay_ra_vien varchar(50),
    ly_do_nhap_vien varchar(50),
    FOREIGN KEY(ma_benh_nhan) REFERENCES benh_nhan(ma_benh_nhan) ON DELETE CASCADE
);

insert into benh_nhan value 
("BN-445","nguyen van a"),
("BN-846","nguyen van c"),
("BN-937","truong van c");

insert into benh_an value 
("BA-004","BN-445","nguyen van a","02-04-2022","03-05-2022","ho"),
("BA-975","BN-846","nguyen van c","02-05-2022","03-07-2022","ho"),
("BA-653","BN-937","truong van c","02-01-2022","03-09-2022","ho");

select* from benh_an;

update benh_an set ten_benh_nhan = "", ngay_nhap_vien = "", ngay_ra_vien = "", ly_do_nhap_vien = "" where ma_benh_an = "BA-004";
update benh_nhan set ten_benh_nhan = "huynh thi linh" where ma_benh_nhan = "BN-445";
