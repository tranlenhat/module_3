use quanlysinhvien;
insert into hocsinh (id, name, age, address) values
(1, 'Hùng', 20, 'Đà Nẵng'),
(2, 'Huy', 21, 'Hà Nội'),
(3, 'Hạnh', 19, 'Huế'),
(4, 'Hoàng', 22, 'Quảng Nam'),
(5, 'Hiếu', 20, 'Hải Phòng'),
(6, 'Minh', 23, 'Bình Định'),
(7, 'An', 18, 'Nha Trang'),
(8, 'Lan', 20, 'Cần Thơ'),
(9, 'Hương', 21, 'TP.HCM'),
(10, 'Tuấn', 22, 'Đà Lạt');

insert into lop (id, name) values
(1, 'CNTT1'),
(2, 'CNTT2'),
(3, 'CNTT3'),
(4, 'KTPM1'),
(5, 'KTPM2');


--- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’--

select *
from hocsinh 
where name like 'H%';

-- --Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from lop








