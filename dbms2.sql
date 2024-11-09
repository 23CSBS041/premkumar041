create database bank;
use bank;
create table transactions(
transaction_id int,
transaction_type varchar(20),
branch varchar(20));
insert into transactions value(99999,"savings account","meacheri")
,(8888,"current account","salem")
,(823342,"current account","trichy")
,(4655377,"savings account","thuvakudi"),
(474639,"savings account","chennai");
select*from tranasaction;