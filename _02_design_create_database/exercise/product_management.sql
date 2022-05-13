create database product_management;

use product_management;

create table phieu_xuat(
so_px int primary key,
ngay_xuat date
);

create table vat_tu(
ma_vt varchar(20) primary key,
ten_vt varchar(20)
);

create table phieu_nhap(
so_pn int primary key,
ngay_nhap date
);

create table nha_cc(
ma_ncc varchar(20) primary key,
ten_ncc varchar(20),
dia_chi varchar(20)
);

create table don_dh(
so_dh int primary key,
ngay_dh date,
ma_ncc varchar(20),
foreign key(ma_ncc) references nha_cc(ma_ncc)
);



create table sdt_ncc(
ma_ncc varchar(20) primary key,
sdt varchar(20),
foreign key(ma_ncc) references nha_cc(ma_ncc)
);

create table chi_tiet_px(
so_px int,
ma_vt varchar(20),
dg_xuat int,
xl_xuat int,
primary key (so_px,ma_vt),
FOREIGN KEY (so_px) REFERENCES phieu_xuat (so_px),
FOREIGN KEY (ma_vt) REFERENCES vat_tu (ma_vt)
);

create table chi_tiet_pn(
so_pn int,
ma_vt varchar(20),
dg_nhap int,
sl_nhap int,
primary key(so_pn,ma_vt),
foreign key(so_pn) references phieu_nhap(so_pn),
foreign key(ma_vt) references vat_tu(ma_vt)
);

create table chi_tiet_ddh(
so_dh int,
ma_vt varchar(20),
primary key(so_dh,ma_vt),
foreign key(so_dh) references don_dh(so_dh),
foreign key(ma_vt) references vat_tu(ma_vt)
);
