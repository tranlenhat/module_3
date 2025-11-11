use casestudy_database;
create table dichvu(
ma_dich_vu int primary key,
ten_dich_vu varchar(100),
dien_tich int,
chi_phi_thue double,
so_ngươi_toi_da int,
tieu_chuan_phong varchar(100),
mo_ta_tien_nghi varchar(100),
dien_tich_ho_boi int,
so_tang int,
dich_vu_mien_phi_di_kem varchar(100),
ma_kieu_thue int,
ma_loai_dich_vu int,
foreign key(ma_loai_dich_vu) references loaidichvu(ma_loai_dich_vu),
foreign key(ma_kieu_thue) references kieuthue(ma_kieu_thue)
);

create table hopdong(
ma_hop_dong int primary key,
ngay_lam_hop_dong date,
ngay_ket_thuc date,
tien_dat_coc double,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key(ma_nhan_vien) references nhanvien(ma_nhan_vien),
foreign key(ma_khach_hang) references khachhang(ma_khach_hang),
foreign key(ma_dich_vu) references dichvu(ma_dich_vu)
);

create table hopdongchitiet(
ma_hop_dong_chi_tiet int primary key,
so_luong int,
ma_hop_dong int,
ma_dich_vu_di_kem int,
foreign key(ma_hop_dong) references hopdong(ma_hop_dong),
foreign key(ma_dich_vu_di_kem) references dichvudikem(ma_dich_vu_di_kem)
);

insert into vitri values
(1,'Quản Lý'),
(2,'Nhân Viên');

insert into trinhdo values
(1,'Trung Cấp'),
(2,'Cao Đẳng'),
(3,'Đại Học'),
(4,'Sau Đại Học');

insert into bophan values
(1,'Sale-Marketing'),
(2,'Hành Chính'),
(3,'Phục Vụ'),
(4,'Quản Lý');

insert into nhanvien values
(1, 'Nguyễn Văn An', '1970-11-07', '456231786', 10000000, '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1),
(2, 'Lê Văn Bình', '1997-04-09', '654231324', 7000000, '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
(3, 'Hồ Thị Yến', '1995-12-12', '999231732', 14000000, '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 4),
(4, 'Võ Công Toàn', '1980-04-04', '123231365', 17000000, '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4),
(5, 'Nguyễn Bình Phát', '1999-12-09', '454363232', 6000000, '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1),
(6, 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', 7000000, '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 2),
(7, 'Nguyễn Hữu Hà', '1993-01-01', '534323123', 8000000, '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 3),
(8, 'Nguyễn Hà Đông', '1989-09-03', '234414233', 9000000, '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
(9, 'Tòng Hoang', '1982-09-03', '256781231', 8200000, '0425144444', 'hoangtongo@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 3, 2),
(10, 'Nguyễn Công Đạo', '1994-01-08', '755434343', 8000000, '0988767111', 'nguyencongdao12@gmail.com', '6 Hòa Khánh, Đồng Nai', 2, 3, 2);

insert into loaikhach values
(1, 'Diamond'),
(2, 'Platinium'),
(3, 'Gold'),
(4, 'Silver'),
(5, 'Member');

insert into khachhang values
(1, 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng', 5),
(2, 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị', 3),
(3, 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0372313122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh', 2),
(4, 'Dương Văn Quan', '1981-07-08', 1, '543421111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng', 1),
(5, 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai', 4),
(6, 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888444', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng', 4),
(7, 'Nguyễn Mỹ Kim', '1984-04-03', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh', 1),
(8, 'Nguyễn Thị Hào', '1999-04-08', 0, '965656443', '0763212345', 'haohoa99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum', 3),
(9, 'Trần Đại Danh', '1994-07-01', 1, '423241235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi', 1),
(10, 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng', 2);

insert into kieuthue values
(1,'year'),
(2,'Mont'),
(3, 'Day'),
(4, 'Hour');

insert into dichvudikem values
(1,'Karaoke',10000,'Giờ','Tiện nghi, hiên đại'),
(2,'Thuê Xe Máy',10000,'Chiếc','Hỏng 1 xe'),
(3,'Thuê Xe Đạp',20000,'Chiếc','Tốt'),
(4,'Buffet Buổi Sáng',15000,'Suất','Đầy đủ đồ ăn, tráng miệng'),
(5,'Buffet Buổi Trưa',90000,'Suất','Đầy đủ đồ ăn, tráng miệng'),
(6,'Buffet Buổi Tối',16000,'Suất','Đầy đủ đồ ăn, tráng miệng');

insert into loaidichvu values
(1,'Villa'),
(2,'House'),
(3,'Room');

insert into dichvu values
(1, 'Villa Beach Front', 25000, 1000000, 10, 'vip', 'Có hồ bơi', 500, 4, NULL, 3, 1),
(2, 'House Princess 01', 14000, 5000000, 7, 'vip', 'Có thêm bếp nướng', NULL, 3, NULL, 2, 2),
(3, 'Room Twin 01', 5000, 1000000, 2, 'normal', 'Có tivi', NULL, NULL, '1 Xe máy, 1 Xe đạp', 4, 3),
(4, 'Villa No Beach Front', 22000, 9000000, 8, 'normal', 'Có hồ bơi', 300, 3, NULL, 3, 1),
(5, 'House Princess 02', 10000, 4000000, 5, 'normal', 'Có thêm bếp nướng', NULL, 2, NULL, 3, 2),
(6, 'Room Twin 02', 3000, 900000, 2, 'normal', 'Có tivi', NULL, NULL, '1 Xe máy', 4, 3);

insert into hopdong values
(1, '2020-12-08', '2020-12-08', 0, 3, 1, 3),
(2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1),
(3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2),
(4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5),
(5, '2021-07-14', '2021-07-15', 0, 7, 2, 6),
(6, '2021-06-01', '2021-06-03', 0, 7, 7, 6),
(7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4),
(8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1),
(9, '2020-11-19', '2020-11-19', 0, 3, 4, 3),
(10, '2021-04-12', '2021-04-14', 0, 10, 3, 5),
(11, '2021-04-25', '2021-04-25', 0, 2, 2, 1),
(12, '2021-05-25', '2021-05-27', 0, 7, 10, 1);

insert into hopdongchitiet values
(1, 5, 2, 4),
(2, 8, 2, 5),
(3, 15, 2, 6),
(4, 1, 3, 1),
(5, 11, 3, 2),
(6, 1, 1, 3),
(7, 2, 1, 2),
(8, 2, 12, 2);

-- -----cau2-----
-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự 
-- “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select *
from nhanvien
where ho_ten like "H%" 
or ho_ten like  "T%" 
or ho_ten like  "K%";

-- 3.Hiển thị thông tin của tất cả khách hàng có độ tuổi từ
--  18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select *
from khachhang
where timestampdiff(year, ngay_sinh, curdate()) between 18 and 50
  and (dia_chi like '%đà nẵng%' or dia_chi like '%quảng trị%');

  
  
-- ---- -----4------
select kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach ,count(hd.ma_hop_dong) as so_lan_dat_phong
from khachhang kh
join loaikhach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hopdong hd on kh.ma_khach_hang = hd.ma_khach_hang
where lk.ten_loai_khach = 'diamond'
group by kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach
order by so_lan_dat_phong asc;


-- -----cau5------
select 
    kh.ma_khach_hang,          
    kh.ho_ten,                 
    lk.ten_loai_khach,        
    hd.ma_hop_dong,           
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,     
    hd.ngay_ket_thuc,
    dv.chi_phi_thue + ifnull(sum(hdct.so_luong * dvdk.gia), 0) as tong_tien
from khachhang kh
left join loaikhach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hopdong hd on kh.ma_khach_hang = hd.ma_khach_hang
left join dichvu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hopdongchitiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dichvudikem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by 
    kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, 
    hd.ma_hop_dong, dv.ten_dich_vu, 
    hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, dv.chi_phi_thue
order by kh.ma_khach_hang;


-- ----cau6----
select dv.ma_dich_vu,
dv.ten_dich_vu,
dv.dien_tich,
dv.chi_phi_thue,
ldv.ten_loai_dich_vu
from dichvu dv
left join loaidichvu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
left join hopdong hd on dv.ma_dich_vu = hd.ma_dich_vu
and year(hd.ngay_lam_hop_dong) = 2021
and month(hd.ngay_lam_hop_dong) in (1, 2, 3)
where hd.ma_hop_dong is null;

-- --cau8---
select ho_ten
from khachhang
group by ho_ten;


-- --cau9---
select thang,count(*) as so_khach_hang
from (select ma_khach_hang, month(ngay_lam_hop_dong) as thang
from hopdong
where year(ngay_lam_hop_dong) = 2021
group by ma_khach_hang, month(ngay_lam_hop_dong)
) as kh_thang
group by thang
order by thang;













