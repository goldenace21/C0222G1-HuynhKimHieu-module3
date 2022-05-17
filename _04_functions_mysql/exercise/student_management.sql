create database furama_management;
use furama_management;
create table vi_tri(
ma_vi_tri int primary key,
ten_vi_tri varchar(45)
);

INSERT INTO vi_tri (ma_vi_tri,ten_vi_tri) VALUES (1,"quan ly");
INSERT INTO vi_tri (ma_vi_tri,ten_vi_tri) VALUES (2,"giam doc");
INSERT INTO vi_tri (ma_vi_tri,ten_vi_tri) VALUES (3,"tiep tan");

create table trinh_do(
ma_trinh_do int primary key,
ten_trinh_do varchar(45)
);

INSERT INTO trinh_do (ma_trinh_do,ten_trinh_do) VALUES (1,"dai hoc");
INSERT INTO trinh_do (ma_trinh_do,ten_trinh_do) VALUES (2,"cao dang");
INSERT INTO trinh_do (ma_trinh_do,ten_trinh_do) VALUES (3,"sau dai hoc");

create table bo_phan(
ma_bo_phan int primary key,
ten_bo_phan varchar(45)
);

INSERT INTO bo_phan (ma_bo_phan,ten_bo_phan) VALUES (1,"buong phong");
INSERT INTO bo_phan (ma_bo_phan,ten_bo_phan) VALUES (2,"ho boi");

create table kieu_thue(
ma_kieu_thue int primary key,
ten_kieu_thue varchar(45)
);

INSERT INTO kieu_thue (ma_kieu_thue,ten_kieu_thue) VALUES (1,"ngay");
INSERT INTO kieu_thue (ma_kieu_thue,ten_kieu_thue) VALUES (2,"thang");
INSERT INTO kieu_thue (ma_kieu_thue,ten_kieu_thue) VALUES (3,"nam");

create table loai_dich_vu(
ma_loai_dich_vu int primary key,
ten_loai_dich_vu varchar(45)
);

INSERT INTO loai_dich_vu (ma_loai_dich_vu,ten_loai_dich_vu) VALUES (1,"an uong");
INSERT INTO loai_dich_vu (ma_loai_dich_vu,ten_loai_dich_vu) VALUES (2,"the duc");
INSERT INTO loai_dich_vu (ma_loai_dich_vu,ten_loai_dich_vu) VALUES (3,"boi loi");

create table loai_khach(
ma_loai_khach int primary key,
ten_loai_khach varchar(45)
);

INSERT INTO loai_khach (ma_loai_khach,ten_loai_khach) VALUES (1,"Diamond");
INSERT INTO loai_khach (ma_loai_khach,ten_loai_khach) VALUES (2,"Platinium");
INSERT INTO loai_khach (ma_loai_khach,ten_loai_khach) VALUES (3,"Gold");

create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key,
ten_dich_vu_di_kem varchar(45),
gia double,
don_vi varchar(10),
trang_thai varchar(45)
);

INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
VALUES (1,"chay bo",99.99,"vnd","true");
INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
VALUES (2,"di boi",99.99,"vnd","false");
INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
VALUES (3,"bida",99.99,"vnd","false");

create table dich_vu(
ma_dich_vu int primary key,
ten_dich_vu varchar(45),
dien_tich double,
chi_phi_thue double,
so_nguoi_toi_da int,
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

INSERT INTO dich_vu (ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,ma_kieu_thue,ma_loai_dich_vu,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang)
VALUES (1,"chay bo",99.99,23.4,20,1,1,"vip","ho boi",9.5,3);
INSERT INTO dich_vu (ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,ma_kieu_thue,ma_loai_dich_vu,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang)
VALUES (2,"boi loi",3.99,3.4,50,2,2,"normal","ho boi",4.5,4);
INSERT INTO dich_vu (ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,ma_kieu_thue,ma_loai_dich_vu,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang)
VALUES (3,"bida",3.99,3.4,50,3,3,"normal","ho boi",4.5,4);

create table nhan_vien(
ma_nhan_vien int primary key,
ho_ten varchar(45),
ngay_sinh date,
so_cmnd varchar(45),
luong double,
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key(ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan)
);

insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
value (1,"Hieu","2001-04-22","3452",43.2,"09435","email","hoi an",1,1,1);
insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
value (2,"Tuang","2001-05-12","8452",5.2,"09435","email","hoi an",2,2,2);
insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
value (3,"hai","2001-05-12","8452",5.2,"09435","email","hoi an",2,2,2);

create table khach_hang(
ma_khach_hang int primary key,
ma_loai_khach int,
ho_ten varchar(45),
ngay_sinh date,
gioi_tinh bit(1),
so_cmnd varchar(45),
so_dien_thoai varchar(45),
email varchar(45),
dia_chi varchar(45),
foreign key (ma_loai_khach) references loai_khach(ma_loai_khach)
);

insert into khach_hang(ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi)
value (1,1,"hieu","2001-12-03",1,"234","0932","email","da nang");
insert into khach_hang(ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi)
value (2,2,"quang","2001-02-12",0,"384","0932","email","hoi an");
insert into khach_hang(ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi)
value (3,3,"hong","2001-02-12",0,"384","0932","email","hoi an");
insert into khach_hang(ma_khach_hang,ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi)
value (4,3,"hong","2001-02-12",0,"384","0932","email","hoi an");

create table hop_dong(
ma_hop_dong int primary key,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key (ma_dich_vu) references dich_vu(ma_dich_vu)
);

insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
value (1,"2020-03-24","2020-06-12",47.45,1,1,1);
insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
value (2,"2020-02-23","2020-08-17",83.45,2,2,2);
insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
value (3,"2021-02-23","2021-08-17",83.45,3,3,3);
insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
value (4,"2021-02-23","2021-08-17",83.45,1,1,1);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key,
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int,
foreign key(ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,ma_hop_dong,ma_dich_vu_di_kem,so_luong)value (1,1,1,12);
insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,ma_hop_dong,ma_dich_vu_di_kem,so_luong)value (2,2,2,45);
insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,ma_hop_dong,ma_dich_vu_di_kem,so_luong)value (3,3,3,45);

-- -------------------------------
-- -------------------------------
-- -------------------------------
-- -------------------------------


