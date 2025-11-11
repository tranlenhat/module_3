create database if not exists quanlysinhvien;
use quanlysinhvien;
create table james(
username varchar(50) primary key,
password varchar(50)
);
create table class(
id int primary key auto_increment,
name varchar(50)
);
create table student(
id int primary key auto_increment,
name varchar(50),
birthday date,
gender boolean,
email varchar(50),
score float,
class_id int,
username varchar(50) unique,
foreign key (class_id) references class(id),
foreign key (username) references james(username)
);
create table phone(
phone_number varchar(15),
student_id int,
foreign key (student_id) references student(id)
);
create table instructor(
id int primary key auto_increment,
name varchar(50),
birthday date,
gender boolean,
email varchar(50),
salary float
);
create table instructor_class(
instructor_id int,
class_id int,
start_time date,
end_time date,
primary key (instructor_id,class_id),
foreign key (instructor_id) references instructor(id),
foreign key (class_id) references class(id)
);

INSERT INTO james(username, password) VALUES
('svnam', '123456'),
('svhoa', '654321'),
('svlong', '123123'),
('svanh', '456456'),
('svlan', '789789');

INSERT INTO class(name) VALUES
('CNTT1'),
('CNTT2'),
('QTKD1');

INSERT INTO student(name, birthday, gender, email, score, class_id, username) VALUES
('Nguyen Van Nam', '2003-05-14', 1, 'nam@example.com', 8.5, 1, 'svnam'),
('Tran Thi Hoa', '2004-02-20', 0, 'hoa@example.com', 7.8, 2, 'svhoa'),
('Le Van Long', '2003-11-09', 1, 'long@example.com', 9.0, 1, 'svlong'),
('Pham Thi Anh', '2004-06-17', 0, 'anh@example.com', 8.0, 3, 'svanh'),
('Do Thi Lan', '2003-08-03', 0, 'lan@example.com', 7.5, 2, 'svlan');

INSERT INTO phone(phone_number, student_id) VALUES
('0912345678', 1),
('0987654321', 2),
('0905123456', 3),
('0932123456', 4),
('0947123987', 5);

INSERT INTO instructor(name, birthday, gender, email, salary) VALUES
('Thay Nguyen Minh', '1980-03-22', 1, 'nguyenminh@univ.edu', 15000000),
('Co Tran Hong', '1985-07-10', 0, 'tranhong@univ.edu', 14000000);

INSERT INTO instructor_class(instructor_id, class_id, start_time, end_time) VALUES
(1, 1, '2023-01-01', '2023-12-31'),
(1, 2, '2023-03-01', '2023-12-31'),
(2, 3, '2023-02-01', '2023-12-31');


-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select *
from studentinstructor
where name like 'H%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select *
from instructor_class 
right join class on instructor_class.class_id = class.id
where month(start_time) = 12;




