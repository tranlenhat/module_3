-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subject
order by credit desc
limit 1;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select *
from student s 
left join subject on s.class_id = subject.id
order by score desc
limit  1,3;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select *
from student 
left join subject on student.class_id = subject.id
group by student.id, student.name 
order by score desc;
