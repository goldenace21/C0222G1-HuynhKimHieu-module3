-- task 2

select * 
from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%') and length(ho_ten) <= 15;

-- task 3

select *
from khach_hang
where 
(dia_chi like 'da nang' or dia_chi like 'quang tri') 
and (timestampdiff(year, ngay_sinh, curdate()) >=18 and timestampdiff(year, ngay_sinh, curdate()) <=50);

-- task 4

select count(hd.ma_khach_hang) so_lan, kh.ho_ten from hop_dong hd
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where lk.ten_loai_khach like "Diamond"
order by count(hd.ma_khach_hang);

-- task 5