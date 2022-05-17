-- -------- task 2 ----------

select * 
from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%') 
and length(ho_ten) <= 15;

-- -------- task 3 ----------

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
order by count(hd.ma_khach_hang);

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
where month(hd.ngay_lam_hop_dong) >= 1 
and month(hd.ngay_lam_hop_dong) <= 3;

-- -------- task 7 ----------

select hd.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.ten_loai_dich_vu
from hop_dong hd
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu where dv.ma_dich_vu
in (select hd.ma_dich_vu from hop_dong hd where year(hd.ngay_lam_hop_dong) = 2020) 
and dv.ma_dich_vu
not in (select hd.ma_dich_vu from hop_dong hd where year(hd.ngay_lam_hop_dong) = 2021);

-- -------- task 8 ----------

select distinct ho_ten from khach_hang;

select ho_ten from khach_hang group by ho_ten;

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
where hd.ma_khach_hang in (select hd.ma_khach_hang from hop_dong hd where month(hd.ngay_lam_hop_dong) > 9 and year(hd.ngay_lam_hop_dong) = 2020) and
hd.ma_khach_hang not in (select hd.ma_khach_hang from hop_dong hd where month(hd.ngay_lam_hop_dong) < 7 and year(hd.ngay_lam_hop_dong) = 2021);

-- -------- task 13 ----------



