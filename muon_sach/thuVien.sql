create database thuVien;
use thuVien;

create table sach(
maSach int primary key auto_increment,
tenSach varchar(50),
tacGia varchar(50),
moTa varchar(50),
soLuong int
);

insert into sach(tenSach,tacGia,moTa,soLuong) value 
("sach1","to hoai","sach moi",22),
("sach2","to hoai","sach cu",12);

create table hocSinh(
maHocSinh int primary key auto_increment,
tenHocSinh varchar(50),
lop varchar(50)
);

insert into hocSinh(tenHocSinh,lop) value ("kim hieu","lop c02"),("khanh huyen","lop c02");


create table theMuonSach(
	maMuonSach varchar(50) primary key,
    maSach int,
    maHocSinh int,
    trangThai boolean,
    ngayMuon varchar(50),
    ngaytra varchar(50),
    foreign key (maSach) references sach(maSach),
    foreign key (maHocSinh) references hocSinh(maHocSinh)
);

insert into theMuonSach value 
("MS-1111",1,1,true,"12-02-2022","12-03-2022"),
("MS-2222",2,2,true,"12-03-2022","12-04-2022");

select * from sach;
UPDATE sach
SET soLuong = soLuong -1
WHERE maSach = 1;

UPDATE theMuonSach
SET trangThai = false
WHERE maMuonSach = "MS-2222";

select * from theMuonSach tms 
left join sach s on s.maSach = tms.maSach
left join hocSinh hs on tms.maHocSinh = hs.maHocSinh;