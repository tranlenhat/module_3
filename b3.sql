create database quanlybanhang;
use quanlybanhang;

create table customer (
    cid int primary key auto_increment,
    cname nvarchar(100),
    cage int
);

create table product (
    pid int primary key auto_increment,
    pname nvarchar(100),
    pprice decimal(18,2)
);

create table `order` (
    oid int primary key auto_increment,
    cid int,
    odate date,
    ototalprice decimal(18,2),
    foreign key (cid) references customer(cid)
);

create table orderdetail (
    oid int,
    pid int,
    odqty int,
    primary key (oid, pid),
    foreign key (oid) references `order`(oid),
    foreign key (pid) references product(pid)
);
