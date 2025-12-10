# Right Joins

use practice ;

create table customers ( customer_id int primary key, customer_name varchar(20));
create table products ( product_id int primary key, product_name varchar(20));
create table orders (order_id int primary key, customer_id int, product_id int);

insert into customers values (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David');

