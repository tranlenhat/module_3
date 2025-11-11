create database quanlybanhang;
use quanlybanhang;
create table customer(
c_id int primary key ,
name varchar(25),
c_age int
);
create table orders(
o_id int primary key ,
c_id int,
o_date date,
o_totalprice float,
foreign key (c_id) references customer(c_id)
);
create table product(
p_id int primary key ,
p_name varchar(50),
p_price int
);
create table OrderDetail(
o_id int,
p_id int,
od_quantity int,
primary key(o_id,p_id),
foreign key (o_id) references orders(o_id),
foreign key (p_id) references product(p_id)
);

insert into customer(c_id, name, c_age) values
(1, 'minh quan', 23),
(2, 'ngoc oanh', 21),
(3, 'hong ha', 22),
(4, 'le tan', 25),
(5, 'pham tu', 20);

insert into orders(o_id, c_id, o_date, o_totalprice) values
(1, 1, '2024-03-21', null),
(2, 2, '2024-03-23', null),
(3, 1, '2024-03-16', null),
(4, 3, '2024-04-01', null);

insert into product(p_id, p_name, p_price) values
(1, 'may giat', 300),
(2, 'tu lanh', 500),
(3, 'dieu hoa', 700),
(4, 'quat', 150),
(5, 'bep dien', 200);

insert into orderdetail(o_id, p_id, od_quantity) values
(1, 1, 3),
(1, 3, 2),
(1, 4, 1),
(2, 2, 1),
(2, 5, 2),
(3, 1, 1),
(3, 5, 1),
(3, 4, 2),
(4, 3, 1);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o.o_id, o.o_date, o.o_date
from orders o;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select *
from customer c
right join orders o on c.c_id = o.c_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select *
from customer c
left join orders o on c.c_id = o.c_id
where o.c_id is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
select 
    o.o_id as id, 
    o.o_date as time, 
    sum(od.od_quantity * p.p_price) as total_price
from orders o
left join orderdetail od on o.o_id = od.o_id
left join product p on od.p_id = p.p_id
group by o.o_id, o.o_date;


