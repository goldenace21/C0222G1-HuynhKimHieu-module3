-- -------- task 2 ----------

select * 
from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%') 
and length(ho_ten) <= 15;

-- -------- task 3 ----------
use furama_management;
select *
from khach_hang
where 
(dia_chi like 'da nang' or dia_chi like 'quang tri') 
and (timestampdiff(year, ngay_sinh, curdate()) >=18 
and timestampdiff(year, ngay_sinh, curdate()) <=50);

-- -------- task 4 ----------

select count(hd.ma_khach_hang) so_lan, kh.ho_ten from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where lk.ten_loai_khach like "Diamond"
order by hd.ma_khach_hang;

-- -------- task 5 ----------
use furama_management;
select 
kh.ma_khach_hang,
kh.ho_ten, 
lk.ten_loai_khach,
hd.ma_hop_dong,
hd.ngay_lam_hop_dong,
hd.ngay_ket_thuc,
(dv.chi_phi_thue+hdct.so_luong*dvdk.gia) tong_tien
from hop_dong_chi_tiet hdct
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
right join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
group by kh.ma_khach_hang;

-- -------- task 6 ----------

use furama_management;

select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from dich_vu dv
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where month(hd.ngay_lam_hop_dong) <=3 and year(hd.ngay_lam_hop_dong) = 2021;

-- -------- task 7 ----------

select hd.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from hop_dong hd
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu 
where dv.ma_dich_vu
in (select hd.ma_dich_vu from hop_dong hd where year(hd.ngay_lam_hop_dong) = 2020) 
and dv.ma_dich_vu
not in (select hd.ma_dich_vu from hop_dong hd where year(hd.ngay_lam_hop_dong) = 2021)
group by dv.ma_dich_vu;

-- -------- task 8 ----------

select distinct ho_ten from khach_hang;

select ho_ten from khach_hang group by ho_ten;

select ho_ten from khach_hang union select ho_ten from khach_hang;

-- -------- task 9 ----------

select month(hd.ngay_lam_hop_dong) thang, count(month(hd.ngay_lam_hop_dong)) so_lan 
from hop_dong hd
where year(hd.ngay_lam_hop_dong) = 2021 
group by month(hd.ngay_lam_hop_dong);

-- -------- task 10 ----------
--  ma_hop_dong,
--  ngay_lam_hop_dong,
--  ngay_ket_thuc,
--  tien_dat_coc,
--  so_luong_dich_vu_di_kem

select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, hdct.so_luong
from hop_dong hd
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong;

-- -------- task 11 ----------

select lk.ten_loai_khach, kh.dia_chi
from loai_khach lk
join khach_hang kh on kh.ma_loai_khach = lk.ma_loai_khach
where lk.ten_loai_khach like "Diamond" and kh.dia_chi like "Vinh" or kh.dia_chi like "Quang Ngai";

-- -------- task 12 ----------

-- 	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng),
--  so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem
--  (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
--  tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối
--  năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.

select hd.ma_hop_dong, nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, dv.ten_dich_vu, sum(hdct.so_luong) so_luong_dich_vu_di_kem,hd.tien_dat_coc
from hop_dong hd
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
where hd.ma_khach_hang in (select hd.ma_khach_hang from hop_dong hd 
where month(hd.ngay_lam_hop_dong) > 9 and year(hd.ngay_lam_hop_dong) = 2020) and
hd.ma_khach_hang not in (select hd.ma_khach_hang from hop_dong hd 
where month(hd.ngay_lam_hop_dong) < 7 and year(hd.ngay_lam_hop_dong) = 2021);

-- -------- task 13 ----------

select dvdk.*, sum(hdct.so_luong) as so_luong_su_dung from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
having so_luong_su_dung = (select sum(so_luong) from hop_dong_chi_tiet 
group by ma_dich_vu_di_kem order by sum(so_luong) desc limit 1);

-- -------- task 14 ----------

select hd.ma_hop_dong, ldv.ten_loai_dich_vu,dvdk.ten_dich_vu_di_kem,count(dvdk.ma_dich_vu_di_kem) from hop_dong hd
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu 
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by dvdk.ma_dich_vu_di_kem
having count(dvdk.ma_dich_vu_di_kem) = 1;

-- -------- task 15 ----------

select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do,bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi 
from nhan_vien nv
join vi_tri vt on vt.ma_vi_tri = nv.ma_vi_tri
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where year(hd.ngay_lam_hop_dong) between 2020 and 2021
group by hd.ma_nhan_vien
having count(hd.ma_nhan_vien) <= 3;
 
-- -------- task 16 ----------

delete from nhan_vien nv
where nv.ma_nhan_vien 
not in (select hd.ma_nhan_vien from hop_dong hd 
where year(hd.ngay_lam_hop_dong)
between 2019 and 2021);

-- -------- task 17 ----------

update khach_hang kh set kh.ma_loai_khach = 1 
where kh.ma_khach_hang in 
(select hd.ma_khach_hang from hop_dong hd
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where (dv.chi_phi_thue + hdct.so_luong * dvdk.gia) > 10000000
and year(hd.ngay_lam_hop_dong) = 2021
) and kh.ma_loai_khach = 2;

-- -------- task 18 ----------

delete from khach_hang kh
where kh.ma_khach_hang
in (select hd.ma_khach_hang from hop_dong hd
where year(hd.ngay_lam_hop_dong)<2021);

-- -------- task 19 ----------

update dich_vu_di_kem dvdk set dvdk.gia = dvdk.gia*2
where dvdk.ma_dich_vu_di_kem 
in (select hdct.ma_dich_vu_di_kem 
from hop_dong_chi_tiet hdct
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
where hdct.so_luong > 10 
and year(hd.ngay_lam_hop_dong) = 2020);

-- -------- task 20 ----------

select nv.ma_nhan_vien as ma_nv_kh,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi
from nhan_vien nv
union
select kh.ma_khach_hang,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi
from khach_hang kh;

-- -------- task 21 ----------

create view v_nhan_vien 
as select * from nhan_vien nv
where  ma_nhan_vien in 
(select hd.ma_nhan_vien 
from hop_dong hd 
where year(hd.ngay_lam_hop_dong) = 2021) and nv.dia_chi like "%da nang";

-- -------- task 22 ----------

update v_nhan_vien 
set dia_chi = "lien chieu";

-- -------- task 23 ----------

delimiter //
create procedure sp_xoa_khach_hang(ma_khach_hang int)
begin 
delete from khach_hang kh where kh.ma_khach_hang = ma_khach_hang;
end; //
delimiter ;

call sp_xoa_khach_hang(1);

-- -------- task 24 ----------

delimiter //
create procedure sp_them_moi_hop_dong(
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int)
begin 
insert into hop_dong(
ngay_lam_hop_dong,
ngay_ket_thuc,
tien_dat_coc,
ma_nhan_vien,
ma_khach_hang,
ma_dich_vu)
value(ngay_lam_hop_dong,
ngay_ket_thuc,
tien_dat_coc,
ma_nhan_vien,
ma_khach_hang,
ma_dich_vu);
end; //
delimiter ;

call sp_them_moi_hop_dong('2029-12-08','2020-12-08',0,3,1,3);

-- -------- task 25 ----------

delimiter $$
create trigger tr_xoa_hop_dong 
after delete on hop_dong
for each row
begin
	
end; //
delimiter ;

