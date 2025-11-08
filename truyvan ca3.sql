use module3;

-- Hiển thị tất cả các sinh viên có ký tự đầu bảng tên 'h'
select *
from hocsinh
where name like "H%";
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from lop;

select * 
from subject where credit in(3,4,5);
